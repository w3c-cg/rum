00:00
Nic Jansma
Here's.

00:25
Nic Jansma
All right, why don't we kick this off as always, I have a little slide deck that we can based our conversation from. All right, the Braum Community Group.

00:45
Nic Jansma
And let's see. Are we recording? We are recording.

00:48
Nic Jansma
Okay, welcome everybody to the March edition of the ROAM Community Group. We are excited to have everybody here getting easing into the new year. I think it's our second meeting this year. Yeah, second agenda today. We have a few different topics kind of going all over the place, but some interesting things to talk about. I think we're going to Talk about Interop 2026 and any updates in there. Not the best year for us as a web performance community, but still some really interesting things for interap themselves. Yoav is going to present about pre unused preloads in RUM idea proposed in.

01:31
Nic Jansma
Web Performance Working Group.

01:32
Nic Jansma
That's also very relevant obviously for here.

01:33
Nic Jansma
So we're going to hear a bit more about that here.

01:37
Nic Jansma
We thought we'd take a little bit of time to look at core web vitals across the browsers, across the various rum vendors that we have presented and anybody else's insights if they want to share anything. Just looking at some data, some stats there and then hopefully have some time for looking at server timing, header adoption, which is a topic that I think a lot of us are care about. General logistics slide. Not a lot has changed here. Nothing's changed here. Trying to meet second Wednesday of the month at around this time. I do apologize. I forgot that we are in the middle of different daylight saving times. So I know that some people are joining maybe a bit earlier than normal. Is that, is that accurate?

02:18
Nic Jansma
Later?

02:19
Barry Pollard
Earlier?

02:19
Karlijn Lowik
Yeah, we're. We're an hour earlier.

02:22
Barry Pollard
Okay.

02:22
Karlijn Lowik
Well I added it in the slack an hour and a half ago.

02:29
Nic Jansma
Appreciate everybody shifting while the world figures out what time means. Nothing else changed there, just links to all the regular things. If you would like. The next meeting will be April 8, the second Wednesday of April. Ideas for topics are always welcome. Some thoughts that we have that might actually flow good from the discussion we have today would be around bots and bad actor detection especially, you know, bots getting their fingers into our core of vitals data, maybe AI browsers, detection, what it means for rum, that kind of thing. If anybody wants to lead either of those discussions, we would certainly appreciate that if anybody has any data they want to share. Otherwise it could be just kind of a collaborative discussion about some of these and see if there's anything that we want to take out of it for action items.

03:16
Nic Jansma
So those were our ideas. But feel free to ping in the channel if you have anything else or if you really want to talk.

03:21
Nic Jansma
About those that would help us shape the agenda as well.

03:27
Nic Jansma
I think that's the agenda for today. Any thoughts or questions before we dive into those topics?

03:37
Nic Jansma
Okay, let's go.

03:41
Nic Jansma
Thought we'd talk briefly about Interop 2026. I'm not the expert here. I know there's some other folks on the call that probably know a lot more than me about this. Just wanted to share what I know. So Interop is this large cross company effort to help the web focus on web browser features that we should be that we should get better continuity between all the different browser vendors. It's third or fourth year they're doing this if I recall correctly. Maybe more and different features get picked into it and the browser vendors then try to do their best to pass all the tests. So that may mean implementing more things, that may mean adding new features, just fixing bugs.

04:29
Nic Jansma
Last year we had Core Vitals was included and I think we got a lot of good progress, which is part of the reason why we're talking about Core Vitals today. There is a great blog post about what was chosen for Interrupt 2026 and a dashboard for looking at the current test cases and passing rate for those if anybody's interested. And there are a lot of really cool CSS features and things like navigation, API and things like that you know many web developers care about. So it is a really amazing project of note for this group and features that we may care about. There was a request for carrying over more progress on the Core Vitals issue. That's this linked GitHub issue here specifically to include CLS as a feature interrupt 2026. That request was made, the proposal was rejected.

05:24
Nic Jansma
So CLS is not included interrupt for this. There was also some proposals for scheduler APIs request idle callback speculation rules to.

05:33
Nic Jansma
Also be included and none of those were included.

05:36
Nic Jansma
So that doesn't mean that they won't ever be or that the browsers won't make progress on their own. But just for our sake, it's not as exciting of a year maybe for.

05:47
Nic Jansma
Some of us in this group.

05:50
Nic Jansma
And everyone says sad that Logan Frames didn't make it either. I would agree. I think we still have some work there to make that a little more standard and excited for all the browsers too though. So we'll continue working on that. We'll continue evangelizing both here and then.

06:04
Nic Jansma
WebPerf working group and we'll go from there.

06:10
Nic Jansma
Yeah. Yes, Barry, please.

06:13
Barry Pollard
Yeah, I think it's important to point.

06:14
Barry Pollard
Out that things are not included, which is probably nicer terms and excluded for various reasons. It could be the some browser vendors don't want this at all or and I think this is more likely the case with a lot of them, it's just not a priority for them compared to other things, in which case they may still land this year with other people working on it or them working on it, or I know Yoav's done speculation rules for WebKit, for example, so I'm hoping that at least part of that will land this year and stuff like that. So there is still an opportunity to land here. It's just interrupt is quite a nice push for them, kind of almost guaranteeing they'll do it because the browsers do. Vendors do take it quite seriously and that sort of thing.

07:02
Barry Pollard
I think Loaf, for example, Mozilla have also expressed quite a good interest in it. I'm not sure if there's anyone on for it. I don't know if they're actively working on it. But again, I wouldn't be too surprised if that does land at some point in the near future in or without interrupt.

07:19
Nic Jansma
And some nice links to the standards positions as well in the chat for.

07:23
Nic Jansma
Anybody that wants to follow along on those.

07:26
Erwin Hofman
Thanks, Bri.

07:29
Nic Jansma
Any other questions?

07:32
Cliff Crocker
I was just going to make a comment that I think when we first started the group and we started looking at issue tracking, we wanted to start tracking position statements from the different browser vendors when it comes to stuff that we care about. So thank you Irwin, for posting the statement around Loeff, I think looks like maybe we have something around CLS that Ryan posted. I'm guessing, I'm not quite sure, but we should keep those things updated and look at potentially reviewing those periodically. I don't think we've done that for a while, but it'd be nice like, hey, this didn't make interrupt but you know WebKit's still open to it or whatever. Could also feed into discussions of anyone who wants to pony up money to a Galia to just build it.

08:12
Andy Davies
But.

08:15
Nic Jansma
Circling back to the great discussion.

08:16
Nic Jansma
We had last year,

08:20
Karlijn Lowik
Barry, wasn't it that CLS was just basically never gonna happen in Safari? Wasn't that sort of your prediction that it was a completely different way of measuring things and was probably just not gonna happen? Or am I remembering that incorrectly?

08:39
Barry Pollard
They've expressed some hesitations. I mean, as of Mozilla, Zillow is.

08:43
Barry Pollard
Worried about the Cost of doing it. Safari's worried about doing it. I think. I've spoken to other people who worked on WebKit who don't think it's as big impossibility. But yeah, again, I don't think it's priority. I think they also want to know, is this a real issue? So again, whenever we raise things that interrupt, if people can comment in those and say, yes, I want this and I've identified, I've used this API to do X identified annoying shifts or whatever, then it helps with those things. So, yeah, I can't speak for WebKit. They have been quite negative on the past. They don't seem to have been that negative at the moment. But I don't know if that's just because it's not on their radar and they're not looking at it.

09:25
Nic Jansma
There is a request for position in the WebKit standards positions repo on it as well.

09:31
Nic Jansma
We do not have a statement from them, but that is, there's a request for their position.

09:37
Barry Pollard
Oh, fairly new.

09:38
Barry Pollard
Oh, no, that was. Sorry, that one you've linked was for.

09:41
Barry Pollard
The pixel attribution issue change.

09:44
Nic Jansma
Oh, okay. Yep.

09:46
Nic Jansma
Yeah, you're right. I don't know.

09:48
Nic Jansma
So.

09:48
Nic Jansma
Perfect. Okay.

09:52
Andy Davies
Okay.

09:53
Nic Jansma
Any other thoughts?

09:57
Nic Jansma
Okay.

09:58
Nic Jansma
All right. With that unused preload rom and I.

10:04
Nic Jansma
Believe yo's on the call. Yes, he is.

10:07
Nic Jansma
I will hand it to you. Do you want to share your screen, y'? All? But you want me to open up?

10:11
Yoav Weiss
Sure, I can do that. Yeah. So I'd love to quickly go over a proposal I worked on with Bari on essentially the problem we're trying to tackle is twofold. One, I already like talked in the past here and in other forums about preload being like unused preloads being a mystery and something that I'm seeing a lot anecdotally when going to various sites. I get console warnings saying this site has 100 gazillion unused preloads. But there is no way for us.

11:03
Nic Jansma
To know that in rum.

11:04
Yoav Weiss
And historically, when we said let's report these, all the console warnings are based on heuristics and they're like five seconds after unload or something along those lines. And it feels odd to add like to bacon those kind of heuristics into, you know, web standard reporting where essentially it's possible that at the time we're reporting the thing, the preload wasn't yet used, but it will be used in the future. So this is. So this is the problem on the preload side. Similarly, for navigation, prefetches and pre Renders. There is no way right now to balance. The kind of eagerness setting to properly measure the cost of eagerness setting, your setting, you can estimate the benefits based on what you're seeing in your rum data.

12:11
Yoav Weiss
And we can for the navigations that users actually go to, we can see if they were pre fetched, we can see if they were pre rendered, we can gather the data, we can estimate that benefit. But we don't know how many navigations ended up with nothing. And we wasted the user's bandwidth, we wasted server side resources, brought an HTML into the cache and then did nothing with it just because were too eager. So speculation has a cost and right now it's hard for us to estimate that cost. So this is essentially the set of questions we want to be able to answer when we're proud. Preloading more resources or certain resources. Yeah. Is the site performance getting better or worse? This is something we know. But then how many of these preloaded resources go unused and which resources go unused?

13:21
Yoav Weiss
So how can we better optimize what we're preloading? And similarly for prefetching is more aggressive pre fetching or pre rendering, is it worth the cost? What's the server cost associated with the user performance improvement that we can measure and then which links can we stop prefetching or pre rendering if they never get used? Similarly, slightly tangential, like moving preloads to early hints, this is also something that is very hard to like know the benefits of at the moment, other than just like, it's hard to know which preloads are triggered by what method. So essentially we want to be able to measure all these things and answer all these questions we don't want to like. One of the known goals here was to enable developers to like fall back on unsuccessful speculation.

14:33
Yoav Weiss
So if a prefetch never materialized and the browser never sent it, we don't want developers necessarily to know that and be able to, I don't know, send the fetch for the same resource to get it into the disk cache. This was something that we heard concerns from browser folks in the past and we didn't want to get into this corner. It was a non goal. Yeah. And similarly for prefetched resources, we feel like there's enough like enough information about them in resource timing and this proposal doesn't necessarily tackle those. So when it comes to API design, because we wanted to essentially wait until the very last minute before reporting anything here, both for preload and for navigational prefetches or like navigation speculations in general, we only know whether they're used or not when the site in question is effectively unloading.

15:50
Yoav Weiss
And because the various unload events are going out of style and are unreliable in general, went with page hide. So effectively we added a new speculations attribute to the page height event which effectively holds information such as these are the preloads that were done here and you know, they're tagged with used and not used early hints, the cross origin attributes, the as attribute, the various things that can cause resource to not get a match with the in the preload cache and then have the preload be unused despite the resource being there on the page. Similarly, for navigations we can say okay, this is a prefetch navigation for this URL with those speculation tags eagerness and then used versus unused for prefetch and pre render.

17:02
Yoav Weiss
The reason went with page hide, as I said, is that we wanted to wait until the very last minute in terms of reporting and prevent. Early use of this data that will result in developers reaching the wrong conclusion. If this information were for example exposed earlier as a performance timeline and then modified, that could lead to confusion. Yeah, and then in terms of like there are some discussions around what does it mean for speculative navigation to be used or unused. There are various cases and still ongoing discussions regarding for example what happens if a navigation URL was pre fetched, then expired in the cache and then later on navigated to and whether we should bring that information back from, you know, pipe it across the different processes of the browser or not.

18:22
Yoav Weiss
This is still an ongoing discussion regarding complexity versus precision of this reporting. In terms of alternatives, we looked into Performance Observer API and this is why, like what I discussed, we thought that it could lead to confusion. Similarly, an imperative like a JavaScript API like document Speculations would similarly have a hard time of showing when exactly the thing went unused. And then finally a reporting API, which is something we significantly seriously discussed in previous iterations of this proposal. The main reason we decided against a reporting API is that it makes it hard to correlate JavaScript based metrics, which is most of what most performance metrics are reported as JavaScript metrics.

19:28
Yoav Weiss
Joining them at the back end with reporting API saying this and that wasn't used or was used feels awkward and complex and we got a bunch of feedback that it will add complexity and reduce the usefulness of this API. So this is why went away from reporting. That's more or less what I had. I don't know Bar if you have something to add to that,

20:07
Erwin Hofman
Nope.

20:09
Barry Pollard
Will Open it up to questions from everyone else.

20:12
Nic Jansma
Yeah. Ryan.

20:22
Andy Davies
Hey man, where do we stand in.

20:26
Erwin Hofman
Terms of this being in Chrome? I know you worked on a PR already, but.

20:34
Yoav Weiss
Yes. So there is a set of Chrome patches that implements this. All of them are like none of it has landed. They're all kind of out of date now. I need to refresh them. But essentially, yeah, some folks on the Chrome team had some experience with reporting this data internally and had a bunch of concerns. I believe we addressed most of their concerns, but it's still like. Yeah, it's still waiting to land and I suspect that feedback from y' all that this is super useful could help there.

21:27
Erwin Hofman
I mean my feedback is just that.

21:28
Andy Davies
I really want this.

21:29
Karlijn Lowik
Yeah, this sounds awesome. Please do it.

21:32
Barry Pollard
Yes,

21:37
Nic Jansma
Yes.

21:37
Sergey Chernyshev
This is primarily invisible feature at the moment, so all of this is very invisible.

21:42
Nic Jansma
So having some of it is great.

21:48
Yoav Weiss
Thank you.

21:50
Erwin Hofman
All right, Cheeky question. Maybe, but would this help getting the page height which I'm pasting in the chat, Would this help getting the page height bug in Android fixed? And also Chromium, by the way, which is not. For example, on Chromium it's not executed when the last tab in a window is being closed.

22:12
Yoav Weiss
Oh, the last tab. So basically when the browser gets shut down, we don't get page hide.

22:19
Nic Jansma
Yeah, correct. That seems important.

22:29
Yoav Weiss
I don't know if this is.

22:32
Barry Pollard
No, I don't think. I think it's completely tangential to this. I think that's also the reason that the Fetch Later API has problems when the last tab closes as well. I think that's a more fundamental problem of Chrome prioritizing what the user wants. Shutting down Chrome versus what web developers might want of keeping around to things. Finish the page. I'm not sure decision was made by the way. Yeah, it needs to some work to.

23:00
Nic Jansma
Be done on that.

23:11
Barry Pollard
One other thing I will say is.

23:15
Barry Pollard
Unused speculations in particular about Preludes also are not always bad. A preload I think is more obvious. You shouldn't really preload it, you're not going to use it on the page. Prefetch is usually for the next page. So we've deliberately kept that out of this API, I think for speculation. Sometimes you might want to speculate two pages knowing that the user is going to go to one of them and you're willing to take that 50% hit. It's up to you what you do with this data.

23:51
Yoav Weiss
Yeah. Obviously if you're speculating more than one follow up page, you are betting that the user like one of those Pages will not be successful.

24:03
Nic Jansma
But yeah. So yeah, Carline.

24:08
Karlijn Lowik
Yeah. Anything we can do to help this along? Do we need to upvote something? Do we need to be very enthusiastic? Anything we can do to help.

24:22
Nic Jansma
Sorry.

24:22
Barry Pollard
Yeah, I think we like developer feedback. So we had it on the old repo and I know some people commented on that.

24:29
Barry Pollard
I mean you think we should open an issue in the new repo so people can say I want this for some we've got one place to gather it because the old repo seems definitely the wrong place for this. I don't think the Blink Dev email thread is the right place for it. So.

24:47
Karlijn Lowik
Could you guys share it otherwise in the realm CG group or maybe even in general in the performance Slack. So we can help.

24:53
Barry Pollard
Yeah, leave that with the overnighter. Sorry. But we'll probably open an issue there and say feedback wanted or something like that. Something generic.

25:03
Yoav Weiss
Yeah, I don't think we open an issue for this just yet for feedback, but let me just do that now.

25:40
Sergey Chernyshev
Quick question on page hide versus other alternatives is I might be misunderstanding the issue, but is fetch later or some other basically is there any way to postpone it until more reporting centric things like fetch later would be picking up the metrics.

26:17
Barry Pollard
So I mean we talked about a lot of this and we had some entertainment sessions, the Chrome team as well. So for a lot of these things.

26:25
Barry Pollard
They don't really make sense measuring it until you're navigating away.

26:28
Barry Pollard
So speculations in particular, you don't know.

26:30
Barry Pollard
If it's used until you know where you're navigating to. So we could allow it to be measured earlier and just have document unused preloads, document unused speculations.

26:40
Barry Pollard
Our concern with that is it's kind.

26:42
Barry Pollard
Of meaningless and well unused will always be all of them until you actually navigate away is at any point exposing it earlier. Page hide is the one point at which you know, yes, you're going away and doing that. You could set up a fetch later earlier and then just update it later. But if you're going to update it in page hide anyway, why not just send it at that point? And I think the foot gun issue of people reading it wrong earlier and.

27:07
Barry Pollard
Going oh my God, it's unused, it's.

27:09
Barry Pollard
Unused is real and people will read it wrong. So that's why went there. That's not say you can do whatever you like with this data. You can beacon it back, you can fetch later it back, you can do whatever. I don't particularly want to make it dependent on Fetch later in case rules does land in WebKit and fetch later doesn't or whatever But I think regardless of when what method you're using or if you're meeting speculations earlier, you're going to need to know at the end anyways. You're going to need to know a page height anyway is my view on that but happy to hear counter arguments or other than that.

27:45
Sergey Chernyshev
Yeah it's kind of tangential when do you send data back? So like I yeah I agree maybe we should not like that's a separate issue as always.

28:01
Yoav Weiss
Robin has a question on preconnect and DNS prefetch I think that there are generally cheaper but also we didn't really want to tackle the whole family of like you know, link rel something other than preload I guess.

28:24
Andy Davies
In.

28:27
Nic Jansma
Yeah I.

28:29
Robin Marx
Think that makes sense but there has been some discussion by people along like this is over pre connecting actually hurt My opinion is it doesn't others have other opinions. Same for DNS prefetching. The the main point I'm trying to make is if you don't exclude it intentionally for this, maybe add it to the doc and explicitly call it out as one goal for these reasons.

28:53
Yoav Weiss
Well that's fair.

28:55
Barry Pollard
My view on that is it's not.

28:57
Barry Pollard
A goal for now if this proves successful there's no reason they couldn't be adelaider if was wanted. I think we can try and boil the ocean in one go or we can try and minimize it.

29:06
Yoav Weiss
Yeah yeah I wouldn't call them a non goal it's just. Yeah not a current goal but we can definitely add that to the frequently asked questions and say that thank you.

29:19
Robin Marx
Yeah because the current JSON is kind of very preloads I think the preload is at the top level next to navigations. Instead of having like resources and navigations you just have preloads and navigation you know more difficult down the road.

29:35
Erwin Hofman
So that's what I was thinking.

29:38
Barry Pollard
Yeah things like preconnect and DNS presearch.

29:41
Barry Pollard
Wouldn't be on resources anyway so they'd be a top level one as well if we did add them.

29:45
Robin Marx
Yeah but.

29:48
Yoav Weiss
There is also a question of like I I think that at least for preconnect we're talking about like distinguishing preconnects for navigations and preconnects for resources in terms of what cache key they go to. If they are preconnects towards the next navigation they need to be on a different cache key and that's also like we had some discussion in the web performing group at Deepak on how that can fit into the broader scheme. But yeah, I'll adding that to the like the frequently asked questions part sounds completely reasonable.

30:40
Barry Pollard
There was talk about speculation rules, prefetch.

30:44
Barry Pollard
Or sorry, preconnect key.

30:46
Yoav Weiss
Yeah.

30:47
Barry Pollard
For navigation application. Exactly. Yeah.

30:49
Yoav Weiss
Yeah, Andy.

30:53
Andy Davies
So early hints is called out as a. You know. So if you. If you send a link header as 104, I think it's a 104. I can't what the early code is. So if you send a link header as an early hint, then that's specified. Is there a link header is going to be specified, identified differently in the data. So say if you don't use early hints and you just send a header on the normal HTML response or is.

31:26
Yoav Weiss
There a use case? I mean it's not super complex to add that, but I wonder if it matters.

31:37
Andy Davies
Yeah, I'm trying to think about it from a run perspective because this gives you a way to detect there were link headers which we don't currently have.

31:53
Barry Pollard
They would be included with the uf.

31:56
Barry Pollard
They just wouldn't be differentiated.

31:58
Yoav Weiss
Yeah, yeah, they would be included. You just wouldn't be able to know if this is a link tag or link header unless you walk the DOM or whatever.

32:06
Andy Davies
Yeah, yeah,

32:10
Yoav Weiss
It sounds like a reasonable addition. But I'd love to, you know, have a reason for why it matters.

32:19
Andy Davies
Okay, cool. I. I will. I'll add a comment. I have some ideas as to why it matter. Why it matter.

32:25
Yoav Weiss
Awesome.

32:26
Andy Davies
I need to play.

32:33
Barry Pollard
Awesome.

32:34
Nic Jansma
Any other topics or should we move on to the next stuff? And we are waiting with beta breath to make sure that Robin is okay.

32:46
Barry Pollard
Awesome.

32:46
Yoav Weiss
Thanks all.

32:48
Nic Jansma
Thanks yo. Thanks Barry for going through that. Really excited about too.

32:52
Nic Jansma
From my perspective, obviously.

32:56
Nic Jansma
Next topic would be talking about Coin web vitals across the browsers. I think this can be kind of a joint discussion a little bit. I'm not sure if either Cliff or Caroline would want to go first to talk about this or I can share a little bit of stuff from the Roma archive point of view as well. Anybody want to share some of their data that they have been looking into?

33:24
Karlijn Lowik
I totally gave it to Erwin by the way.

33:29
Cliff Crocker
I'm happy to share whatever, but no preference.

33:35
Nic Jansma
Erwin, would you like to start since your hand is right?

33:38
Erwin Hofman
Sure, yeah. So the biggest outlier, I actually already shared it in Slack as well. I'll paste some links. There we go.

33:47
Nic Jansma
Okay.

33:48
Erwin Hofman
But the biggest outlier was happening across back forward navigations that we saw in our data. And if I'm going to share my.

33:56
Nic Jansma
Screen over this one over here.

34:02
Erwin Hofman
Okay so this was what we saw in our data. Well hugely inflated imp numbers for specifically Safari. This is not a very I would say organic normal imp number. So yeah I directly created a well first I doubt our own data but we are using the web vitals data and then I also compared it with Chrome etc or other browsers and was specifically Safari where the outlier was happening. So yeah a bug report was already created otherwise aside from this well I was able to see that it was coming from presentation delay by the way and a request was already open as well within two weeks time. So yeah I'm not sure how fast and often they ship but hopefully it will be there in the next release.

34:57
Erwin Hofman
Otherwise I did dive into some specific IP data across different browsers looking at very specific metric elements that people clicked on because well we don't have lower data for safari etc. So that this is the only filter segmentation I can use. So in this case I'm looking at the Cybot Cookiebot filter and this is not very different. I would say this is quite equal. This is on desktop by the way desktop D75 the same but then mobile where we can see a difference, quite a big difference as well when looking at processing time and I'm not sure if others are seeing this as well in their data, but this almost doesn't seem natural to have a processing time of 2 milliseconds.

35:45
Erwin Hofman
On the other hand I'm not familiar With Safari or WebKit source code at all so I don't know what they are doing behind the scenes. But yeah, this is surprising maybe and I also check some other metrics as well. For example I think this is on a product page where you click on a I assume a product variance on the product page. This is not very equal but also not too different.

36:12
Erwin Hofman
Not a lot of well yeah outliers the same applies for the same metric element but then on mobile however another one is search when people are this is specifically common this metric elements hashtag search is specifically common on magenta sites and this is desktop data and we are seeing the same again as in almost no processing time on Safari but there is processing time on Google Chrome and Edge and the same applies to mobile as well again for the search input element. So yeah that's in a nutshell what we are seeing in our data for IOP specifically.

36:56
Barry Pollard
Two questions or points for that.

36:58
Barry Pollard
One is you can't really trust that Safari data at the minute since it's so out of whack thanks to those two bugs, particularly the first one. I guess you can filter the back and forth cache one but the other one you can't. So the fact that presentation time is so much larger and processing time is so much smaller, I'd question whether that's actually the fact it'll be more interesting once those two fixed lands to see it.

37:22
Barry Pollard
And my second not observation more question.

37:25
Barry Pollard
For you because we've been talking about this internally.

37:27
Barry Pollard
How useful is the INP subparts.

37:32
Barry Pollard
On an aggregate level? Because we've been talking about our next priorities and we don't have those in crux and if we should have them in crux and some of us, myself included, are questioning whether there's that much value in it because interactions are often better looked at individually. I think LCP has much more correlation of if you've got a slow time to first bite it's probably slow across all your pages and all your interactions. So LCP subparts are quite useful. INP subpart seems a lot more messy because it depends on the interaction depends on the user, it depends on everything. It's not really site specific. So hearing feedback on that, which is maybe slightly off topic. So maybe we should finish this topic first and then people can ping me separately on that.

38:21
Erwin Hofman
Yeah, I can answer this one already. As in I typically look at the subparts as it does tell me where to look first. If I switch to DevTools for example, should I be looking for scripts that are still running? Although I should say that lower information is answering that partially as well. For example what was the invoker type? But it does help me tell me to well yeah to know how to test where to test what to look for in DevTools is it really an event? Listeners, responsibility, etc. So that's how I typically use it.

38:57
Barry Pollard
Yeah and that's the idea of some.

38:58
Barry Pollard
Parts are kind of supposed to be a high level pointer in the general right direction obviously tracing an individual one that is better and not. It's just. Yeah. If at an aggregate level the data becomes meaningless then it's. It's not a great breakdown.

39:23
Nic Jansma
Michael, did you want to share your comment? Oh, I guess you guys are having.

39:28
Nic Jansma
Back and forth in the chat.

39:29
Erwin Hofman
Sure.

39:31
Michal Mocny
So I know the Safari data might not work like end to end duration has various issues it sounds like because the next paint measurement whatever. Like there's a long list of issues but like the actual event processing start to processing end and then the comparison of subparts I'm Assuming the processing portion of event timing might be more reliable even today between Safari and Chrome and the large gap that might be some. There might be some real signal to that. The first hypothesis that comes to mind is like do. Does Safari do various like ad blocking or third party script blocking on mobile that Chrome might not be doing?

40:26
Nic Jansma
Good questions,

40:32
Nic Jansma
Any other thoughts on that data at all? Thank you for sharing. Aaron, I. You have blogged about this as well, right?

40:45
Nic Jansma
Like.

40:45
Nic Jansma
Or was it just in Slack or Was it in RealmVision?

40:50
Erwin Hofman
Sorry, the question was you had.

40:54
Nic Jansma
Yeah. Where have you shared this?

40:55
Erwin Hofman
Yeah. In Slack. Yeah. And also just in the chat as well. Yeah.

40:59
Nic Jansma
All right, thank you.

41:00
Erwin Hofman
Awesome.

41:01
Barry Pollard
Okay.

41:02
Andy Davies
I can't share the data but looking at some customers we see Safari, you know, the time is generally. If you were talking about processing the event itself, the time is generally in presentation delay rather than processing duration.

41:22
Nic Jansma
Why don't we look at some other points of data from different Coral. Vital stuff. I know that there's some speed curve slides in the deck. If Cliff explains want to share it.

41:32
Nic Jansma
Now, that would be great. Sure.

41:38
Cliff Crocker
I took a slightly different approach. So that was. That was good. That was awesome. Erwin. So not as much in the weeds around processing time, but we certainly are see it as sorry, presentation delay as was talked about. What we certainly see that data as well. I plan to dig into this quite a bit more and provide blog posts for. For all the research that I did for the meeting. But high level, this is sort of what we're seeing when we look at desktop. I thought it was interesting to kind of break this down a little bit more by OS as well when we look at lcp. No real surprises here I don't think when we look at LCP for desktop. And again this is our entire data set at the P75.

42:22
Cliff Crocker
So we expect the data to be a bit more sort of consistent I guess just because of all the data that we're looking at. This is what it's looking like over time when we look at just Mac OS to be have a more fair comparison between Chrome and Safari. Sorry I didn't add Firefox in here. I will do that and update slides as well. High level here for mobile we see kind of I think what a lot of people were expecting which iOS being a bit faster platform or really more based on the device architecture but and phones in general. So I didn't think this was too surprising either. And we can see there, you know, a bit faster than Chrome on. On mobile.

43:25
Cliff Crocker
Inp.

43:27
Cliff Crocker
Again as Barry said, I think this data is just sort of junk right now. Well maybe not junk, that's mean. I'm really happy they pushed it out. Anyway it'll get fixed but currently has it but obviously this is just showing that huge delta that we see in Safari on INP for desktop and also for mobile. We see it closer at the P75 but expected to see a smaller delta here based on like what we saw for LCP on iOS where you know, obviously faster CPU everything else is going to potentially help but still seeing a gap even on mobile for between Safari and Chrome. Oop, I'll stop there.

44:19
Andy Davies
So yeah, I just wanted to share.

44:20
Cliff Crocker
Some high level numbers that I pulled last night. Overall our plan is to dig into this quite a bit more and see I imagine we're seeing a lot of the same trends just based on individual feedback and what we're looking at for individual customers that what Erwin was noticing. We haven't looked into the BF cache navigations yet but that's really interesting as well. So yeah, more to come as we start fixing these bugs.

44:54
Nic Jansma
If we don't mind, I would actually love to share some data that aligns with and paints like a slightly different picture as well from the Impulse data set. I've I'm actually going to share. Let me see if I can find the right thing.

45:13
Nic Jansma
Sorry, give me a moment.

45:14
Nic Jansma
Okay, I'm going to share a collab. Let me know if it's coming across. So this is actually from the view of the Rum archive. So this is based on our data set of the top 100 impulse customers over time. Some of this data is from a snapshot of two days ago and some of it will be like displays over times. I've never used COLAB before, but I thought it'd be a nice way to kind of show how to present this data and how other people could also look at this data if they would like. And it's my first time using it, but it seems to be able to, you know, it's like a data science Python kind of work. Data science workbench kind of thing.

45:55
Nic Jansma
One of the things that I noticed right away when actually putting our data into this is that our INP data in the Realm archive is completely broken. Unfortunately it's been broken for about two years and I'm very embarrassed to say that we just found that out today or yesterday. The Impulse data itself is okay like for our customers, but the export of that data to the run archive is broken. I have this query that was looking at for all of the data in Our data set from two days ago, what percentage of timers were on every type of page load? On the page load beacon itself, we have the page load timer.

46:33
Nic Jansma
That makes sense.

46:34
Nic Jansma
We have DNS 99% of the time, it drops on from there. LCP 63% of the time. And when I looked at here, I was like, oh no, why is INP on absolutely 0 of our data in.

46:47
Nic Jansma
The run archive export?

46:49
Nic Jansma
Anyway, that's being fixed today, but we won't have historical data for input until basically today.

46:55
Nic Jansma
So that's unfortunate.

46:56
Nic Jansma
So I was looking at a few other things from just the LCP point of view then I was looking at. So if we're looking at the overall impulse data set, I have a query here that looks at core web vital browsers that I know of that are relatively popular, right? So Chrome and Chrome Mobile, which we segregate in our data center, Safari Mobile, Safari Firefox and Edge, obviously they don't all support everything, but those are like the top browsers that also have some core vital support. And I thought it was interesting to look at what percentage of the overall top 100 impulse customer traffic is that. And so like, you know, 23% of overall impulse traffic is Chrome. Another 13% for Chrome mobile, 20% is mobile Safari and desktop Safari is 2.5%. And that's also in this ichart here.

47:49
Nic Jansma
And I'll pause for Barry's question.

47:51
Barry Pollard
Yeah, quick interruption. Chrome on iOS is that Chrome Mobile or is that.

47:58
Nic Jansma
This is Chrome Mobile Android only. There is a. I did not include chrome mobile on iOS in this export,

48:05
Nic Jansma
But we can, like, we can.

48:06
Barry Pollard
Okay, no, that's good to know what we're looking at.

48:09
Nic Jansma
Yeah, this Chrome Mobile Android and so this other UA's thing is basically all the other browsers that I haven't explicitly listed here. So this is like the long tail of Samsung Internet and chrome mobile and iOS and the WebKit views that we.

48:24
Nic Jansma
Get beacons from and stuff like that.

48:26
Nic Jansma
And I thought this chart is interesting because then the next query I have is the same chart except for only when there is LCP data on the beacon as well. And so we have this second chart which is of the total impulse traffic that we see. What percentage of those have LCP data assigned to one of those same browsers. So 18% of our data is coming from 18% of our LCP data is coming from Chrome, which is a different percentage than the overall traffic. So there's like a good 5% in real numbers difference of traffic. That is Chrome. That does not Have LCP data. I don't exactly know why. Something to look into may dig into that a bit more, but this is kind of showing you like from our total data set to shrinking it down to only focus browsers.

49:16
Nic Jansma
To only focus browsers with LCP data.

49:18
Nic Jansma
That's kind of where Cliff is asking, does this include spas? It does not. Because I in the Impulse data set, I'm only looking at hard navigations, which is our beacon type of page view. We also have a separate beacon type of spa or spouse off. I can't remember what it's called for those. So this is theoretically only navigation types of navigates and not reloads and not back forward caches and only hard navigations. So I'm unsure what this discrepancy is for that. What I found interesting just because I I know the other you other guys were also looking at more like the. The actual breakdowns and timings and stuff. I was also just curious about volume of data. So this is of the overall impulse data set, percentage of those page loads that have LCP data over time.

50:09
Nic Jansma
The top one being Chrome up here, this blue, sorry, this purple line is Safari. And we see that when Safari support was really added in November, early October, we see a jump up here. I will also point out that there was this percentage of traffic that was reporting itself as Safari that did have LCP data on it. Bot traffic most likely misidentified, mischaracterized. So I would actually love to have that be part of the conversation maybe for the next call that we have.

50:41
Nic Jansma
Around how to properly categorize stuff.

50:42
Nic Jansma
But yeah, so you can see the real Safari traffic then starts to overwhelm the presumably bot traffic from before. We do see desktop Safari trail a little bit. I think they started rolling out in January. You can see that little bump up here. In fact, you can also see the little bump over here of Firefox LCP.

50:59
Nic Jansma
Data coming up as well.

51:02
Nic Jansma
If we look at just zooming into mobile Safari, for example, this was, you know, when we saw the increase in volume when they really released it. But we also do focus on just, you know, 4 to 5% of our overall impulse traffic was saying it was Safari, but actually having LCP data on it. And this is, you know, with some customers enabling bot management, some customers not.

51:24
Nic Jansma
So there's some mischaracterization happening there.

51:27
Nic Jansma
Desktop Safari, we saw a jump up.

51:29
Nic Jansma
In January, mostly.

51:34
Nic Jansma
Looking at the time. So this is LCP 75th percentile over time. What I love is that if you look to the Left of when Safari released it, the time was very variable.

51:48
Yoav Weiss
Right.

51:48
Nic Jansma
Again, probably bot traffic and that's probably why it's so variable. But then when it actually released LCP support, we actually do see it kind of narrow down to be an open, reduced the noise from the bots because, you know, so much more volume of real traffic is coming that we actually see this red line go down. And according to Safari measurements at the 75th percentile, Safari is actually having some of the best measured time in there and Chrome being up top. And Cliff, I saw in your data that you saw Chrome having generally the highest LCP measurements a little bit more than the others, like in the two seconds or so where the others were slightly below two seconds. So our data somewhat correlates with that as well. But yeah, I thought that was interesting.

52:41
Nic Jansma
And this is sort of, this is desktop specifically and they all kind of actually started narrowing down. And this is actually a very straight line for all of those browsers in my opinion, relatively straight. And then we see for mobile again,

52:58
Erwin Hofman
Before.

53:02
Nic Jansma
It really rolled out, we saw a lot of variability. So this does, this is the LCP times, not the volume. See a lot of variability in those times, you know, six, seven, eight seconds from the bots. And then once it actually rolled out we actually see it dropping down and getting more narrow there. So that's all the opportunity I had to look into this data again. Maybe I'll share the INP data once we get INTP data really flowing as well. It's probably going to look very similar to your guys. Any, any thoughts on. Unless I saw a couple comments floating by, but I wasn't able to try.

53:34
Nic Jansma
Track all over me. Go ahead, Cliff.

53:38
Cliff Crocker
Yeah, just reiterating what I put in the chat, but I think the delta were seeing with Chrome it was very skewed by iOS so if you looked at it on Windows versus on Mac OS, which is why we kind of broke it down just on Mac OS to have a fair playing field with Safari. But I think it is a lot hardware related. I was just still surprised. It's funny how much we live in a bit of a, an echo chamber sometimes, just like how prevalent Windows still is in the market for the customers that we're measuring.

54:11
Nic Jansma
So yep, absolutely.

54:17
Nic Jansma
So what I see is a lot of discussion about bots and whether why this is in this data. I think it would be a good idea with as much details as any of us can share to talk about bots and data and identifying them and excluding them or not. And how we would do that maybe.

54:34
Nic Jansma
For our next community group meeting.

54:37
Nic Jansma
I know some of us have companies that have products related to this, so, like, I don't know how much exactly I can share on the details, but I think we. I could talk at least at a high level from how we approach bots and some of the thoughts that we're thinking about, Philip and I, Philip, Telus and I were talking about other ways and Robin, we're talking about other ways of excluding some more bot data from.

54:56
Nic Jansma
This data going forward if we can.

54:57
Nic Jansma
So anyway, I also did want to say I think it's really awesome that we had three separate competing, if you will, rum products here that were all willing to share their data and kind of dive into it. So I love that we have this collaborative opportunity to see all this data across the. Across the industry. Okay, any other thoughts on that? We had also wanted to talk about server timing in the wild. I think we ran out of time for that. Cliff, I know that you've done some research, so maybe we can queue that up for next time as well.

55:32
Nic Jansma
That's right.

55:33
Nic Jansma
With you.

55:33
Yoav Weiss
Yep.

55:34
Cliff Crocker
I'm gonna pull out of the slides that you shared just, you know, just for impact next time. But also it made me want to ask a lot more questions. So I'll be doing a blog post on it as well, but want to share and get feedback and I think celebrate a lot of what we've been seeing with it as well as, you know, call out a lot of where this is coming from. So no spoilers yet.

55:55
Nic Jansma
But yeah, I also plan on sharing this collab and probably blogging on the Ramark. I blog about how other folks could look at the same data or look at different data, of course, just to.

56:06
Nic Jansma
Make it more approachable.

56:06
Nic Jansma
If anybody else wants to look at this data set. Alrighty. I see there was link to the feedback issue for speculative load measurements.

56:19
Nic Jansma
Thank you for that.

56:22
Nic Jansma
Otherwise, why don't we wrap up 30 seconds early and we'll see everybody in April.

56:29
Cliff Crocker
Awesome stuff. Thanks, everybody.

56:31
Erwin Hofman
Thanks, guys.

56:33
Nic Jansma
Appreciate it.
