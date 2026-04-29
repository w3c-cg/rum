01:17
Nic Jansma
All right, should we get started? Got a decent group here. Okay. And I do see the fireflies in the meeting. Okay. There was nobody on the other call. It was just fireflies waiting to be let in. So I did not let fireflies in. Just jump back here.

01:33
Cliff Crocker
I will update that one then. Yeah.

01:37
Nic Jansma
Welcome, everybody. April. It's April. Congrats. We're in Q2. We have. Let's see, agenda for today. Michael is going to talk about some. A proposal for the performance timeline. Cliff's going to lead a discussion around server timing and headers and that kind of stuff. And then whatever time left, we thought we could kick off kind of a less formal discussion around AI bots and crawlers. I know that Philip has some charts he wants to share, and then maybe that can lead into a few thoughts and questions and maybe even a longer discussion for next time. With that, nothing new with the logistics of the meeting. Next meeting would be Wednesday, May 13th. Second. Wednesday, a month from now. Don't have anything specific on the agenda yet. Maybe that depends on what we talk about today.

02:34
Nic Jansma
And we can ping some of the browser folks to see what if they have anything, any news to share. Yes, the ABCs, AI bots and crawlers. I don't know. Going that yesterday. We'll see if it sticks. So with that, I'll hand it over to Michael. Do you want to share anything, Michael, do you want to just let me leave this up.

03:00
Michal Mocny
I will present. I just pasted a link to the slides. Let me know if I didn't share correctly. And mostly the discussion is on the issue trackers, but I tried to throw together a few slides this morning, so hopefully they make sense. Thanks for having me today. We've been talking about a couple related issues during like sort of our biweekly issue triage, and I've been trying to chase down in Chromium a few like, ergonomic issues related to performance observer observations. This has been somewhat of a long time coming, but it's kind of the pressure is growing to do something about this. So, okay, so what are the two issues? So. So I link to two issues that I've filed, but there's probably more.

03:47
Michal Mocny
First of all, one issue is consider changing the sorted ordering of performance entry to be based on end time rather than start time. There's a bit of a thread going on there and then kind of the reason to meet today is add a performance observer option for per paint reporting. So I'll give you some background before we talk into the details. So when you register a performance observer, you specify a list of entry types and perhaps some other arguments. Whenever a performance entry is created, it's queued into the performance timeline, possibly going into the global buffer list if the buffer is not full and if it meets certain criteria. Sometimes we do filtering into the default buffer list. But if you already have a registered observer goes into that internal observer's like sort of internal buffer, you don't immediately invoke the performance observer callback.

04:43
Michal Mocny
The callback is invoked periodically with your internal buffer. You can actually read that buffer with take records as often as you like, but typically this is how it works. Hopefully that's not a surprise to anyone. So if you get one new performance entry and the page goes idle, you will invoke your performance observer callback and you will read that performance entry. So something happened on the page that gets a performance entry. You see that it happened, something else happens. You see that something else happens. So you will. The default order is as things happen as they end and entries are emitted, you observe them. This is the default order implicitly. But if multiple entries are added to a single buffer, we spec that we sort by the start time value of those entries, okay?

05:45
Michal Mocny
Which is not the same as the order they finish and the order we sort of observe them happening. It gets even worse if you have a performance observer that asks for multiple different entry types that define start time and end time to mean different things. And this idea of like buffering and invoking the performance observer callback whenever the page is busy, we don't prioritize invoking those callbacks, we kind of wait for idle periods in those moments where you have a long animation frame and a long animation frame spans a time range, and there's a bunch of stuff happening inside that time range. You might be marking your own marks and measures, you might be having resource timings, events might be firing. All this stuff is happening. Those are also those situations where we tend to buffer the most.

06:44
Michal Mocny
And so you're sorting and stuff like that. So this is kind of a relative summary of the types of entries I might have gotten this wrong. I sort of quickly web this together. But, like, hopefully none of this is news to folks. But, you know, some entries, like resource timing, the start time is based on when you first request the resource, right when you start fetching it. But you don't observe the resource timing until it's fully done downloading and its last bite is available. And so eventually when you get those resource timings, the order is very dependent on how they clustered together and how long you wait for them, because they will become completely reordered. For some of the paint timings, they're mostly based on the end time.

07:32
Michal Mocny
And so the ordering, like the sort ordering and the observation ordering ends up being mostly the same. Although even there's a gap because we report the render time. But sometimes it takes a while before we observe the render time. At least in chromium, it actually takes time to get that measurement value plumbed and scheduled. And things can happen in between those two events. Another custom user timing could fire between the actual render time. And so you could still get reordering, but it starts to get really different also with like event timings. So the event timing start time is based on the hardware timestamp of the event. But this works differently depending on the event types. Are they real hardware events? Are they synthetically generated events? Sometimes they get sort of fake timestamps based on processing times. And like weird things can happen.

08:28
Michal Mocny
So like the order that event listeners fire is already encoded in event timing through the processing start and processing end. But then we reorder things based on start time, which isn't necessarily in processing order, which is also not necessarily the end time order. I think for me, the first time I became aware of the complexities here was when we tried to do, when we added loaf and we tried to do clustering for event timing to say, hey, there was a long input. I want to know what were all the events that happened in a single long animation frame? What other things happened in that animation frame? Maybe certain resources finished and Everything clustered together, and you build a tree of attribution based on different entry types that were all together. Doing this correctly proved incredibly difficult.

09:20
Michal Mocny
You almost had to build your own little mini performance timeline inside your JavaScript library to do your own sorting, clustering and ordering. And sometimes you have to wait for more observer callbacks because you observe things later that affect the current animation frame or whatever. Like you have partial data now, you'll get some more data later, so you sort of have to redo things. The second, more newer motivation, for me at least, is soft navs and timeline slicing. What you really want to do is you want to say, hey, we observed a new soft navigation. There might have been some paints right before, there might have been some layout shifts, there might have been some events, and you need to figure out which of those belong to the outgoing navigation and which of those are already in the next navigation.

10:10
Michal Mocny
In a perfect world, you would do this in a stream in real time without having to do this magic buffering, clustering, and slicing. So those are kind of the motivating use cases. Yeah. So this is like in a perfect world, you write a performance observer like this, you ask for a list, and you read your list of entries, and you can expect to get them in the order that things happen. So, you know, if you observe a soft navigation, everything that comes afterwards would be for this soft navigation. You don't expect things to sort of teleport in time when you're reading your list of entries. So this is like an ideal. If only this were this simple. I'll show. I think I'm casting the whole thing. This is a really old demo. This is based on loaf.

10:59
Michal Mocny
If I refresh this page, it's going to start janking up the page. If I interact with the page a whole bunch, you see it's rendering things are happening on the main thread. I could be interacting with events, resource times can happen, but then my performance timeline just spews 10 seconds worth of data into the console. All of this was getting buffered because the page was too busy to receive it. So this just proves the point. And if you look at all of these like you just had animate, long, low F, low F. And then you'll get some like, event timings and other timings, and they end up in sort of arbitrary order. All right, so I don't think I actually put into the slide deck the proposed solutions.

11:45
Michal Mocny
I'll open up the issue tracker in a sec, but maybe I'll leave the questions on the board has Anyone actually run into related issues? Has anybody thought about it deep enough to do this? I think if you just put everything into a big beacon and upload it and then use SQL to sort things as you want it, maybe you don't feel that pain as much. If you're trying to sample a local session down to the most important events and cluster and stuff like that, then you feel the pain the most if you really think about it and. But some of that is abstracted away through libraries that do this for you. Anyway, so the two. Let me actually open up the issues. The two ideas I had in Proposals are somewhat related and maybe one obviates the other.

12:34
Michal Mocny
The first one was like I mentioned, the default order for reporting is actually when entries are observed, like when they end. If you don't do buffering and clustering, you'll just see things as they happen on the main thread. Basically like that's the mental model I typically have. Maybe we should just encode that. Like at least half of the performance entries define start time as the end time anyway. But that's not always true. I think Nick gave some good feedback about resource timing being an example where sometimes you want to know the order things were started and not necessarily when they ended. But anyway this would make it consistent. Like whether we cluster many entries together and then report them or fire in small chunks. You would always see the same order of output would be the main goal of this.

13:30
Michal Mocny
The second option is really the ordering within a single cluster isn't as important. I mean we could debate what's the right clustering and things, but really the problem is you want to have all related events together. And I think the most obvious version of that is all the things that happen in one paint should be reported together. Long animation frames are paint timing. If there's a long animation frame that paints and inside that there were some layout shifts and there was a soft navigation and there was some resources that finished. You really want all that information together nicely organized so you could do whatever breakdown, subparts, attribution, whatever it is.

14:13
Michal Mocny
And today a performance observer buffer doesn't understand these boundaries and it'll just keep clustering and reordering and then you'll get like a few paints worth of loafs first and then you'll get a few paints worth of resource timings first or next. And so what if we had a mode for the performance observer so that you can ask for these to be given to you in these clusters even if you had buffering, one way to do this would be A performance observer option. Today you already invoke the callback with a list of entries. Even if you do a bunch of buffering and clustering, you invoke once with a set of entries, then invoke again with another set of entries, so on and so forth, where each set of entries makes sense to be reported together. And like per paint would be one way.

15:02
Michal Mocny
The other alternative is we have get entries by name, get entries by type. What if we had get entries by paint and so that would return a list of lists that you can then iterate over. Something like that. These are relatively simple or equivalent. Ok, I'll go back to the list of questions. I don't know if anybody feels very strongly that this is super important or really strongly. Don't change the order. This doesn't like we rely on it the way it is. And then I think Nick brought up in particular for the initial set of the default performance timeline internal buffer, when you first register an observer, maybe you want to do something different than when you're doing sort of real time observations for the performance timeline. Ok, I think that's it.

16:01
Nic Jansma
Do we, do we know if there'd be any compatibility issues? Like have we run across any scripts that are assuming a certain order or anything like that?

16:08
Michal Mocny
Michael, I haven't done a significant audit and if you change anything, something always gets fuzzy, I guess I would say because the performance observer callbacks, I mean, two different things. Right. Changing the sort order I think is a little bit riskier maybe at this point, but changing how often we invoke the performance observer with what set of entries, or adding a new API to request a certain thing. Like there's no way to rely on the order of those callbacks because it's based on how congested the main thread is. And so I think that's like, that's very unlikely to change.

16:50
Nic Jansma
Yeah.

16:50
Michal Mocny
Plus I think per. Like the mode, it would be an opt in. I think we could make it by default and then I think it would still not break folks, but we could make it an opt in. Yeah, go ahead.

17:04
Yoav Weiss
Just in terms of historical context, as far as I remember, the sorting bit wasn't like. Essentially, I believe the intention was to reduce implementation defined behavior and potential, you know, reliance on the ordering of entries. So it was probably mostly arbitrary, picking start time instead of some other time.

17:36
Cliff Crocker
Yeah.

17:36
Yoav Weiss
So at least like in terms of motivation, the intent wasn't to necessarily make sure the developers don't need to rearrange entries or whatever, but just to reduce potential interrupt issues. But yeah, it would be good to verify, you know, the compact implications of this, where I suspect this might be. Like, I wouldn't expect ROM scripts to, you know, to rely on the ordering more than they should, but you could have like bot detection scripts that, you know, assume certain things about this and does this or that and that will, you know, cause them to break and then it's a race of who fixes first. But yeah,.

18:39
Nic Jansma
Go ahead. Okay.

18:41
Sergey Chernyshev
Yeah, I have a feeling that RAM scripts and please everyone confirm that's true. We are mostly limited by how many times we report the data. Right. Like, and when we do that, right, like we don't want to send beacon on every event obviously. Right. And so aggregation happens anyway. And the RAM use case might not be the main use case for this change. Effectively we aggregate, we send it back. I agree with the soft nav conversation, but even then we would still filter into buckets of which navigation and all of that. It's very possible that you might want to check with other tools. Like you gave a good example. But bots are kind of different at Beast, you know, but there may be other more real time tools that might exist that use this data.

19:46
Sergey Chernyshev
I mean dev tools might be a good example of that.

19:50
Nic Jansma
So.

19:55
Sergey Chernyshev
Yeah, I'm having hard time kind of understanding if we will hit this problem. And I imagine you personally building a lot of demos, probably hit that more than anybody like with in RAM use cases. But maybe other RAM vendors do a little different things and they just know a heap of this specific problem.

20:19
Michal Mocny
Yeah, I guess that is asking the question, has anyone actually run into this where they had to struggle through it? Like I think, Andy, I recall you hit a lot of this maybe when you were doing like long animation frame attribution.

20:35
Andy Davies
Yeah, I think I hit a bunch of this when I was doing research on long animation frame. But the way we did it, we, you know, we allow for this in the way we do our long animation frame stuff. But it is kind of weird when you know, when you're just experimenting with the API to begin with and you see things emitted out of order. There is, there is something, it feels unnatural when you first see it and then you just accept that, you know, you can't rely on the order of the stuff and you work with that. We can't rely on the order of the events and you work with that. But yeah, I'm the organized person in me and if you looked at my office you would think I'm not organized.

21:25
Andy Davies
Kind of likes the concept of having them in a predictable order. But whether it's so,.

21:41
Cliff Crocker
Yes.

21:41
Andy Davies
So yes, I have come across this problem recently and I have a bug in Embraces product that we have to fix around this. So where we display some events in the wrong order. So yeah, having a predictable order would be nice, I think.

22:02
Michal Mocny
Yeah. My, my. Not everyone maybe shares. But like I would like two things as principles. One is the order of things that are reported to the performance timeline are roughly what the user, when the user saw them, like when it affected the user. So for example, for resource timing, like this is not my wheelhouse, so others may have stronger opinions. But if the page requests a bunch of resources, nothing really happens yet. Like they're sure your network stack might start using it or whatever. But like when the page receives the result of the resource and then starts triggering effects based on that, and now a long task triggers or a paint changes or like whatever it is, whatever continuation efforts, that's really when it matters. So whenever the main thread thing actually happens, that's when it affects the user.

22:53
Michal Mocny
So that's like kind of the first principle. But then for some of the timings, like the paint timings, we don't actually. We're not fully done yet. Like this thing happened, we measured it affected the main thread, whatever, it updated the rendering. But we're waiting for presentation callback and then we wait to queue and we might have to cluster into chunks and then we actually dispatch to the event. So it's all asynchronous and there is no perfect moment. So anyway, we talked about having like arbitrary anchor times and stuff like that, but I think it just gets too complicated. But just you're already observing entries based on when they're added to the performance timeline. And then sometimes they cluster and get reordered again. And so like the arbitrary nature of that feels like the gap that could be fixed.

23:46
Sergey Chernyshev
I have another question. Really? Are you saying that it would effectively fire more frequently with more natural order? I don't know, like if that's what I'm hearing. And the two questions that come to mind are whatever it will be will allow collecting more metrics. Because before the moment text when we fire the beacon.

24:17
Yoav Weiss
Right.

24:17
Sergey Chernyshev
Effectively.

24:18
Michal Mocny
Right.

24:18
Sergey Chernyshev
Like we have that last moment kind of situation that might or might not be impactful. Right.

24:24
Michal Mocny
Yeah. So I'm not proposing changing when we order things or when we emit or anything like that. Like all of the specs would remain exactly as they are. There might be things that we should be doing, but those are separate. This is Just as you observe the events, what is the most convenient way to iterate them? That's not that important question because you could take them all, stuff them into a big SQL table and then choose your own ordering or upload everything in JSON and then do your own ordering. But some of us process those events on the client device and some of that processing ends up being quite expensive, including having to buffer the entire performance timeline and then resort yourself in your own like however you decide to do it. And that just feels costly, inefficient and people make mistakes.

25:15
Nic Jansma
But do we want the browser to always be presorting things for us, spending the time doing that, or do we want the client library to do it when it needs to and then spend the cost in doing that? You know, like there's that trade off of like the browser can probably go slightly more efficiently than JavaScript land, maybe.

25:31
Michal Mocny
Right? Yeah. Well, the browser is currently always sorting for you in an order that you might not expect and then have to resort afterwards.

25:39
Nic Jansma
That's right.

25:41
Sergey Chernyshev
But my other question was kind of related to nix. Will this trigger rum beacons, effectively trigger observers more frequently and therefore increase the impact on what we observe by the fact that we are observing? I, I don't hear that.

26:02
Michal Mocny
But not on its own. Not on its own. I mean literally one of the proposals is to call the callback more often, but it would be like in a loop, would be like instead of one big list, you'd get a few small lists that are pre clustered for you.

26:18
Nic Jansma
Let's go to Annie and you and then transition to the next topic.

26:22
Andy Davies
Yeah, yeah, I think I, I think so. I've been thinking about how we polyfill spa navigations in other browsers. So this is other browser land rather than Chrome, which is where this applies at the moment. But I think where you. It comes back to Michael's point about when you're trying to work out what was part of this route or route versus the other route, having them arrive in a sorted order would make that much easier. Even on the per paint, you know, group everything in the same paint together would be much easier, but that relies on a different browser implementing it.

27:08
Yoav Weiss
I'm wondering, given the fact that A we don't know what the compat impact is and B different developers or like different use cases require different things from the sorting. I wonder if we should make it an option on the performance observer to say, okay, this is the type of sorting I want for this particular entry or no sorting at all, or Whatever. And then like on the one hand it will add complexity on the browser side to deal with these different,.

27:46
Cliff Crocker
You.

27:46
Yoav Weiss
Know, requirements, but it can lead to less work being done. So avoiding the browser doing the sorting and then the developer doing resorting afterwards. Enable class, like basically try to provide the option for developers to opt into whatever it is that they want here.

28:08
Michal Mocny
Yeah, I agree. And I think over time I started with the proposal to change sort ordering. I think I'm now at the point where that might be. That might be debatable. It might have interrupt issues. If we change clustering. That is something that is already not reliable, already not predictable. You are. So anyway, and that could be an opt in. It doesn't need to be. We could just by default make sure all performance observers report.

28:36
Yoav Weiss
But yes, yeah, changing the clustering would actually make it more predictable in terms of reducing implementation defined behavior.

28:45
Michal Mocny
So yeah, yeah. In a perfect world, like every. Every potential reporting moment, you might choose not to because there's no idle period, but you still like sort of slice whatever data was in the timeline in that point and start a new. Something like that could be possible.

29:02
Nic Jansma
Yeah.

29:03
Michal Mocny
All right, thank you for the time. Since I still have the microphone andy mentioned soft navs. This is a PSA that the new origin trial has just started as of this week and it's rolling out, so please participate. Again, rather good news. Thanks for the time.

29:20
Nic Jansma
Thank you.

29:21
Michal Mocny
Michael.

29:22
Nic Jansma
Let's transition to Cliff and some server timing stuff.

29:30
Cliff Crocker
Yeah, so last month we didn't get to this because we had so much other discussion and stuff going on, which I was kind of glad of because I thought I would do quite a bit more research and have an actual blog post in the works that goes into a bit more depth around server timing that I was going to present today. But life being what it is, that's not done either. So still work in progress. But I did just want to highlight a couple of findings just to tease that a little bit. And also I really want to get to Philip's discussion on bots. So three quick slides. What we're. What I did is I did some research and just went back across HTTP archive to look at header server timing header adoption for the sites that were measuring in HP Archive.

30:19
Cliff Crocker
And this to me was. Was extremely encouraging. And you know, one of the things that were really hoping to see by really pushing people to adopt server timing, the pessimist to me also says, hey, thanks Shopify, thanks cloudflare. This was really nice, you guys, to include this stuff because it actually Ended up having a pretty transformational impact and really where I think a lot of this is coming from, but I thought it was interesting nonetheless. So, you know, looking at the top sites and this is really ranked by the Crux ranking NHP archive, we can see that roughly 70% of the, I guess 70% of the top 10,000 that we're looking at have adopted server timing again, probably largely in part that our CDNs are doing such a great job of emitting these headers.

31:08
Cliff Crocker
So, you know, hats up to Akamai, cloudflare, Amazon cloudwatch fastly hasn't done anything by default yet or an opt in, but it's very easy to enable server timing headers there would love to see them exposing more things by default and then Shopify as well, who's emitting a lot of server timing headers I think for a lot of their own use. But if our customers at least, and I know probably other RUM providers customers have found it really useful to have that data. But obviously as we start to get in the long tail that drops a bit. So some of the work that I'm doing and digging into more is like, is a, like, hey, is this actually really all our CDNs and if so, like, what are the things that people are using server timing for the most?

31:57
Cliff Crocker
So we can start to look at, you know, adopting potential standards or at least naming conventions we talked about quite a bit in the past. So we can all kind of get on the same page. All RUM providers could then, you know, access CDN data a little bit more uniformly versus just having to match various different patterns. Also just like what other people are using it for. Here is just a quick word cloud to show all the server timing header values that are coming across, which I thought was actually really interesting. Obviously we see a lot for cloudflare, we see for Akamai as well, but we also see interesting stuff in here where people are passing things across. Where did I see like a trace header, you know, here, there, trace parent, you know, obviously more stuff around images.

32:48
Cliff Crocker
I think cloudinary was admitting quite a bit, quite a few server timing headers as well. But it's nice to see the diversity. It's nice to see people leveraging this and using this for a lot of different reasons. Obviously seeing the big players leading the charge is really helpful. So I think the next move here really, the thing that I want to understand more is what are the different use cases? How are people actually using this data? Where is it coming up? Because I have seen a lot of People just with their own server timing headers where they're emitting things like multivariate testing and AB test, things like that. Actually sending across the W3C trace header that isn't a server timing header by default. So there's a lot of different things that are kind of emerging there.

33:38
Cliff Crocker
So I was excited to see this and encouraged by it. I think that we're going to be digging in quite a bit more, showing more around, you know, what's left and obviously areas for standardization as well as also looking at timing allow origin headers and how that's been adopted across a lot of our major third parties. So more to come on this. But this was just a quick highlight and shout out again to see this moving up into the right so aggressively. Hope to see more of this in the future. So with that I'll pause.

34:16
Nic Jansma
I would just like to shout out to an issue that we had when we talked about this a while back for having a server timing registry, basically taking that word cloud and then trying to document, even if the providers don't necessarily document the headers for us to try to, as a community say what we mean or try to interpret what they mean. Just.

34:39
Michal Mocny
I think that could be helpful.

34:41
Nic Jansma
Yeah, go ahead. I think.

34:44
Andy Davies
Annie Cliff, on your second slide, the bottom row had five 8K sites with. Server timing headers and 61 million pages in the cohort. I was just wondering how you got to 50% cumulative.

35:05
Cliff Crocker
So I think like the way that this works if we start from the top, right? Additive.

35:10
Michal Mocny
Yep.

35:11
Andy Davies
So it's not for that segment, it's for.

35:13
Michal Mocny
Right, Yep, yep.

35:15
Cliff Crocker
Yeah, that's. That's how my understanding of how the ranking works as well. So, yeah, it's additive, but thank you for checking my math because it could have very much been wrong.

35:30
Sergey Chernyshev
I think General registry might have some challenges, obviously by the nature of this being defined by the user, by the. Sorry, by the consumer of the metric. Right. Like we have metrics that we meet when you enable the product automatically.

35:51
Cliff Crocker
Right.

35:51
Sergey Chernyshev
Like for.

35:52
Nic Jansma
For our.

35:53
Sergey Chernyshev
For example, those will be set for you. So you don't control it necessarily and we consume them also without you doing anything about it. But we also allow custom rules to set up your own. Right. Or you can use workers, whatever. Whatever. The previous technology was utilized for measurement. Right.

36:12
Nic Jansma
So.

36:12
Sergey Chernyshev
So naming, creating the definitive naming to usage mapping might be a challenge to cover everything. Right.

36:22
Nic Jansma
But my point was more for like the well known.

36:25
Cliff Crocker
Yeah, yeah, Ones.

36:26
Nic Jansma
Right. Not necessarily for like, you know, custom ones for. But yeah, fair point. Though, and it's hard as an outside observer to define things. Right, Go ahead.

36:34
Michal Mocny
Yo.

36:36
Yoav Weiss
So regarding server timing entries that are, you know, like Cliff said that, you know, Shopify, for example, we have server timing entries. They are used internally, they are used externally. I don't think that there's a, you know, corporate guarantee that those server timings will remain with the same semantics over time. And I, so like, I think that there are, you know, there are probably arguments for and against it that me and Mateus can argue for internally, but cementing things in a registry runs a risk of them. You know, like what happens if the different providers change their semantics or the values they emit over time? How will you deal with that public shaming?

37:41
Cliff Crocker
And just, you know, you're right. And I think it's, I think my perspective, it's more about like, hey, can we just try to call these things the same things like when we talk about edge time origin time or a cash hit ratio. And I don't know, it's that it's certainly what couldn't be easily enforced, but I think, you know, recommendations around that. We tried to do this with user timing when it first came out. I think were trying to look at what are some of the reserved words we should be thinking about like above the full time and stuff like that. This was a long time ago and I don't know that we really did a great job of adopting that either. So I guess maybe as a best practice, like, you know, a registry would be great.

38:30
Cliff Crocker
Trying to get more buy in from CDNs. And I know Shopify's use case is a little bit more of an internal use case. And while you guys have been really helpful in terms of documenting or giving us information on what these things actually mean, you've also been very transparent about, hey, this could go away. This is not something that's universally supported. So yeah, I guess maybe less pushing for trying to hold everybody accountable, but more just for best practices so we can just make things easier for all of us and our users.

39:02
Yoav Weiss
Yeah, and maybe it makes sense to have a bit indicating whether this is, you know, frozen cement. Like, you know, whether there is corporate commitments to keep that semantic over time or not and make people aware of that before relying on it. That may be the way to go.

39:23
Cliff Crocker
Yeah. Yeah. Right now we don't really have much. I think we've got a couple blog posts that have gone through this, some of them all the way back to 2012. I think with Charlie Basic, you know, implemented this Having anything at this point I think would be good. And I think having you know, the asterisk around, hey this is something that could very much change. And I don't think any of them are really like you know, saying that they're going to. There's a commitment to keeping them there. I don't know that Akamai has said that. I don't know that Cloudflare is saying that. So yeah, I think that it's probably the same boat for everybody.

39:57
Michal Mocny
Cool.

39:59
Sergey Chernyshev
I want to highlight a couple things. I think maybe we don't care about the specific names but the rather use cases that people use them for. And maybe what we want to promote is the whole fact that you can measure and cluster by your back end curiosities or, or the fact that you can measure the backend or like server. Well, I guess server timing to begin with, that's one thing that maybe we don't. It's not about registry of induced specific names but the register use cases. The other thing is that I actually have an interesting use case that maybe some of you already used it for where server timing is not used to record the time but record the label or labeling the resources or things. Right.

40:53
Sergey Chernyshev
Like I remember, I think we used the edge heat ratios when I was at Etsy to track certain resource measurements and cluster them into whatever images were cached here or there or something like that. So it might be worth documenting these non timing use cases here as well.

41:19
Cliff Crocker
Yeah, I think for better or worse you can use server timing for. It doesn't have to be duration based. I think that the spec is maybe a little bit loose. It sure is nice to be able to define a dimension using server timing data or to use it to define timing based data or a cache hit miss, you know, from a cdn. I do agree with your point on use cases as well. Like I think that's something we should document. I guess the point is like hey, can we make this easier for everybody? Like when we go to implement something and we want to grab something by default, like it should be nice to be able to like have a CDN dashboard that we could just pull up and work out of the box.

42:03
Cliff Crocker
So trying to get people moving that direction anyway I think is helpful. But yeah, it's not a standard. I don't think it's anything that we could really strictly enforce but it's just about being a good citizen, I guess. Yeah, cool, thanks. Yeah, I hope to finish a post on that. If you guys have other thoughts about what might be interesting to see. I like the idea of sort of talking through the use cases. Who's doing what and what are the. What's left when we remove the CDNS and shopify from that picture? Like, what are other people doing? But yeah, definitely. Let me know if you have questions while I'm digging into this.

42:47
Nic Jansma
Sounds great. Thank you, Cliff. Go ahead, Michael.

42:51
Michal Mocny
Sorry, can I ask an unrelated question, Cliff? But I love the slide where you presented by origin rank and then the number of pages within each one and then a percentage adoption. I wonder, in general, is that model how you think about ecosystem? Because we sometimes do overall navigation weighted, which kind of matches how users use the web. But then top origins dominate. Or we do an origin distribution, but then you could just register a lot of origins and the long tail has a lot more origins. And then by rank is kind of nice, but then you have issues with uneven buckets. And I kind of like that framing. I just wonder if that's a very common way to summarize that you tend to think about.

43:38
Cliff Crocker
I wouldn't say it's common. I was just really glad to see it was there and it was really helpful in this exercise. I could see it becoming a bit more common because I think it does make sense logically. I think the way I like to think about it more is like, okay, well, how would I break this down by industry or, you know, by. By platform or things like that? I think there's a lot of different ways to slice and dice it, but I kind of like just that this was a generic thing that was there that made a lot of sense. But yeah, I don't have. I don't have a ton of more input other than this was helpful.

44:14
Nic Jansma
Awesome. Thanks for sharing. Let's head to Philip. We're going to be talking about, I think, kind of kicking off a discussion around AI and bots and crawlers, the ABCs. Philip has some interesting data he'd want to share from looking at our impulse data, but I think we could probably tee this discussion into a future meeting as well. There's a lot of things.

44:37
Nic Jansma
Should I share? Either way, I'll go for it. I think the last slide is yours. All right. You see the screen? All right, so I'm going to jump right into it. Most we're talking about AI bots and crawlers. Most of them don't execute JavaScript or the impulse beacon, so we actually don't have a lot of traffic on this security team did help us identify which beacons come from the I O Unfortunately, I cannot tell you how they helped us identify that because that is something to do with the bot defense team. But it accounts for very little. 0.005% Of our beacons are from AI bots. That's still a large amount in terms of actual volume, but it's small in terms of the amount of impulse traffic.

45:38
Nic Jansma
And so rather than looking at traffic, I thought what's more interesting is how it's balanced between as compared to what human users do on the web. So Nick, do you have a question?

45:52
Nic Jansma
Really quick question, and I know you're saying from AI bots is that much. That's not all bots, that's AI bots. Is that. Is that correct?

46:02
Nic Jansma
That is correct. So let me go and wait, so I'm trying to change my slide, but it's. I'm actually looking at the shared screen. Yeah. All right, so let's go into the types of bots and crawlers. The A, B and C of this. So there are four types of AI bots that we look at in general. AI training crawlers. That's what's typically used to train models or any of the LLMs that have their training data is all fetched from training crawlers. These typically run periodically, not on a continuous basis. AI search crawlers are used to provide search summaries in any of the agents that you use. These two are typically run on behalf of a business or something. Now the other two, the AI fetchers and agents, run on a user's behalf and typically triggered by a user action.

47:06
Nic Jansma
The difference is AI fetchers have a very simple task, typically one request or one or two requests to the web and they don't maintain any state. So you ask a question and goes and figures out the answer and tells you the answer and then it's forgotten about that. Whereas an AI agent is more long term. It acts on the user's behalf, kind of like a chatbot. You could communicate with it. It will remember things you wanted last time. So like you could say buy me a good pair of sneakers at the best rate. And it might remember from past conversations that your sneaker size is this your preferred brands of these and all of that. And go ahead and search multiple websites to see where it can get the best rate and then even perform the purchase for you.

47:49
Nic Jansma
So will do many more actions, but it tends to do it less frequently because it's a user actually has to initiate that request. So what we see is in terms of traffic, the training crawlers and search crawlers tend to have the most traffic fetchers and agents have far less traffic than rollerbots. Just looking at human traffic as the baseline, we see that's about a 70 to 30% split between full page views and spas. Full page views includes bfcache loads, whereas PAAS is specifically things that use fetch or XHR or something to fetch part of the page. So typically 70% of all page views are full page views and 30% are single page transitions for human users. When we switch to the bots, we see two different behaviors depending on whether they're crawlers or agents.

48:55
Nic Jansma
The training and search crawlers have about a 95 to 5% split between full page and sparse. So almost all of the requests are full page views. And it's very rare to see a spa coming in. I put 95.5. Actually, for US training crawlers, it's even further. It's 98% full page and 2% spa. So that's straight away a difference from how humans behave. Agents tend to behave slightly more closer to the human. So there's an 88 to 12% split between full page and sparse. And I thought that was the most interesting thing that we can tell from the data that we gather. So just summarizing all of that human traffic is 72% versus 28% SPA versus all of the others, which are far less, far more skewed towards full page. We also see about an 80% bounce rate for 80 AI bots.

49:55
Nic Jansma
I'm not confident in that data. Again, we don't have much data and the fact that most of them are full page views means they might be doing session management on their own, but not actually sending the cookie for impulse to track sessions. So I'm not certain if it's just the way we're measuring or something to.

50:13
Nic Jansma
Do with the bottom.

50:15
Nic Jansma
And I think, Nick, you had some questions you wanted to pose to the group.

50:22
Nic Jansma
Yeah, and this was before I saw some of your slides as well. So this is just kind of questions to think about as we're, as I'm thinking about AI and bots and stuff is like, well, first question is how much do we think they present in realm data? And it sounds like not a lot in our data at least, or not that we could identify.

50:44
Michal Mocny
How.

50:45
Nic Jansma
How could they identify themselves? You know, we've talked about user agent being our crux in the past and maybe designating certain IP ranges or ASNs as where you know, these crawlers come from. Some of the good ones, if you will, doesn't, you know, share their IPs that they'll be coming from. There's this whole web auth thing with crypto that can help identify in a good way and stuff like that. And then the final question I had was how could not crawlers but agentic browsers identify themselves? Right. So if you think of something like Comment or Atlas or Neon, these are all browsers that will do a lot of things on your behalf as far as I'm aware.

51:27
Nic Jansma
They don't change the user agent strings, they don't have any sort of rum detectable way of knowing that an agent is acting on your behalf rather than human. And then that led me to thinking like well do would an agentic browser even care about performance? Maybe they're less susceptible to bouncing right because a Holman told them to do something than a human that would be frustrated on a screen that's taking a long time to load. Whereas an AI agent may not care that it took a long time to load. So I was just kind of trying to think through that. So anyway, those are some questions I was going to prompt the group with, but it sounds like there's probably a.

52:01
Nic Jansma
Lot of things people very quickly in terms of the identification. There are definitely well behaved bots that do identify themselves with user agents. So Claude, Google, OpenAI, there's a bunch of the big players do identify themselves well ASN we found to be less reliable because there's also other traffic that comes from the same ASN and so you can't use it alone, but you can use it along with other things. Yeah, I think there's a lot of hands up. So your question?

52:34
Yoav Weiss
Yeah, so I think that there's like the four categories you showed. Actually like I suspect that there are five or like at least for AI agents. You have background agents, go buy me the Chickvist light ticket or whatever and then you have a forward session AI agents where I want to work with the agent and get them to buy me stuff on this site while still navigating the site and being able to intervene at any point where I'm like oh never mind, I'll take it from here kind of session and sensibility to performance in those two types will be very different because there's an effort for pushing MCP tools on the web called WebMCP that will enable these kind of interactive but agent driven sessions and they will have very different characteristics.

53:42
Yoav Weiss
And I think it can be interesting for services both for performance measurement as well as for reliability. And there are a lot of reasons why servers and side operators Want to know which is which? Yeah, I don't have answers, but I fully joined the questions you're asking.

54:09
Nic Jansma
Yeah, I think from our point of view it would have been useful to do that. AI agents unfortunately are such a small. So all of this traffic is 0.005. You add another two zeros to get the number that's actually AI agents for our traffic. So splitting that into two different categories means I really can't aggregate that data.

54:31
Yoav Weiss
Sure, yeah. But I'm not thinking about today. I'm thinking about a year from now.

54:38
Nic Jansma
Yeah, it'll be good to keep looking at this over time and see what the trends are like. Sergey, you're next.

54:46
Sergey Chernyshev
Yeah, I feel like we have a few problems we're trying to solve with this conversation and I think they are like I know it's the first conversation like this, so like we probably don't have the general approach organized, but the first question that comes to my mind is are we measuring real users having real experience? Right? And that's like the most classic one, right? Like did we remove all the data that is just fake from that perspective, right? Like that's the first question. And before AI, the. The bots that run Puppeteer slowly on some machine, right? Or whatever their technology was, right? Like they just skewed the data and was not. Were not useful for. For understanding impact on user experience.

55:38
Sergey Chernyshev
So I think that's the first question and the second question that comes to mind immediately is should we measure some of the bots as if they are acting on behalf of the user versus some of the. Basically what you presented, Philip. Right, like, or some of the bots that act on behalf of the organization overall, right? Like they do the work that ultimately helps users, but they're not part of user experience. Effectively split the whole data set into things that are not representing users at all. And the second split into measurement measures that Gentec use triggered by the user but not browser experience.

56:33
Cliff Crocker
So.

56:34
Sergey Chernyshev
And maybe I'm not organizing my thoughts either, but I think it's worth for new implementer having some kind of RAM implementers documentation that concentrates on these two. Or maybe there are more aspects of this specific conversation. Obviously security too, but that's another part.

56:54
Nic Jansma
Of it with it being time I think we should wrap up but I think we should definitely transition this conversation to Slack or another avenue. Maybe slap Slack to start with. Probably get some ideas for continuing the conversation for next time. I think a lot of us have thoughts and questions. So thank you everybody for the time today that was really fantastic. Appreciate it. See you guys in May.

57:18
Sergey Chernyshev
Thank you for presenting.
   Transcribed by https://fireflies.ai/
