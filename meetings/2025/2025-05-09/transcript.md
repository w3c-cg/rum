**00:00**  
Nic Jansma  
Gotta also kind of get my mind in the zone for the triage thing later too. Oh, yeah.

**00:09**  
Michal Mocny  
Did you see? I invited Jose Da from Megalia, who's been doing work for Container timing, so I think he'll be good for some of the element timing stuff.

**00:18**  
Nic Jansma  
That's great.

**00:18**  
Cliff Crocker  
Good.

**00:19**  
Karlijn Lowik  
Thank you.

**00:28**  
Nic Jansma  
Hey, Cliff. Hello. Hey, Sergey. Welcome, everyone.

**01:10**  
Karlijn Lowik  
Oh, hi. Small disclaimer. Something is going on with our Internet and we don't know what. Someone's looking into it, but I don't think they're working very hard at it.

**01:24**  
Cliff Crocker  
I think she's looking at Erwin.

**01:26**  
Karlijn Lowik  
Yeah, true. We are right now. The 99 percentile. Yeah. So how is everyone.

**01:41**  
Karlijn Lowik  
Doing?

**01:41**  
Nic Jansma  
Good. Looking forward to the weekend.

**01:44**  
Karlijn Lowik  
Yeah, same.

**01:48**  
Cliff Crocker  
I'll be honest, I. I kind of forgot that this meeting was today because it feels like we just met.

**01:55**  
Karlijn Lowik  
That feeling is really correct.

**02:00**  
Cliff Crocker  
Scrambling this morning, like, oh, my God, I gotta, like, put some slides together for this discussion. And Nick must have been like, you know, reading my mind, like telepathically. Oh, I can sense it. There's a disturbance in the force. Like someone is not ready to present this morning.

**02:14**  
Karlijn Lowik  
Oh, yeah. Though I saw you guys at it and I was like, well, I'm not getting involved. Good luck with this one.

**02:23**  
Nic Jansma  
Yeah, we got. We got enough to talk about.

**02:25**  
Nic Jansma  
It's the important thing, you know?

**02:26**  
Cliff Crocker  
Yeah, yeah.

**02:28**  
Karlijn Lowik  
I kind of still feel like it's some kind of public holiday around here in Europe. Not sure which one it is by now, but.

**02:37**  
Karlijn Lowik  
Yeah.

**02:40**  
Karlijn Lowik  
Hi, Andy. Hi, fellow.

**02:45**  
Nic Jansma  
Hello.

**02:48**  
Cliff Crocker  
Hey.

**02:48**  
Simeon Totev  
Afternoon.

**02:49**  
Karlijn Lowik  
Hi.

**02:55**  
Nic Jansma  
How's everybody? Good.

**02:59**  
Karlijn Lowik  
Ready for.

**03:00**  
Cliff Crocker  
Yes, definitely ready.

**03:03**  
Karlijn Lowik  
Yeah.

**03:06**  
Cliff Crocker  
Ready for two weeks on a sunny Greek island. That's what I am. Oh, nice.

**03:11**  
Karlijn Lowik  
Which one?

**03:12**  
Karlijn Lowik  
Skiathos.

**03:13**  
Karlijn Lowik  
Sorry. Oh, no. Yeah, I'm going to. So still the weather around 20 degrees look good. Yeah.

**03:37**  
Nic Jansma  
Why don't we start in like one more.

**03:40**  
Karlijn Lowik  
Hi.

**03:41**  
Nic Jansma  
Hello. Welcome.

**03:55**  
Nic Jansma  
Why don't I share the slides that we have together? Give me just a moment.

**04:21**  
Nic Jansma  
All right, everybody.

**04:21**  
Nic Jansma  
Okay if we get started for the day?

**04:25**  
Simeon Totev  
Sure.

**04:28**  
Nic Jansma  
We are recording. Please be aware of that.

**04:34**  
Nic Jansma  
Let me go to presentation mode. Welcome Everybody to the May 9th edition.

**04:47**  
Nic Jansma  
Of the RUM Community Group. A couple small updates and logistics as.

**04:52**  
Nic Jansma  
Usual Today on the agenda, we're going to be talking about header adoption, timing, allow origin, server timing, name your favorite header.

**05:01**  
Nic Jansma  
But those are two of mine. A couple logistics. One new thing this month.

**05:09**  
Nic Jansma  
We discussed this as chairs a little bit after the last meeting around how we should scribe, take minutes and publish minutes. For the last few sessions, we have been attempting to do scribing of the minutes manually just in a Google Doc. And while that works, it does put a burden on the scribe and make it a little bit harder to participate. We are trying or we're going to try today and we have in the last one as well to use an AI assistant for taking notes. So Fireflies AI, which I believe is on the call taking notes.

**05:47**  
Karlijn Lowik  
I believe we saw it. Yeah.

**05:49**  
Nic Jansma  
Welcome Fireflies or AI Overlord. It did a pretty good job doing summary of the discussions last time with.

**05:58**  
Nic Jansma  
Only a few minor tweaks.

**05:59**  
Nic Jansma  
I thought the transcript itself had some noise in it, I would say with some filler words and other things that may make it a little bit harder to comprehend. But given those two, both the summary and the transcript and the recording, we're hoping that will be sufficient for people that want to get a summary of the meeting if they want the short summary or watch the full meeting if they want to watch the video and free up the participants to not have to manually scribe throughout this. We're going to give it a try and we would love your feedback. Obviously if you're here you probably don't need the transcription, but I'm hoping to.

**06:34**  
Nic Jansma  
Solicit some feedback after the next few.

**06:36**  
Nic Jansma  
Ones to see how it goes. One other note, we have made some updates to the tracking project. Let me share that tab instead. Really quick. So we had a really good discussion on this last time around, the tracking issues project, how we're going to use it and such. We did get a few additional ideas for things to track in here. So for example, we are going to.

**07:02**  
Nic Jansma  
Be starting independently tracking support for features.

**07:05**  
Nic Jansma  
That we care about, say for LCP or Fetch later in the various browsers that haven't implemented them, just so we can know kind of where they are. So, you know, dev work required for LCP and Safari, for example, and that can help us maybe later understand where we could help potentially or where we should help in the Web Pref working group develop the spec further or where we should encourage the implementers to implement. So we're again playing around with this.

**07:35**  
Nic Jansma  
Tracking project as just kind of a way to guide a group.

**07:38**  
Nic Jansma  
We One other thing that we have started. Let me see if I can get to that really quick. We discussed later that were.

**07:52**  
Nic Jansma  
We had an idea to create kind.

**07:53**  
Nic Jansma  
Of a RUM feature baseline matrix. So baseline is a project from Google where they, you know, show which popular features are available at which browsers. We're not going to name the same thing, but for features that RUM folks care about which browsers is available in or which ones is it not in etc. Just kind of have like a public status markdown document table if you will, so that any one of us could easily refer to it whenever we want to know. Is this feature available in xyz? Haven't made any work on it, just have an idea for it. But one thing, if anybody else would like to help with that, we would appreciate.

**08:36**  
Nic Jansma  
Back to logistics. Next meeting really quick.

**08:39**  
Nic Jansma  
Will be next. Sorry, next month, June 20th, not the second Friday of the month because there's a few holidays and folks on vacation.

**08:46**  
Nic Jansma  
We're going to aim for the third.

**08:47**  
Nic Jansma  
Friday, which is June 20th. We do have a few topics, some updates from Chrome folks, from Mozilla folks and from Isaac around some discussions that were happening in the web performance Slack. So I think we'll have some good short updates as well as some bigger discussions from there. And as always, if you have ideas.

**09:08**  
Nic Jansma  
For proposals, please submit them to us.

**09:10**  
Nic Jansma  
Or the topics backlog in the Agenda document. And I saw part of a chat from Simon if you want to help.

**09:23**  
Nic Jansma  
With the baseline matrix.

**09:25**  
Nic Jansma  
Yeah, absolutely. Please communicate with us in the Slack channel. That'd be a great way to connect.

**09:29**  
Nic Jansma  
With all of us.

**09:30**  
Nic Jansma  
There's the W3C. Rum community group channel will be great.

**09:34**  
Simeon Totev  
Nice. Thank you.

**09:35**  
Nic Jansma  
Yep. And with that, if Cliff is okay with it, I would love to hand.

**09:41**  
Nic Jansma  
This off to him to chat more about today.

**09:44**  
Cliff Crocker  
Sure, sure.

**09:45**  
Nic Jansma  
Do you want me to do the slide or do you want to take over?

**09:49**  
Cliff Crocker  
I'll go ahead and take over.

**09:50**  
Karlijn Lowik  
Okay.

**09:52**  
Nic Jansma  
Thank you, Cliff.

**10:02**  
Yoav Weiss  
Oh, dang it.

**10:05**  
Cliff Crocker  
I hope I don't have to restart. All right, can you all see this?

**10:16**  
Karlijn Lowik  
Yep.

**10:17**  
Cliff Crocker  
Okay. How's my mic? Nick, you said I was getting some.

**10:20**  
Nic Jansma  
Feedback earlier, but it's sounding great now. I was hearing audio from other folks into your like what you're talking before, but you sound great now.

**10:29**  
Cliff Crocker  
Okay, Sorry about that. Okay. Yeah, so as Nick mentioned, we wanted to talk today a little bit about a couple of headers that we really care about as from providers, but also just performance people. You know, we've got. This is really more of a discussion and sort of a State of the Union, I guess, about where we're at with things, how this, how they're being used, what we'd like to see. And as we kind of get through the presentation, like what can this group do to move the adoption of these headers forward a little bit more? So obviously there's different benefits for this for RUM providers, but also just for site owners in general. I think once you start realizing that you can expose things on the client from the server. It opens up a lot of different possibilities.

**11:20**  
Cliff Crocker  
So we're going to talk a little bit about that. We're going to talk about sort of existing, like where we're seeing this, how we're seeing this out in the wild today, which really I would say that the biggest kind of adoption, especially for server timing, is going to be around CDNS and support there, but also want us to get to think a little bit more outside of the box on other use cases there. So moving forward, if anyone is not familiar with what server timing is, I didn't want to assume everybody was because obviously this group is going to be wide and broad and recorded and seen by a lot of people. Here's basically the definition of what server timing is.

**12:03**  
Cliff Crocker  
So this is something that I believe is 2018, when this was released, or circa 2018, something that allows us a specification that allows us to communicate metrics back to the user agent from the server through JavaScript. So as we know, headers aren't typically something that we can read and process through JavaScript on the client. This is that exception and allows us to expose that in our performance analytics and other places. As I mentioned, I think it was 2018. I just, I found this old article, can't believe it was like already seven years ago or something. But our friend Charlie Basik, back when were at Akamai, basically rolled out the specification and Akamai led the charge in terms of, you know, rolling this out and adopting it and providing some transparency from CDNs, which was one of the big goals around this.

**13:02**  
Cliff Crocker  
So this was pretty awesome. This, this post is still out there. There's a lot of great use cases that I think Charlie talks about that we still haven't really adopted today. And some of the things that actually feed into our discussion about how we would want to move this forward. Here are a few different use cases for CDNs and what we're seeing kind of across all the major CDNs now is that ability to track cache hit rates. Latency is a little bit, I guess, undiscovered. I thought that this is being exposed by Akamai. Nick, maybe you can correct me if I'm wrong, but maybe it's not anymore. By default, I'm not finding it as much in the wild, but latency metrics are something that I think are really.

**13:47**  
Nic Jansma  
Important here for Akamai. We're not exposing them directly on the request, but we actually expose them not through server timing, but just through to our customers through like CDM metrics.

**13:57**  
Cliff Crocker  
Gotcha, gotcha. Okay. I really like the origin versus Edge time as well. Our customers get quite a bit out of that just understanding like hey how. How efficient is their caching policy with their cdn? Where is time actually being spent? This is great for root cause analysis or meantime to innocence, whichever. Whichever you prefer. And here's what some of these headers look like in the wild. So thanks for throwing this slide together Nick. I had like six slides to talk about this and you condensed it into one which I really appreciate. Through Impulse, you know you can see what's being exposed there by default. There is an option within Cloudfront now to expose different server timing metrics via the AWS console. Cloudflare. This one actually I think might be dated.

**14:50**  
Cliff Crocker  
I believe that Cloudflare is now and actually maybe the Rum Vision folks, I think I heard you talking about this before, but I think Cloudflare is now exposing some things by default, but always made it pretty easy to do via workers or another method exposing some of these things. Just let me pause for a second. I don't know Erwin or Caroline or anyone else who's familiar with this. Are there defaults now being exposed by Cloudflare that you're aware of?

**15:22**  
Erwin Hofman  
In what regards specifically? CF cache status or different additional server timing as well?

**15:30**  
Cliff Crocker  
Yeah, so I basically anything like by default is anything because I think that there's some headers that are sort of non negotiable that Cloudflare just adopts by default and I believe now server timing is one of those, but I'm not sure if that was just for like their pop or their edger or what. Sorry to put you on the spot if you're not. You're not sure as well. But.

**15:52**  
Erwin Hofman  
Well I do know that they are. CF cache status isn't always exposed by the way, but there is something that they expose at all times. However, it's a weird string that isn't really formatted in a server timing way so you don't get a real breakdown if you look at the network panel, which is quite interesting. It's just. Well, I wouldn't call it gibberish, but there is some reason I do know there was a topic in Slack where someone from Cloudflare was linking to a topic. Maybe even Sergey is doing the same.

**16:26**  
Cliff Crocker  
Yeah, Sergey, I completely blanked on. On asking the. The person from Cloudflare.

**16:33**  
Sergey Chernyshev  
Yeah, I would probably ask like what would be our needs for that? Like what. What is that we want to expl. Right. Because some of these Things depend on our own ROM solution being enabled and we might be exposing more if it's important. So I would love to understand. Like this is exactly the topic I want to hear, so.

**17:01**  
Cliff Crocker  
Yeah, yeah, definitely. Well, I think we can kind of get into to some of like the. The calls to action after I summarize this and adoption really quick. But yeah, I think we'll kind of get back to that because I think from my perspective, it's awesome that we can get this information from CDNs and I feel like all of the CDNs have been pretty transparent in providing it to me. The biggest downfall is standardization. And are we using common terminology? How do run vision, speed curve, impulse? Like how do we. How do we know what to look for out of the box versus, you know, right now, at least for speed curve, we sort of depend on customers to define custom metrics based on what they know out of server timing. So I think some more standards for one.

**17:47**  
Cliff Crocker  
But then we can kind of talk about like what are some of the basic things we would want to see. This is from 2024 and I believe this. Yeah, this is from the web almanac where we saw use of server timing headers for looks like on the right at least one property or more than two properties. We are seeing pretty good adoption I think is what we kind of see coming out of this. I think largely in part to Shopify and Akamai that are doing a lot of this by default. But it's still not obviously 100% where we want it to be. But not really bad in terms of numbers.

**18:34**  
Nic Jansma  
Well, Cliff, for that one.

**18:36**  
Nic Jansma  
So the ones on the right, I.

**18:37**  
Nic Jansma  
Think if you look at the numbers.

**18:40**  
Nic Jansma  
On the left, it's percentage of responses overall responses with server timing.

**18:44**  
Nic Jansma  
So like 12% of all responses in HTTP archive for that and only 6%.

**18:49**  
Nic Jansma  
Of hosts had some sort of server timing. The ones on the right are.

**18:53**  
Nic Jansma  
If it did have server timing, which ones of those had a duration property versus just a description. So like it was actually timing something versus it just being like a cache hit or cache miss.

**19:04**  
Cliff Crocker  
Okay, I'm sorry, I totally misread this chart. Yeah, I think that's obviously more telling. I mean for us personally, I think. Well, I think it's interesting from a developer's perspective to get server timing headers on all the requests for us we're just obviously using the main primary domain, the base page, if you will. So I guess it's in that sort of 6% there, which obviously we'd like to see a lot more.

**19:34**  
Nic Jansma  
And I have one little anecdote for that as well, but I'll save it for later maybe.

**19:41**  
Cliff Crocker  
Okay. Right, okay. And you want to actually explain this one a little bit, Nick? Because I think I misread this one as well.

**19:50**  
Nic Jansma  
Yeah, so if we're talking about server.

**19:53**  
Nic Jansma  
Timing specifically, this is according to Chrome usage.

**19:57**  
Nic Jansma  
And it's just, it's not usage of people putting server timing headers on their resources, it's rum or other websites or other libraries reading server timing from JavaScript. So this is performance get, you know, resource timing dot server timing calls. So there are a lot of sites reading server timing or like many of our run providers to seeing if there is any server timing. And so you can actually there's quite a jump up towards the beginning or towards the later part of last year. Maybe some popular third party tool or vendor started reading it jumping from 12% to 34%. So I don't know if there's much.

**20:42**  
Nic Jansma  
To read behind this other than to.

**20:43**  
Nic Jansma  
Say that more people are aware of it and more libraries are trying to read it and maybe those libraries all trying to do similar things with the data, summarize, analyze what have you.

**20:55**  
Cliff Crocker  
I mean, I think the takeaway is yes, people are trying to use it, trying to leverage it, but yet we still have pretty low adoption of the availability out there in the wild of it actually being there to use. I'm really curious about what that jump might have been. Yeah, for a side note, that'd be kind of interesting to see. Okay. And here's some common uses patterns, common usage patterns from Impulse. Nick was kind enough to share this. See what are some of the things that people are sending across? I think far and away obviously from this list you can see most of it's CDN related. I think there are other headers like Shopify and others that are serving sitting across other things.

**21:41**  
Cliff Crocker  
But for the most part a lot of these requests that I'm seeing anyway are specific to CDNs and a little bit duplicative. Like if you think about it, and this kind of gets into that discussion about this is awesome, but it would be really nice if, you know, our naming conventions were a lot tighter. So how many different. Yeah, we've got at least three, maybe four different names for cache status essentially.

**22:11**  
Nic Jansma  
Yeah.

**22:12**  
Cliff Crocker  
And then other things like origin time I think is in edge time I think might be more specific to Akamai, but you do see other things there that you know that could be standardized as well.

**22:25**  
Nic Jansma  
And don't read anything into this list.

**22:26**  
Nic Jansma  
Other than this is the data that impulses for the Akamai cdn. Right. So it's not like an ordered list of the entire Internet. It's just from our data that we're collecting. So that's why it's all biased towards our stuff. But we obviously do get multi CDN and just some other websites that are adding things to origin here. But I think it's kind of interesting to see the various values.

**22:47**  
Cliff Crocker  
Yeah, I think that's even more interesting when you think about the perspective that this is just Akamai, that even with that, you know, you would assume most of those people are Akamai customers, you know, of impulse for, you know, multi cdn. But you're still seeing quite a discrepancy when you look at namings that are being used.

**23:07**  
Karlijn Lowik  
Yep.

**23:11**  
Cliff Crocker  
So one of the things. Well, actually, you know, let me. Let me hold this for a second. I do want us to think about like, okay, this is awesome, but like, what are some other different use cases that we might be looking for? What are. If you're a run provider, what are your customers looking for? If you're a rum customer, what are you trying to gather that we might be able to kind of look at and promote a little bit more? Because I think one of the goals for me anyway is to sort of look outside of CDN and say, what else can we do with this? What are some of the different things that we can capture that are going to provide value, whether that's through different platform providers? You know, I think Shopify has been a great example.

**23:49**  
Cliff Crocker  
A lot of their stuff is related, but a lot of it's not, you know, with their processing time, database time, exposing their theme, you know, that's being used. There's just a lot in there. You know, what are some of the other things that we can think about? Are there other mainstream platform providers or platformers and service providers that, you know, could start to expose stuff as well? And then finally, like, for as far as rum support, I apologize if I left anyone out, but right now I think these are the only three that I'm aware of anyway, that are collecting and using user timing in their realm solutions. I could be completely wrong. I probably am wrong. You know, thinking about Cloudflare's room solution, imagine they're exposing some of this too.

**24:31**  
Cliff Crocker  
But are there more things we want to encourage the ecosystem to start to adopt and use? I'll wait till the end to kind of like talk about both of these. Let me transition really quickly to timing allow origin. So timing allow origin very Important obviously for getting more information from third parties and others related to resource timing. Whether that's size or whether that's the actual request duration. There's some things that are emitted and zero due to cross origin restrictions but the timing allow origin often allows sites and providers and others to opt in and say hey it's okay, you can actually read this stuff. So I think this is another one that we've just seen be pretty critical right now. This is another HP archive stat. We're seeing 25% of third party requests.

**25:38**  
Cliff Crocker  
Only 25% are using or sorry opting in with timing allow origin header. So I think we've got a lot of room for improvement here specifically with third parties. Yeah, I think that's, that's sort of the problem statement.

**25:56**  
Nic Jansma  
Can I add one thing to this as well?

**26:01**  
Nic Jansma  
I was looking for some data for this to help with the discussion and I came across a post that I made a couple years ago in the resource timing GitHub issue. I'm going to try to steal the screen from you momentarily.

**26:16**  
Nic Jansma  
Cliff.

**26:22**  
Nic Jansma  
Okay. I did some research quite a few years ago, six years ago at this point around why TAO matters and so did a crawl of the top Alexa thousand websites at the time again six years ago and kind of split resources into three different groups of like how visible they are to roam. So fully visible means it's either same.

**26:45**  
Nic Jansma  
Origin or has timing allow origin to it. So you can get all the data.

**26:48**  
Nic Jansma  
Like all the detailed stats and all the byte stats. That's only about 20%, 27% of all resources from the RUM point of view.

**26:58**  
Nic Jansma  
Restricted would mean that you could see.

**27:00**  
Nic Jansma  
The name of it because it's in resource timing but you can't get the details of like bytes or some of the more timing details because it doesn't have TAO on it. And so that's you know, over 53% of the resources that we may want more details on. We only have like the URL and when it started and ended up and then finally a good another 18% of all resources were not even known to rum because they were behind an iframe and the iframe had cross origin restrictions can't pop into it to pull out the resource typing data. So all of those make it so that only about 27% of all resources are like fully visible to a RUM provider. And at least 18% of those like we don't even know about like we don't even know that they're happening again six years old.

**27:45**  
Nic Jansma  
But it's probably still.

**27:48**  
Cliff Crocker  
Probably still the case. Right. I mean.

**27:50**  
Nic Jansma  
Yeah, yeah. I'll hand it back to you, Cliff.

**27:53**  
Karlijn Lowik  
Yep.

**27:56**  
Cliff Crocker  
I do think. Sorry, I was gonna say I do think that's been, at least for us, a little bit of a barrier to adoption for run providers because I think, you know, consistency is important, but also reporting numbers that, you know, you can stand behind. And I know that Steve introduced something or wrote a post on this like way back when talking about the fact that waiting time, you know, might be misattributed as well due to the missing this. And I think that's one of the big reasons for pushing this. And obviously visibility into iframes is important for other reasons as well for.

**28:37**  
Karlijn Lowik  
Like.

**28:37**  
Nic Jansma  
Overall page weight cannot be accurate from Rome.

**28:40**  
Nic Jansma  
Right.

**28:40**  
Nic Jansma  
You can see it in devtools, but you can't see the same number in Rome.

**28:47**  
Cliff Crocker  
It's more stats. So single origin, timing law, origin adoption sits right. Right above 12%, it looks like. Interesting how that went down. Never really see that. I think that's kind of interesting.

**29:04**  
Nic Jansma  
Yeah.

**29:04**  
Nic Jansma  
I'm not entirely sure about the stat.

**29:06**  
Nic Jansma  
I don't know if it's. If there was a Tao, whether it had a specific origin in it versus it being the percentage being adopted on sites like, I'm not entirely sure. I don't know if any of the.

**29:19**  
Nic Jansma  
Chromebooks or ex Chrome folks on the call have more details on this particular.

**29:24**  
Nic Jansma  
Metric from Chrome, but interesting nonetheless.

**29:28**  
Karlijn Lowik  
Okay.

**29:31**  
Cliff Crocker  
And then this is the star in timing origin. So timing origin, everything. So I think this is probably percentage of requests that had timing, low origin better, that had a star in it. So, you know, most everybody's being pretty open with this. Over 70%. It looks like if they're using it, they're allowing longness for everything.

**29:50**  
Nic Jansma  
Yeah, it's good. Like the higher number here for us is better, right?

**29:54**  
Nic Jansma  
For run providers is better.

**29:55**  
Cliff Crocker  
Yeah, absolutely. So having said all that, having kind of, you know, set that baseline understanding of where we're at, there's some things that we wanted to discuss or kind of get a discussion going around this. I think the main thing is, you know, one like how can we try to increase adoption really of both of these server timing and timing origin. I think you're kind of looking at two different audiences the that you want to look at increasing adoption. You know, how can we kind of move this thing forward? And then also like, what are some of the other proposals or things that we might want to try to improve? What suggestions do people have about, you know, do we want to try to push for Naming conventions. Has that really worked for us in the past?

**30:43**  
Cliff Crocker  
I know user timing, we tried to suggest a lot of those and you know, I'm not really sure that's been widely adopted in terms of use or successful in the past. But is there a better way to try to enforce some different naming conventions from CDNs for example, so you're not having to look for three, four different names for the same thing, especially in a multi CDN situation. So I guess opening it up to the floor a little bit, what are other stocks? Maybe starting with the adoption topic. Any thoughts on how we might try to move this forward? Sergey, this kind of goes directly to your comments earlier Cloudflare, like what are some ways that we could look at trying to get this adopted?

**31:32**  
Nic Jansma  
And Cliff, I did add one more slide after this with some ideas as well.

**31:37**  
Cliff Crocker  
Oops.

**31:41**  
Nic Jansma  
Did you.

**31:43**  
Cliff Crocker  
One second. I'm not seeing it in my deck.

**31:49**  
Nic Jansma  
Okay, yeah, I'll just have up and why don't. Okay. Some ideas to maybe facilitate the discussion, but why don't we head to Sergey first?

**32:03**  
Sergey Chernyshev  
Yeah, yeah, Just wanted to say that there are a couple use cases for server timing. One on the main HTML response and another one is in on resources as well. Right. Like those use cases are often different in my experience, so probably worth kind of separating them or at least highlighting the differences.

**32:29**  
Karlijn Lowik  
Yeah.

**32:32**  
Cliff Crocker  
Are people using server timing that are on the call today for resources at this point? I'm curious about that as well. I've heard of a couple use cases for it. Like I think maybe Colin was using this at Cloudinary back in the day to kind of understand a little bit more about image sizes and timings around images. Anyone? Anyone using server timing in the wild for non first party domain? Yes Sergey.

**33:06**  
Sergey Chernyshev  
Yeah, well you touched both your last sentence also referred to non first party domain. But at Etsy when I was there we used server timing for cache status on resources so we could and I mean edge cache status on our CDNs so we can understand the percentage of image resources that were and other resources. I mean we kind of concentrated on images but the javascripts and CSS were also very important for us. But image specifically like what was cached versus not right because to evaluate image optimization solutions in that particular case because they take time to optimize images on the fly and different solutions provided do that differently. So that was the use case. Interestingly enough it also allowed timing origin.

**34:11**  
Sergey Chernyshev  
Well forced us to use timing origin because our static resources were in a separate domain which is also an interesting Use case here. And as I mentioned in the chat, we had some LCP issues back then. Although Ng is saying that Chrome at least now shows that for cross domain, so that shouldn't be a problem. But again, I don't think that's. Well, I actually don't know if that's true for Firefox or not.

**34:44**  
Nic Jansma  
For Akamai, Impulse and CDN customers, we do add server typing to all of the resources on the page, including the HTML document.

**34:53**  
Nic Jansma  
We add the edge time, the origin.

**34:55**  
Nic Jansma  
Time and the cache data. So very similar. And we've been wanting to also add some additional data again around images. We have some products that optimize images and it would be nice to surface the image optimization states, if you will. Or you know what we did, basically how we transformed it for us, that would be another use case, but we're not there yet. And hand it over to Yoav.

**35:21**  
Cliff Crocker  
Do you. Sorry, really quick, before Yoav goes. Nick, are you. Are you guys capturing any of that in Impulse? Like, are you exposing that like in the waterfall and stuff for your reason?

**35:31**  
Nic Jansma  
Yeah, we do it a couple ways. In fact, that list that you saw earlier of the top hits was including resources as well. So not just the HTML page we use it for, we have a bunch of metrics. Like we have JavaScript CDN cache hit rate as one of our metrics, for example, along with JavaScript browser cache it right. So you can see how often it's caching browser versus at the edge. And we use the server timing to do that. We also show it in our waterfall. So on individual resource sets you can see which ones have server timing and stuff like that.

**36:05**  
Cliff Crocker  
Yeah, Yoav.

**36:08**  
Yoav Weiss  
Yeah. So to answer the question, Shopify, we are using server timing on sub resources essentially to reflect like the processing duration time, if any. And like. So I guess similar to what Impulse or Akamai does on the HTML itself. Right now we are using it to reflect like playing around with speculation rules. It enables us to reflect the prefetch headers from the response and being able to split that as a dimension on various things. And beyond that, I have a question for the crowd of my own. Is anyone interested in server timing trailers? Because this is a thing in the spec, it's supported by Firefox but not elsewhere. I know that some Chrome folks are poking at this and it would be good to tie interest to those explorations.

**37:28**  
Simeon Totev  
Can you please repeat the question? What did you say? Server timing trailers.

**37:32**  
Yoav Weiss  
Trailers, yes. So basically being able to emit timings when the response is done, not just when it starts. So that would, for example, my use case for that would be, you know, being able to better profile SSR on the server and, you know, how long did each chunk take? Things along those lines.

**38:06**  
Nic Jansma  
There are a few potential use cases with the Akamai CDN where we don't have the data we want to emit until after we've done the processing. So I would say yes, we haven't pursued that path, obviously, because hard to do, but that would be convenient for us.

**38:28**  
Simeon Totev  
It sounds interesting, but I can't think of a use case at the moment. But I'm certainly not dismissing the server time trailers. I'll have to think on those. I'm not against. I think it sounds interesting.

**38:44**  
Cliff Crocker  
So kind of going back to this list of ideas that we threw out here to promote some discussion, I think both for timing, origin and server timing. I really like this one that you proposed there at the top, Nick, for discussion.

**38:57**  
Nic Jansma  
But.

**39:00**  
Cliff Crocker  
What can this group do to try to improve adoption? So I think this idea of best practices documents that are, you know, from the rum CG is fantastic. I think something where, you know, we can kind of all get together and say, hey, okay, if we're not like, going to have the same standard naming conventions, we can still put those out there and say, hey, these are the naming conventions we recommend. But here are some best practices when presenting the data or collecting the data or, you know, talking about the data. I think is a fantastic idea.

**39:32**  
Nic Jansma  
And my thought too, like when I was thinking about server timing, we obviously have multiple CDNs and places that have.

**39:40**  
Nic Jansma  
Chosen, for whatever reason, their own names for various things.

**39:44**  
Nic Jansma  
I'm not sure. Like, in a magical world, yes, we would have all used the same thing or agreed to it. Maybe we could all magically agree to a best practice moving forward in all reality. I don't know if that'll happen on the other end. Instead of asking everybody to change, we could just have a nice descriptive document either from those people themselves, or we maintain a registry of what we see on the various CDNs and what they mean. And we would, you know, have that CDN help with that, describe it accurately so that we are being accurate. But even if we can't, like, force everybody to a convention, maybe we could at least maintain a list for ourselves or new RUM providers or libraries for, like, how you. How would you interpret this?

**40:29**  
Nic Jansma  
What does it mean according to the people that are meeting it? So that was a thought around, like a registry versus a. I like the.

**40:36**  
Cliff Crocker  
Idea of the registry. I also like the idea of, like, you know, proposed like for lack of a better term, recipes that could be used, you know if you're not. These things aren't being exposed by default by the CDN like fastly or whatever. Like what's the VCL that we would recommend you use to expose this or Cloudflare workers or other things like that where there was kind of a common because I struggled with that like when I was writing a post on server timing last year whenever it was there's just no documentation out there. There's just nothing other than, you know, awesome people in our community that are exposing it saying hey this is how I did this. There really isn't anything from the different providers.

**41:14**  
Cliff Crocker  
So I do think having something like that not just for you know, as a registry but also for here's how you actually grab this. They can always be updated and we can refer to would be awesome.

**41:27**  
Nic Jansma  
I'll often refer to the Speed Curve blog post remember what the name of various headers are. So thanks for putting starting that at least.

**41:37**  
Cliff Crocker  
Yeah.

**41:37**  
Nic Jansma  
And then the other idea around like a best practice document timing law origin for third parties. Again like we could put out best practice documents. I think we should. It's also worthwhile to maybe name and I'm not going to say shame but like name and point out the top ones, the top third parties and then.

**41:55**  
Nic Jansma  
Whether or not they have tao.

**41:56**  
Nic Jansma  
And so an example for the second bullet point is when the Roma archive we're starting to name all the different topics third party resources that we're seeing according to Impulse data. We can cross check that with whether they have TAO on it really easily. Yeah from there we could actually have.

**42:10**  
Nic Jansma  
A list of hey let's work with.

**42:12**  
Nic Jansma  
These three or four top 10 providers that don't have it. Maybe we can affect change by like you are in this list. Please. Here's why we think it would be helpful if you would add Tao. Would you help change it? And we could track that as an issue in our repository if we know there's a few of them that would have big impact and same thing for the HTTP archive they actually there was a chapter in 2022 around third parties and Tao adoption. It's not in the 2024 one for whatever reason, but maybe we could get that back into the next one and maybe it could also list some of the again some of the top third parties that don't have TAO headers as again a list and a list that we could make an impact with.

**42:51**  
Cliff Crocker  
Yeah Sergey.

**42:52**  
Sergey Chernyshev  
Yeah. In the past I at working at the companies that hired vendors, I created a vendor check in or adopt or onboarding checklist and timing Origin was one of the entry points in there outside of many others, you know. And creating a list like that we can share with companies that want to hire a third party for image services or whatever, whatever the third party is, right, can be a very useful tool as well to apply pressure not only directly on the vendors, but from the customers applying pressure as well. So that's about the timing origin, which is relatively straightforward. Just enable it, right? Like so it's like the ask is pretty simple.

**43:47**  
Sergey Chernyshev  
I don't think I ever seen pushback for this actually, other than just a desire to stay opaque, which is quickly resolved by saying well you want our money, please not be opaque, right? For server timing, however, I have a couple concerns in unifying right? The spec itself does not on purpose define what precision is or what exactly is measured and allows basically the owner of the server that outputs the resources and owner of the run to basically agree ob right? Like without upfront. And the part of the reason I think for it is that there are a lot of details that go into like a lot of gotchas, right? Like simple name that we can put out does not necessarily reflect exact endpoints of the measurement, right?

**44:52**  
Sergey Chernyshev  
I I've been to a lot of conversation that kind of like said like even for time to first bite what is time to first buy it, right? But imagine what is Origin, what is edge? How do you how each in this case CDN defines the exact thing that they measure. So while we can potentially adapt the naming to be the same, it might not necessarily reflect the same thing for the vendor, right? So I'm going with Nick to say hey, maybe vendors like CDNS can be transparent about what exactly each one of those are and that can be a call to vendors to be transparent about that, right? But in the end the measurement providers, RAM providers will have to make sure they don't bundle together apples and oranges when they are separate, right? So naming alignment might or might not be useful.

**45:58**  
Sergey Chernyshev  
Same goes for cash, although for cash status it's a little simpler, right? Like hit and miss generally is hit and miss, but there are many layers and variations of hit and misses. If you need to read Fastly's famous writings about variations of misses by human behesh to either, I highly recommend that. So there are some catches there, but I guess maybe general variety is the topic here, so we might want to address that somehow.

**46:33**  
Cliff Crocker  
So sorry, before Yoav goes I think two things there, I think one, yeah, we should probably capture that too. Not just the registry about what these things mean, but also how they're captured and are there discrepancies at least, you know, they're not going to change, at least to know that and have that posted. Going back to the comments about working with your vendors when you're at Etsy, I think this is another big one that has a lot of legs where we as a community group can help people that are in an organization who are, you know, maybe feel a little bit powerless in terms of like the third parties they're dealing with.

**47:12**  
Cliff Crocker  
I as well, like when I was at Walmart way back in the day, I worked really closely with our vendor managers to set up SLAs for our third parties as measured by synthetic measuring, like what specific, you know, conditions and that. But now that we've got rum and we've got all this in the wild, like, hey, you know, you have to enable timing Origin and you know, the response has to be within X number of milliseconds or whatever. I think that there are different things that we can help people with to help champion performance where it's just maybe not being thought about. And I don't know, for me at least it seemed like vendor management within those companies is very open to this idea and they're always looking for more ways to kind of enforce things and adherence with third parties.

**47:54**  
Cliff Crocker  
And we're not talking about like, you know, companies that don't have any influence with third parties, we're talking about large companies that do. So I think a best practices document or framework or something for, hey, here's something you can work with. Vendor management in terms of enforcing performance with third parties might carry some weight, might move the needle as well. Yeah.

**48:16**  
Sergey Chernyshev  
Yoav.

**48:19**  
Yoav Weiss  
I just wanted to comment on timing Allow Origin because Sergey said it's not a problem, just enable it. That is very much not what you want people to do. It's not a problem. Like timing Allow Origin is there for a reason that opt in is there to ensure that the server essentially says this resource has no private data that can be exposed through third party cookies or whatnot to sites embedding it. And that is not always the case. So there are genuine cases where you don't want your vendors to, or the vendors don't want to expose timing Allow Origin and their rights to not do so.

**49:08**  
Yoav Weiss  
And I think that right now it's like the problem may or may not be just like Adding the header versus going to fight with your security team to justify the security analysis that says whether we can or can't add that header. What we could do for some variation of we there's a proposal on the HTML spec to define some sort of a public like a header that says this is a public resource. You can feel free to read it, feel free to expose any information about that. And that is something that is currently being pushed for chords purposes because at least talking to Pat Meenan, he's interested in compression dictionaries being able to compress these resources even if they weren't fetched in cors mode.

**50:16**  
Yoav Weiss  
But similarly for timing allow Origin, we could use that to say okay, this is a public resource, so timing allow Origin is opted in by default. And that is potentially something that is more aligned with the security team's understanding of the resource or not or the developer's understanding of the resource. So that will enable developers to split their sub resources to public and private and then the public ones get Tau for free. That's one like basically beyond just advocating for more people to add headers, maybe we should improve those mechanisms. And for some version of we which is like the ROM community, the web Perf working group, browser vendors like we all will have to collaborate on that.

**51:27**  
Cliff Crocker  
Sorry, I should have pulled this for slide but is there. Are there. Are there any open issues around this that we're tracking already with the working group?

**51:40**  
Nic Jansma  
Not, not in cg but there's a. What's the one that you link to?

**51:45**  
Nic Jansma  
Yo, There's a what wg.

**51:48**  
Cliff Crocker  
Oh, there we go.

**51:49**  
Yoav Weiss  
There's an HTML issue number 8143.

**51:55**  
Sergey Chernyshev  
Where.

**51:55**  
Yoav Weiss  
Right now Pat is pushing for this and there isn't a lot of, not a lot of feedback. So support on that issue could be meaningful. I think that Pat like I don't know but talking to Pat, he said.

**52:18**  
Cliff Crocker  
He may be.

**52:21**  
Yoav Weiss  
Like he may plan an Origin trial around that being like taking part of that origin trial, especially if it's a third party origin trial. So rum providers can partake in this. That could be an interesting signal providing feedback on that Origin trial like that all could be useful I suspect.

**52:42**  
Sergey Chernyshev  
And yov I believe in the Web Perf working group a couple months ago you. You actually brought up exposing cache status to the potentially exposing cache status to the browsers as a separate header. Not, not server timing. Is there anything that can be included here as well? I know we kind of like there was little interest, but still.

**53:06**  
Yoav Weiss  
Yeah, I think that the main thing that's holding that back is interest from the broader community and then someone to, you know, have enough vested interest in this to actually make it happen. Which.

**53:28**  
Nic Jansma  
Yeah, yeah, there's a deck that we pushed a couple weeks ago just to kind of refresh everybody on the state of the proposal, etc. I'll link that in the notes.

**53:42**  
Cliff Crocker  
The reason I was asking this or others, are there issues that are being tracked that we should add to our tracker just to sort of get people's feedback on as well and potentially look at prioritizing and trying to push forward? I know we only have five minutes, but I think there's some really good ideas here. So hopefully Fireflies does a good job of remembering what those were. If not, there's certainly a couple that I think will be ones that I'll be following back up on. I really like this idea of best practices and whether that's any registry or, you know, recipes or resources that we as a group can kind of start to maintain and publish.

**54:23**  
Cliff Crocker  
I know that's an ask and that's something that takes people to do, but if anyone's interested in chatting about that or talking about how you might contribute, I'd really love to kind of start championing that as well.

**54:36**  
Nic Jansma  
So why don't we file rumcg GitHub issues for each of these? Each of those discussions can proceed in those and maybe we can solicit people that would be interested or see a pull request or a markdown document or something.

**54:56**  
Cliff Crocker  
Yeah, yeah.

**54:57**  
Karlijn Lowik  
And what I also feel might be interesting if we want broader adoption is rewrite use cases about it, publicize about it, make people aware. We actually, for instance, with server timing, we've had quite a lot of success with hosting companies who are willing to work with us to expose things to merchants. And that's been successful. And what you see is when we publicize about it, then their colleagues actually want it as well. Because, hey, if they're or not their colleagues, their. Their competition. Because, hey, if party A does it, why doesn't party B does it? So for all the CDNs, if Akamai Post more about it, if we post success stories about it, if we talk about it, then you might see broader adoption. I think just that might work as well.

**55:53**  
Nic Jansma  
Yep, good point.

**55:54**  
Cliff Crocker  
Yeah. There were. There were two or three posts within the last couple years that. From people that, you know, weren't rum providers and weren't CDMs that I thought were really compelling as well. Maybe one for the. The, you know, performance calendar that I saw last year or something. But I think providing exposure to those that already exist could be something as well.

**56:21**  
Karlijn Lowik  
Yeah, I think many people just aren't aware and if they could know, hey, this is what it does, that's valuable to me. Yeah, that helps.

**56:34**  
Cliff Crocker  
We got about four minutes. Nick, I'm not sure if you want to wrap or not if we want to try to get any more ideas. I think this is kind of, this is for me outcome.

**56:42**  
Nic Jansma  
But it's a great time to wrap up again.

**56:45**  
Nic Jansma  
We'll file some issues for some of these.

**56:48**  
Nic Jansma  
Maybe if you're interested, we can post the same issue links in the Slack channel. Feel free to comment on them. And then, yeah, in about a month.

**56:58**  
Nic Jansma  
Or a little more than a month.

**56:59**  
Nic Jansma  
Will be in June. The next topic will be a couple updates from a couple browsers and then.

**57:08**  
Nic Jansma  
A bigger discussion around Isaac's findings with.

**57:13**  
Nic Jansma  
Slack crash reports, self profiling, triggering that, etc.

**57:17**  
Nic Jansma  
So I think it'll be a fun meeting as well.

**57:21**  
Cliff Crocker  
Sorry, I know that were supposed to, were talking about doing this at the start of the call, but any PSAs for the group, anything that people want to know or share or thoughts that they, you know, that happened in our world. I know that's kind of what we're going to talk about some of that stuff next time, but.

**57:40**  
Nic Jansma  
We kind.

**57:40**  
Karlijn Lowik  
Of want to recap a bit on the last meeting and how to move forward with whether we want funding and how we would get it and what we would get it for. We as the co chairs actually had a talk about it because we found it very valuable to know what's out there, but we actually also found it bit hard to make actionable like who would we, where would we get the funding, how would we approach that? So what we discussed, and I'm curious about the rest of the people here, were like we should probably get more info on things that we would actually require as rum and ask around what the interest of it would before moving forward with any ideas on how to get funding for it.

**58:36**  
Karlijn Lowik  
So were actually wondering, for instance, should we do a rum talk about container timing, what it is, why it's valuable, promote things, ask around whether there's an interest for it because we at the end of the day want to expose things because it will help us and help our merchants. So where do we find that there are issues? That's sort of what we ourselves felt after that meeting. But so if there are any thoughts about that, I think we should discuss it in this lecture or in the next meeting. But I know we had a talk about it and we haven't talked about it yet here. So that's sort of our feeling around the external funding.

**59:24**  
Cliff Crocker  
I think it's probably worth noting too, that when we first started having that discussion, you know, back in Amsterdam, were still talking about WebKit and hey, can we get adoption of core web vitals and stuff like that? So we're sort of a victim of the fact that, hey, actually that is moving forward, you know, probably large in part to this community and Ryan and Nicole and others who kind of pushed forward on this interop. So that's a good thing. You know, now we've got to look at other things we want to try to push forward and potentially look at funding for and create a business case for that. So it's a good thing that happened.

**01:00:03**  
Cliff Crocker  
And I think it also made us sort of take a step back to say, all right, well, maybe let's focus on education and trying to get more consensus or see, you know, what this implementation looks like in WebKit this year before pushing heavily forward with something awesome.

**01:00:25**  
Nic Jansma  
Thank you everybody for joining today. We'll see you all next month if.

**01:00:28**  
Nic Jansma  
You can make it.

**01:00:29**  
Cliff Crocker  
Have a great weekend, everybody.

**01:00:31**  
Karlijn Lowik  
Have a good weekend.