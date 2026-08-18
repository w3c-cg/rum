00:00
Nic Jansma
Okay, looks good. Welcome, everybody. August, we are here. It's been. We skipped July, I think hopefully everybody had some good summer. Summer exploration that they did. And time off. Back at it for some of us, at least. Agenda for today, let's talk about. I'm not sure how much of this will get through. There's two topics, two small things I wanted to mention, things that we've been discussing in the Web Performance Working Group or things I wanted to bring back up. One is about the Declarative Performance observer, which was a proposal from a few weeks ago. And then I want to talk about the navigation, timing, landing attribute. Again, just another proposal in PR from Yoav from several years ago. Barry's offered to give us some updates on chromium updates and other related tidbits. And then I want to talk about agentic browsers today. 

00:58
Nic Jansma
We Talked about the ABCs, the AI bots and crawlers back in, like, may we talk more about crawlers back then, I think. But I wanted to talk about agentic browsers specifically. 

01:10
Karlijn Lowik
Can I. Briefly, briefly. I see you added the fireflies of Henri, but not mine. So if you want me to export the thing, then you probably need to accept mine. 

01:23
Nic Jansma
I don't see one from anyone else. I see one from Henri. 

01:29
Karlijn Lowik
That's odd, because it made a whole announcement that this was coming. Otherwise, I'll ask it from Ali. That's fine. It'll be fine. Yeah, I'll handle that. Yeah. Okay, thanks. 

01:38
Nic Jansma
All right. Thank you for clarifying. Yep, yep. And I don't see Henri here, so. Okay, continuing. Let's see, logistics. Nothing new here. Next meeting will be in September. September 9th. We don't have any topics discussed yet. As always, looking for ideas. Maybe some things come out of the discussion today. Did anybody have a particular topic they would like to bring for September? And if you don't have anything off the top of your head, think about it, let us know. Otherwise, we will wrangle some topics and some people to talk about things as we always do. All right, a little section at the beginning. I want to talk about. Oh, man. Okay. Well, we'll talk about Andy being at the beach then. That's just. We'll dedicate the whole session to Andy's at the beach. And what are we gonna do without Andy? And he always. 

02:30
Nic Jansma
Good for you, buddy. A new section called Keeping an Eye On. My thought was, there's always some little tidbits that we want to talk about. Maybe for just a few minutes. This one, I can see a to do there. I left this One was about the declarative performance observer. So this is a proposal presented in WebPerf working group in June from the Google team. Their idea is to add a way of declaratively saying that the websites want performance information from the performance timeline from performance observer like things without JavaScript. So this would be in some like in their version of a proposal that may evolve. This could be a HTTP header that says hey, I want you to report to a very specific endpoint and the types of navigation or the. 

03:29
Nic Jansma
Sorry, the types that I want to record or like navigations and marks and visibility states and stuff like that. We had a really good discussion about it there. I thought I had added the link here to that discussion in webperf WG but it must have gotten removed somehow. I'll add a link in the comments in a moment for this but I want to get everybody on everybody's radar here. This is the team, the group that would want to provide feedback whether it could be useful for you or your company or your use cases or not. They have a really good explainer obviously at that link that goes through some of the details. 

04:09
Nic Jansma
One of the big benefits of it is that you could register for this and help you measure abandons those things where the user navigates away before your realm script was active by saying in the header I want this information. The browser could then send data. So that's one of the big benefits in my opinion. There's some other benefits as well and I'll hand over to Cliff. 

04:32
Cliff Crocker
I'm just curious, are we going to discuss this now? Because it's raising some. Some thoughts. 

04:38
Nic Jansma
I would say let's time box it to like just a few minutes if we could have some bigger discussions. But yeah, and then the idea would be to bring this kind of feedback to the explainer if you have any. 

04:48
Cliff Crocker
So I guess a couple things come to mind with this but I was curious if there was some more stated use cases like what the big driver of this was outside of just tracking abandons which I know has been an issue for us for you know, since we've been doing rom. Are there other use cases driving it? Because seems like a way, you know when you say hey there's a way to get performance timing data without JavaScript certainly CDNs that you know are there and capturing that information or whatever don't want to actually inject the script. Also with this topic of agentic browsing, we've got agents that are not executing JavaScript that are outcoming the sites. But we still want to understand things like DOM complete or other things that an agent might care about in terms of the page readiness. 

05:40
Cliff Crocker
Are those some of the stated use cases and why this is getting attention or is that just me making shit up? 

05:46
Nic Jansma
I think that those are valid things to think about with this and I'm not the team so I'm not going to speak for them, but some of the things that they were presenting were like we have network error logging that provides telemetry pre headers. We've recently improved the page unload use case page hide reliability with fetch later but there's still that the main gap that we don't have is like post headers pre JavaScript of you know, of telemetry there they in their. I can actually share their. Their tab. They have a really good explainer. They do talk about some of the use cases. Most of these are things that like may be covered in other things as well that you would stitch together with those other things that I mentioned. 

06:36
Nic Jansma
But they have some other kind of thoughts about how it differs from like network error logging and you know, those kind of things as well. 

06:49
Cliff Crocker
Nice. 

06:50
Barry Pollard
Yeah, I'm not involved in this either but my understanding is it's to supplement the cases where either your JavaScript doesn't execute because it feels before then or it doesn't beacon because Fetch later doesn't get a chance to send or what. So I don't think they were thinking particularly about those use cases, but they've seen like valid ones on top of it and maybe worth suggesting there. 

07:14
Nic Jansma
Yeah, I'll add one more thing before handing over to Sergey. Maybe it could help with ad blocker use cases as well. Although maybe the endpoint that it posts to will still be blocked by the ad blockers. But obviously JavaScript being blocked for other reasons can look like an abandoned or you know, some not coming Sergey. 

07:33
Sergey Chernyshev
Yeah, I think one of the challenges that we will have is reconciling the data between this reporting method and the JavaScript version of it that runs later. Right. So we might want to make sure this is solved somehow. 

07:52
Nic Jansma
Yeah. 

07:53
Sergey Chernyshev
Because yeah we don't want two data sets that are hard to combine later. 

08:00
Karlijn Lowik
Yep. 

08:01
Nic Jansma
And there's not a lot of flexibility here like for things that we want to. We as rum may want to add like a session ID or like other dimensions to this. Like this data may not have that data too. So like I think. But anyway there's a lot of really good discussion in WebPerfwg around some of these topics as well and I can share the. The. The link is right here now. She just put that in the. In our chat. Were there any other hands up at all? Sorry, I can't see while presenting. Okay, okay, let's move on to the next thing really quick. 

08:39
Barry Pollard
Okay. 

08:39
Nic Jansma
There was a proposal from Yoav, who I don't think is on the call today from a couple years ago around some sort of navigation timing, landing attribute. So landing being. Is this the landing page for the site? Is this the first, like the first page of this user's navigation in this tab? It's kind of like a very generic description of it. There's some good discussion in the ticket itself and some more recently over the last week or two, Barry had some good thoughts about the edge cases of what this might mean and stuff like that. I would say on a personal level, this is something that I think would be very valuable for our RUM product. I think in the RUM archive as well there is a landing attribute and it's not well defined. 

09:28
Nic Jansma
I think people do this today by looking at the refer and. Or session cookies. But it could be interesting if we can get that signal from the browser a little more definitively of whether or not this is kind of like the first time you landed on the site. Maybe it's not perfect, but maybe it would help a little bit. So wrapping up my thought. Yeah, I just, I would love to reopen the discussion for. Let's see what folks in the RUM CG think about it and if they want to add their thoughts to this PR at all for how valuable or not it would be and maybe we could drive it towards getting agreed upon in webprint. Barry? 

10:11
Barry Pollard
Yeah. My comment, by the way, I'm not negative this, but my comment is looking at the file changed. I think it was a very, very first stop basic implementation from uav. And it just basically says is it the same site or something like that? So it doesn't fully cover how it works. So I was like, I don't understand what this is. I think saying it's a landing attribute or first time visiting, whatever needs to be fleshed out a little bit more and then the actual change PR needs to be done at the minute. It doesn't work as far as I'm concerned. But agreed. 

10:40
Nic Jansma
Yeah, I think his PR was to start the discussion, not necessarily like final shape. Yeah, yeah, agreed. 

10:49
Barry Pollard
Issues. 

10:52
Cliff Crocker
Hey, Nic, Sorry, I don't know if you said this, Barry, you said it in the chat, but the link you sent was the wrong link. Could you repost this link. 

10:59
Barry Pollard
Oh, thanks. 

11:01
Cliff Crocker
Thanks, Sander. 

11:05
Barry Pollard
But nice to know you're keeping an eye in my other work there. Nick,. 

11:10
Nic Jansma
I never had visited that link before. 

11:13
Erwin Hofman
Before. 

11:16
Nic Jansma
That's weird. I don't know how that must be. 

11:18
Sergey Chernyshev
An agent doing it for you. 

11:21
Nic Jansma
Yeah, honestly, I'd never been to that page before. Right. 

11:24
Cliff Crocker
Weird. 

11:25
Nic Jansma
Something's taking control of my computer. Thank you for posting the correct link there. 

11:33
Karlijn Lowik
That's weird. 

11:34
Nic Jansma
All right, well, I guess I'll double check what I'm posting from now on. 

11:38
Barry Pollard
Yeah, let me. 

11:38
Nic Jansma
Let me actually copy link. Did I like ask Gemini list or something. 

11:44
Cliff Crocker
Weird. 

11:45
Karlijn Lowik
All right. 

11:46
Nic Jansma
Yeah, okay. I was able to post correctly that time. Strange. All right, any other thoughts? Michael, you had your hand up. 

11:53
Michal Mocny
Yeah. So I have some context about the original motivation for this pr. This was related to soft navigations. At the time were evaluating how to do aggregation. So basically we wanted to say if you write a site, there are certain types of navigations that must be cross document, like MPA navigations, like no matter what technology you adopt. So for example, if I right click a link and say open a new tab, it starts a fresh tab, it opens the thing like you might have an spa, but that navigation is going to hard navigate a new document. If you cross origin, click a link, even if the site is an spa, it has to bootstrap and load. 

12:38
Michal Mocny
This is not related to sessions or like user experience where like the first time in a day when you follow a new inbound link and then you might open a new tab, but you're still within the same domain. So it wasn't about the sessions concept. There was a more technical level saying this document needed to load a hard load because there was no other way to load it. And there are certain situations and those were considered landings. Whereas if you click a link that's the same origin, we called these follow ups and you could choose to do a cross document navigation. That's the easy thing to do. That's the traditional thing to do. Or you could replace it with like an spa type route or just make it a normal interaction with dynamic content changes. 

13:20
Michal Mocny
That's up to you, the developer and the opportunities for performance optimization are different between those two flows. I think both like a session life cycle. Like this is the first load in a session and then here are all the navigations within that session. They have an ID or something is useful. I don't know what you have in mind to resurrect right now. I just wanted to say that this had a very technical detail. It ended up not Somewhat being necessary for the soft navs project because performance profiles of those two types of things were not as drastically different as were worried would be. But it's still, I think, a useful concept. So yeah, I don't know if we care about both or we. But that was the original motivation for this one. 

14:06
Nic Jansma
That's good context. Yeah, I think from like an observability point of view, like you want to bucket the first time you go to a site versus clicking around. Right. Like as a way of slicing your data because the performance characteristics are vastly different. So, you know, not necessarily related to tracking as much. 

14:31
Michal Mocny
But yeah, no, I think I understand. Like, yeah, there is like a navigation confidence thing that was added and that's more about browser and like system entropy. But like potentially you can also expand that to say like, hey, this is a brand new fresh load versus a hot reload. 

14:51
Nic Jansma
Like, but I think that was agreed. But I think that was more for like first navigation of the browser, you know. 

14:57
Michal Mocny
Yeah, yeah. 

14:58
Nic Jansma
Kind of stuff. 

14:59
Barry Pollard
Right. 

14:59
Nic Jansma
Or versus like first time you landed from clicking a SERP result. Right, yeah. So, yeah. 

15:05
Andy Davies
Anyway, aren't they just variations on the same thing? Whether you come from elsewhere, whether you've opened a new tab, they're all different types of hard, you know, initial navigations. 

15:16
Nic Jansma
Yeah, yeah, there's. 

15:18
Michal Mocny
There's like an a user experience aspect of it. 

15:20
Barry Pollard
Right. 

15:20
Michal Mocny
Like this user might have this page in Service Worker and the cache is still valid and so it's like a week later, but they're still doing a hot load. But it's like a new fresh mental context. Right. So anyway, there's lots of different reasons to use these things and I know how valuable they are. I just wanted to point out what this originally was in case we want to completely drop it. That's fine, that's fair. 

15:45
Barry Pollard
Yeah, we talked about it. I posted a link there on Web Vitals as well. You can just measure this as the refer is the same origin as the current page. That's one definition of this. In which case you don't need a landing attribute. So again, I think we need to figure out exactly what we mean by a landing attribute and how it differs from that or if it's just a convenience of that. 

16:08
Nic Jansma
Sometimes we don't get referred though is one of the challenges. But yeah, Andy. 

16:14
Barry Pollard
Yeah, the other one I wonder about. 

16:15
Andy Davies
Is what navigate success would give us, whether we can register a handler early enough for it and pick it up from that. Because there's all sorts of interesting stuff in the navigation API events. 

16:31
Nic Jansma
So I'll. I think we brought a few different things. I'll try to post a summary, some of that stuff into this ticket itself. And maybe think through, like, with yields. Very, very draft changes. If there's a different iteration of that might make more sense, that would allow us to segment traffic a little bit more. I don't know, but I guess a question here is like, do other rum folks think this would be valuable to be able to segment this way, or is it too hard to define and not as useful? 

17:11
Erwin Hofman
I would say it's absolutely valuable. We do track it in. Well, whatever. Different heuristic than I just shared in the. In the chat. But yeah, we now have our own heuristics to determine if it's a first unique page hit or a successive or even a returning visitor. So, yeah, I do consider it to be a valuable. Yeah, detail. 

17:33
Karlijn Lowik
Yeah. 

17:33
Nic Jansma
A signal at least, if not. Yeah. 

17:35
Erwin Hofman
But yeah, as I already shared, we. We have our own heuristic which works, by the way. It won't be 100 perfect, but it does work. 

17:44
Karlijn Lowik
Yeah. 

17:45
Nic Jansma
But you might be able to use a signal to supplement that heuristic to make it more accurate. 

17:49
Barry Pollard
Yeah, okay. 

17:49
Erwin Hofman
Absolutely. 

17:50
Nic Jansma
Andy. 

17:51
Andy Davies
Yeah, it's useful. I. I end up using referral or TCP connect time to filter out them out, all sorts of stuff like that. 

18:00
Sergey Chernyshev
Yep. 

18:01
Barry Pollard
Okay. 

18:02
Cliff Crocker
Is it boomerang already tracking, like the page in session or whatever? 

18:07
Nic Jansma
Yep. So, yeah, checks refer and. Or page in session with cookies. But if you don't have cookies and what do you do? Look at refer. All right, I'll put some of these thoughts into the ticket, maybe see if we can evolve a little bit, folks. Also chime in if you mind as well. Just more. More voices in the ticket might help for later conversations. Okay, thank you. 

18:33
Barry Pollard
With that,. 

18:35
Nic Jansma
We are at Barry's Bites. 

18:41
Barry Pollard
I only have one topic this time, but before we go into that, I've just remembered one other thing. Helmet. An external contributor just landed a Change to Chrome 153 that fixes fetch later on the last tab of Urban. I know you've raised this before where it's. If you close the last tab, it closes down the browser before it sends a fetch later. So that should be landing 153. Would love for people to test out and see if that resolves the last remaining issue that I'm aware of with Fetch later and suddenly makes it a reliable beacon like we always promised it to be. So, yeah, have a play and see what you know. It has been reverted once, but re landed so well. Fingers crossed it doesn't get reverted again but that's very good news. 

19:31
Barry Pollard
I will yeah, I think there's a bug in the thing. I've got the original one but not the re landing of it so I'll be starting. But anyway you can find it easy enough so we'll see. Right? Yeah the main topic today is Soft navigations have landed. So I think we presented this quite. 

19:53
Cliff Crocker
A few times. 

19:56
Barry Pollard
But it's now unflagged in Chrome and stable. So this has been a long standing issue. This post was published in September 2021, which is like five years ago. I opened the first PR for Web Vitals in January 2023. I think it's my longest PR ever that actually got merged with over 197 commits, nearly 200. So this has been a long bit of work so I thought it was worth giving you all a quick review. I know some of you, a lot of you have been speaking to about this and may be aware of it, but I'm going to nip through a whistle stop tour pretending you know nothing and then open it for discussion because we're already seeing some interesting stuff in there. This is a slide I stole from Annie and made orange to make it look like it was my slide. 

20:40
Barry Pollard
Completely different one to explain what the issue was A traditional website, you have a first load. It's normally not a landing site as we just talked about. It can take a bit longer. Things are uncast. Maybe it takes four seconds to load, then you click around. Those ones are usually slightly faster because at least some of the assets are already loaded. Maybe it's 3 seconds. 3 Seconds, 3 seconds you end up with an average LCP. In this example of 3.17 seconds, your LCP has got better. That initial extra long landing has been offset by some follow up navigations that have brought your average down. 

21:14
Karlijn Lowik
Yay. 

21:16
Barry Pollard
Lots of sites use a single page application or spa and that does a load quite often. It sometimes takes longer than a normal hard nav because it's loading a load of JavaScript. Let's say 5 seconds in this case. Then whenever you click there it doesn't do a full page reload, it just replaces the URL and replaces the content. Maybe it makes a fetch call, get some stuff and put it in there. In theory that can be very quick because it doesn't have to load the whole page, it doesn't have to reinitialize lots of JavaScript and stuff like that. Maybe you get one second navigations after that but until now, those were all invisible to rom, to crux, to everything. It was the same page. It was not a navigation, it didn't count. Therefore Your average is 5 seconds. 

21:57
Barry Pollard
Even though your user experience here is seeing effectively one point. Because as far as the user is concerned, it's this. You know, they're just really quick that navigation is there. So there's two issues with this and next slide, or three issues with this one. Metrics are we can be nice and say incomplete and not do it, or we can be rude and say wrong. Take your pick there. So that's obviously an issue and not great. It's also blind to the soft navigation load time. So in this case we're saying it's one second to do that. That's great. Web.dev a site I work on quite often is quite slow to navigate in between those. But without LCP timing, for example, you don't know that it's slow. You don't know that it really should be an mpa. Well, you probably do, because I told you repeatedly. 

22:44
Barry Pollard
But anyway, so you're kind of losing that. And then the other thing issues are attributed to the wrong page. So you land on a page, you click to another page, get some bad cls and it gets reported as the first page as bad CLS rather than the third page down. Same for Iamb and stuff like that. Those are the main sorts of things that we look to fix. A quick reminder of what it is. The next slide. It's not just one little API. We've actually got two APIs. They've arrived in Chrome 151, which I had to remind someone. This call, who I won't embarrass for his own embarrassment sake, has already been out there for at least two weeks, longer for some people who are in the early stable release there. This is out there. It's already there in Chrome. 

23:29
Barry Pollard
Not everyone will update it. Some people are install over there, but the vast majority of Chrome users should now have these things. As I say, it's two APIs. There's a performance soft navigation API. What that does is it triggers when Chrome thinks the soft nav has happened that we define. As you click something, paint happens and the URL updates. When that happens, you'll get one of these on the performance timeline saying, hey, a soft nav happened. FYI, do what you like with it, Measure your core web battles, do whatever you want with that. CLS and INP are continual streams of layout shifts and event timing measures. Just with this alone, we can Already slice and dice it and we can sit there and say CLS started here for the first nav and ended here for do the calculation, fire off. 

24:12
Barry Pollard
Then it started here and ended there and so on and so forth. Just with this one sort of trigger, we can recalculate CLS 9P per navigation, including soft navs. Now, what you can't do with this is lcp because LCP is only measured from load until the largest contentful paint is done there. And as soon as you click, that finalizes it. So a click is necessary to do a self navigation in the vast majority of cases anyway. So you're never going to get an LCP after that. So you can't measure that. So to address that we could have just reset LCP and readmitted it and an early iteration did do that, but there's complications with doing that and fusions. So instead we invented a new performance metric called Interaction Contentful Paint. 

24:58
Barry Pollard
I try to avoid saying ICP because this will never be a metric as far as I'm concerned. Well, never say never, but that's not the intent of it. So it's not like inp, it's not like lcp. This is just a performance timeline event coming in there. So try not to. Yeah, I try not to call it ICP because I think people will think it's the next core web variable metric that's about to land and it isn't. So anyway, you click on something, you get five different paints. It will trigger there. That will happen whether there's a soft navigation or not. It will happen for the ones that cause a soft navigation. It will happen for the ones that don't cause the soft navigation. At the minute there's a slight nuance there that only measures increasingly sized paints. 

25:37
Barry Pollard
So new largest contentful paints for that click. In the future, it's probably going to measure all paints. We're still working on that. But by adding that in, that allows us to say, hey, if this click caused an ICP and the ICP was part of a soft navigation, so combining these two APIs, then hey, that's soft LCP for that. So we now have. And also soft FCP by the way, so we now have ways of measuring core web vitals across soft navigations. There's MDM documentation in progress. We got a lot of documentation on web.dev in the meantime. The first one is the actual text. It's just been approved, so I'm expecting that to be merged very soon. And we got the compact data that also feeds can I use and stuff like that. 

26:17
Barry Pollard
So in case you're looking for API references, they're coming very, very soon on web sorry, not web.devdeveloper.chrome.com there's a long standing article that can keep me up to date with the latest changes and stuff like that. Or there's the YCG repo inspect if you really want to get into the nitty gritty. We also released Web Vitals V6 which includes support this and I know a lot of you use that as your underlying rum solution. It is opt in I have not made this on by default, so you have to pass a new flag when you call on LCP on CLS and that sort of thing. The primary reason for not making it default as well as it being new is you need to include the URL when beginning back metrics. 

27:00
Barry Pollard
So if you just sit there and say hey here's my metric and people think like Google Analytics will include the current URL, that might be the later URL. So we emit imp and when a soft nav happens you're already on the new URL. So therefore you don't want to report that imp from the previous page or previous navigation under the new URL. So you have to change might have to change your beaconing mechanism to say hey, look at this Navigation URL's a new property we give you. That's what this imp refers to, not the current URL. So there's a little bit of nuance and stuff to understand about using it there, which I say one reason why I've not done that it does not include so it uses this performance soft navigation thing. 

27:41
Barry Pollard
It's when the Chrome thinks the soft navigation does not include support for measuring yourself though T2 oh yeah, it doesn't measure, it doesn't emit anything. Saying a soft nav happened. It only misses the five metrics. Every soft nav should have ttfb. So by TTFB having you can because it emits immediately you could say hey, the fact I've got soft TTFP means that the soft navs happen by definition. So you could use that as a kind of proxy. But we haven't added a hey soft nav happen. We've only added the same five metrics. You can just do a simple performance observer and performance soft navigation. 

28:17
Barry Pollard
If you want to actually know whenever a soft nav happens, maybe you're measuring other things DOM content, loaded, resource timing, whatever and else in which case, yeah, you're going to have to measure that separately yourself Crop support is coming. I don't have a date to share with you soonish. We hope to have some experimental data in there. We're not going to shove it right in there. We'll have to do announcement. We'll need to possibly agree with search and stuff like that. And when we're going to do there. We said we give 6 to 12 months notice whenever we make major changes. And this is a fairly major change. 

28:48
Barry Pollard
So we're not just going to shove it in there, but we will make the data available under an experimental label so you can have a look and play and go, oh my God, this is terrible. Or it's fantastic and it's fixed all the problems and that sort of thing. That's what it is. Oh, one more thing is we've added quick dental support. I say this because I did some of this myself. Therefore it's more important than every all the five years worth of work that people did before this because I spent five hours doing something here in Chrome 144 we added nav and LCP metrics. I insisted on the star because I was a little worried about people getting confused. So at a minute this video is going to do a performance trace. Yeah. So here you go. And whenever this finishes. 

29:33
Barry Pollard
Come on, come on. Yeah, I didn't need that many examples, Barry. Come on. Yeah, you can see the little type, the little metric measures at the top bottom you can see FCP star. And I say the star just indicates that's a soft nav rather than the hard nav lcp. Or if you click on it'll say soft largest. Contentful Paint 1.5.3 is also going to add these insights. So it will segment the timeline by insights there. All the insights, amp breakdown, LCP breakdown, whatever it will be for the soft navs and so on. You can look at this in chrome stable, Chrome 152, which is going live I think in a week or something like that has it in live metrics for both the crux side and the local metrics. So as you click around a soft nav, let's say web.dev is a soft navigation. 

30:20
Barry Pollard
You can see there it's giving you a 0.6 LCP which if that was LCP for Web.dev I would be delighted. The crux data is just the crux data for that URL, which is just the hard nav crux data at the moment. So just because it says crux there, it's. We took a decision there to show it. It's some data there. It may be not accurate for a soft nav there, but it's some data. So yeah, fairly decent soft nav support. There are a couple of revisors, a couple of quick pro quos with soft navigations and some of you are discovering this as you implement it. First of all, this is Chromium only and I say Chromium rather than Chrome because it will include Edge, Opera, Valde, blah. 

31:01
Barry Pollard
Not all of them may have updated to Chrome 151, but like Edge I think already has and that sort of thing. So you will see it in more browsers than Chrome, but you will not see it in Firefox and Safari because it does not exist there. The browser's definition of self navigation may differ than yours or from your frameworks. So we take an opinionated stance of self navigation happening, which is say is a click or some sort of interaction, URL update and a paint. Sometimes people, I don't know, you time out and you get a logout screen and your framework may see that as a soft navigation because it navigated to the logout because there wasn't a user interaction that won't count as a soft nav for this. 

31:40
Barry Pollard
So you may say that's a soft nav and you're not measuring it as such, or that isn't a soft nav and you are measuring it as such. So be aware of that, test it out and see if it meets your expectations. I think in the vast majority it will, but there will always be cases where it doesn't. The advantage of this is that it just works for any site out there and you don't need to upgrade your framework or support the navigation API or whatever to do this. It just works. It also means another big advantage is it's consistent across those. So if one framework does the URL update and then does some paints and another framework does lots of paints, lots of work, and then finally does the URL update later, they might have very different measures of what soft nav is. 

32:24
Barry Pollard
Whereas this shoot in theory, bring those all together and get the same number for both. So rather than, you know, frameworks tweaking it or achieving the system, whatever, that we got a consistent measurement of from click to URL update and first paint that is the soft navigation and stuff like that. The disadvantage here, as I say, is it's somewhat opinionated and may not match your opinions. The other interesting one we're discovering is that MPAs can have soft navigations. So we've had a few MPA sites And particularly on product filter categories, where you go in there and it filters it and it does a replace state and updates it and adds a variant URL or whatever. And that triggers this and says, hey, that you've effectively got a little mini spa on your website. 

33:08
Barry Pollard
And people have been surprised at that going, this is an MPA website. I didn't think it had soft navs. Why am I saying, oh, right, okay. And at the minute there's no way of not triggering it. I don't think we're going to change that. But we've had some discussions since we've seen this sort of thing. But yeah, you may be surprised to see this triggering again because the browser's definition of soft navigation may differ from what you see. The other thing to be clear of is you're not just getting extra metrics here. The hard metrics themselves change. So LCP doesn't. You get the LCP for the hard nav. And if you're just measuring lcp, that shouldn't change. But if you're now measuring soft nav, lcps and mixing it up there and they're a lot faster. 

33:49
Barry Pollard
The overall score was, if you think back to that slide with the charts, the average came way down. And that's intentional. So you will see a different score there if you're including these. So you can't necessarily just filter out hard nav and soft nav. INP used to be measured from the whole page and all those soft navs didn't count. Whereas now we're saying we're stopping INP whenever the first soft nav happens. And the INP for that hard nav is now a much smaller window and therefore may not include all those bad imps or may include the worst ones, but not the other ones. And then each of the other ones will then measure separately and filter up and may change the overall score there. Similar with cls, the plus side of this is that you can then get better attribution. 

34:35
Barry Pollard
So you can see soft nav number 56 is where my CLS issue is rather than just hard nav. One is where my CLS issue and God knows where on the page it is. And then the other thing, andy and I have been talking a lot about this, is soft navs are just fundamentally different. The content is already loaded on the page. You are not loading from scratch. Resources are not requested because they're already loaded in the page. So, yeah, you cannot measure like, for, like with these things. I think a lot of it kind of Makes sense whenever you do it and do that. But then other things people are like, oh, right, okay, I didn't consider that. You know, we need to think about this because they are fundamentally different. 

35:14
Barry Pollard
And although we can now measure the user effect of it through these performance APIs, they are still fundamentally different. And when a lot of ways I say they're kind of like what we talked about earlier, landing, you know, going loading a page from a fresh versus loading a page with lots of cached resources is a very different performance profile, which why a lot of tools like WebpageTest or whatever do two loads and let you compare the waterfalls between them both. And we've kind of got used to that because we expect it, but we may not expect that as much with soft knives and you're going to have to get used to that. The other thing is we measure it from click start until the paints. Typically on a hard nav, you click link, it will do whatever that event handler is going. 

35:54
Barry Pollard
If it's a link, find it. It normally just goes unload handlers and stuff run in parallel. But it's basically from there. If it's a button that does load of calculations and then navigate you, those loaded calculations aren't typically included in the hard navigation, LCP time or TTFP time or something that is measured after that. The navigation only really starts whenever that's all finished. So keep in mind again, they are just a little bit different. Next slide. Okay, so the big question that I hear a lot from you is what can we do about non sporting browsers? And I've implemented it in Safari and Firefox and they're both going to release it next week. And that's the answer to that? No, that's obviously I. Sorry, don't get excited. I think it'll be a while before the boys do it. 

36:45
Barry Pollard
So we are going to live in a world where we have finally got, you know, cross browser support of LCP and IMP at least and now we're breaking that sorry slash, not sorry. These are fundamental better metrics, we think, and that's why we're pushing ahead with it. What does that mean you can do about it? Particularly, you know, your work for OWN solutions. I'm sure your customers aren't going to accept that as answer. You can fake it. Many of you tried this in the past and with limited success. I think LCP in particular is very difficult, I would say impossible to measure. This way you can tweak things with element timing. Again, that's chromium only you can Measure yourself when you think the paint happened and stuff like that. But it's never going to be an accurate lcp. 

37:30
Barry Pollard
IMP is more possible if you can use either your framework emits when the soft nav happens or use navigation API or use some other sort of thing to measure that. You can slice form metric and try and measure INP again. You're going to run into lots of edge cases where that consistency thing that I was talking about and when those things get emitted and stuff to gap. But it is possible. How useful that is, I don't know, only you can answer that. And CLS as say is basically a non issue because it's chromium only. Yes, older chromium will not be able to do this but hopefully with the rate of updates people do with Chromium shortly that's going to be less and less of an issue. 

38:10
Barry Pollard
So basically you're talking about IMP is possible, LCP is not possible and everything else is somewhere in between. So how useful faking it is and how inaccurate it's going to be. And you're certainly not going to be able to measure cross browser and see which ones are doing that. So only you can answer that. You can accept that Chromium is now different or at least new Chromium. It's not ideal but it was the case for a long time. And you can say these are better metrics and at least we can get insights into browsers that support it. I mean that's still the case for cls and I presume all of you are still measuring cls, not just saying I'm not going to do that. Yeah, it's an option, may not be preferred option, maybe not be what you like, but that's certainly an option. 

38:52
Barry Pollard
Probably the one I'd advocate to be honest. You can ignore this whole project and say I'm not going to look at it until Firefox and Safari support it. Personally, I would not recommend that. I think there's a lot of valuable data here. I think there is a real issue that we're doing here and I think you'd miss out for a number of years if you took that decision. But that's your choice. We also don't have an ETA in doing this. I expect lots of discussions at TPAC and stuff like that. See how if there's any more interest now this has landed. But we haven't got a yes, we're committed to doing this from other browsers. We've not got a no, we're not. There's definitely some interest in it but I can't speak on their behalf and that sort of thing. 

39:26
Barry Pollard
So and even if they do look at it, I think they, you know that we've been presenting quite often at the W3C and film but they're definitely aware of this but they are waiting for it to land before they as far as I know none of them started implementing any of this stuff yet so it's going to take some time if they even decide to implement this. 

39:46
Barry Pollard
Your other option, you can measure both, you can double your beacons and stuff like that and that obviously has its own downsides but you can say okay, I want to measure this because it's useful in Chrome, but I also want to measure it in the old way so that I can compare cross browser and see, you know, measure length for length and see if the Safari issue is a real issue or if it's just a measurement issue. And whenever I look at Chrome and same lens it shows the same figures and therefore it's a non issue and can be ignored or whatever. Obviously has its own issues. Double beaconing confusion, this, that and the other. But that's an option. That's what I've come up with so far as your options. My biggest feedback will be to try this. 

40:28
Barry Pollard
If this API or these two APIs are useful then let the other browsers know, tell them that you want this, that this is useful, that this is addressing a need because that's the surest way you're going to get of them getting this in other browsers and doing that. If you try it and it's actually terrible, let us know and we'll see why. But hope not enough of you have been involved that we are seeing value of it. We think so. God, I hope not after this time that's the case. 

40:58
Barry Pollard
But yeah that's the best I can say is and if any of you want to publish blog posts or whatever and say hey we used it's Brilliant, we identified 56 issues and our users are happy and God I wish it was in these other browsers then I will more delight and be happy with that and happy to answer any questions if it helps doing that sort of thing. And that's pretty much it. I've got some questions feedback here. Here are my suggestions for kicking it off but kind of an open house so let me know what you want to talk about. My question are your customers asking this? I heard yes but from a lot of you but maybe some of you saying not really or actually we mostly deal with MPA sites. So it's a non issue for this. 

41:36
Barry Pollard
Are you planning on using this? I'd be really interested in hearing that of no, we're going to leave it bacon for another couple of years or until the other browsers doing it or hey, we're actively implementing it right now and we're super interested or we've already implemented it, please let me know. I'd be delighted to hear that. And if you're not doing it, why not? What's your workaround? What's your alternative? Maybe you have a fake IT that works and you're happy with and you don't need this or whatever. Yeah, I'd be interested in that. I'd be interested to know what you're doing with the cross browser story. 

42:05
Barry Pollard
I've spoken to a few of you offline but yeah, if you can share more what you're thinking is around here or how you're going to do it or what you're going to do, please let me know if there's anything else we Chrome can do for this. Be that in Chrome itself, in the web vitals library and our tooling, I say I talk about dev tools there and showing it crux hopefully is coming in the docs and specs or whatever, let us know what if there's blockers that we can do, if there's additions to API that we can make that can potentially unblock you or whatever. No promises on any of this, but do let us know and if any of you have discovered any bugs or issues, let me know. 

42:46
Barry Pollard
Or if you do discover it, once you start to implement this, I'd be super interested with that. I will open it for questions, observations, discussion. That's brilliant, Barry. That's terrible. You completely forgot this thing. Let me know. 

43:12
Andy Davies
Andy. 

43:12
Barry Pollard
Come on. Here we go. 

43:14
Andy Davies
We shipped it the Embrace SDK uses it. 

43:17
Barry Pollard
Really? Yeah. Wow. 

43:22
Karlijn Lowik
It's. 

43:23
Andy Davies
It's. My view is it's better than instrumenting by hand. You know overall and overall we find it's worked well for the use cases we've looked at the moment. The, the challenge we've got is the gap I told you about before is you know, if a soft nav because we're always looking backwards, we're always observing events after they happened for every else. So just everywhere that context and the challenge we have is user initiates a soft nav. As part of the soft nav there's a fetch done to get some data that's needed to complete the soft nav and the navigation id it's lining up. Did that fetch belong to the new page coming in or the page going out? So there are challenges around there we're still trying to wrap our heads around, but overall we think it's a positive step forward. 

44:20
Barry Pollard
That's fantastic to hear. Personally, I've kind of almost given up navigation ID myself and using interaction id. Michael Go. 

44:30
Michal Mocny
Yeah, similar as you are aware, under the hood we create this thing called an interaction context which is deeply related to async context. There is Guohe who works for Microsoft is working on some related things for resource timing to understand what initiated a resource and in his like he's focused on resources that fetch other resources. But I think we will eventually want to extend to say if an interaction was the cause of a resource to get requested, it would get tagged. That's not there now but like the same mechanisms could eventually add that. So that would be cool. It would be very cool. So right now I think the way we would describe that is to say the resource was fetched in whatever is currently the active navigation and that led to a new navigation. 

45:22
Michal Mocny
So the navigation ID is what was on the page the moment the resource fetch happened, the moment the interaction happened, the moment the paint happened. But all of those things together lead to the navigation happening. So it's not like navigation ID tells you when did it happen? And then interaction ID is kind of what you could use to say why did it happen? So we'll get there but thanks for that feedback. It would, you know right now it's a performance API but we are even evaluating to say maybe all effects, all scheduling, all everything that happened because of interactions would be a cool web platform primitive. 

46:04
Karlijn Lowik
Right. 

46:04
Michal Mocny
Like there's transient user activation but it's kind of timestamp based. Now we have a way to say like here's all the work that happened because of this specific interaction. 

46:16
Barry Pollard
That would be extra cool. Cool. And Andy, just a cross browser issue. Are you faking it for the other ones and trying your best to put something together? Like you had that in the past a little bit then, yeah. 

46:27
Andy Davies
So in speaker for a long time we've got people to manually flag to us when there's a root change because even without the Chrome specific metrics that are solved now, were interested in marks and measures split up by route and we have an implementation that uses navigate success to split up pages in other browsers. It works. We're not sure we've got anybody using it in anger though. 

47:09
Barry Pollard
Anyone else with any feedback tools from the field? 

47:17
Sergey Chernyshev
Yeah, I actually have A question more than answer. 

47:20
Cliff Crocker
Do we have any. 

47:23
Sergey Chernyshev
Signal from framework people at all about like preferring this to their current instrumentations that they built in sometimes. 

47:36
Barry Pollard
So I think that's an interesting question. Like the frameworks haven't been involved as I would like in this. We've been reaching out to them. Nic posted a link that he'd never been to before earlier showing that Vercel are looking at adding this to next js. In a lot of cases they don't need to know this. They know when a root change has happened and they need to handle that they don't care about. The point of this is it's kind of a way of external code like a ROM library being able to observe this. So it's when people don't know and they either have to hook into the framework to do it or just observe it externally, which is this is. So I'm not sure how useful it is for frameworks. 

48:20
Barry Pollard
I think will be very interesting whenever we get the performance metrics out and we start publishing it in crux and they start arguing and bickering. CEOs fight online as to which is the fastest framework. But we'll deal with that whenever we get to it. But yeah, I think it may sound weird that an spa API isn't as. As of interest them but as say the use case here is basically the non framework use case of measuring spas rather than the frameworks they as I say, already know. 

48:50
Sergey Chernyshev
Yeah, I mean the one of the concerns is obviously the fact that they often biased towards what they track as start as you mentioned. 

48:59
Andy Davies
Right. 

48:59
Sergey Chernyshev
Like when do they track the beginning of the transaction and oftentimes they see URL change is the hook because of how it's integrated with APIs. Right. And oftentimes it is misleading as a result. And you know, but you're right, we will need to wait for bickering to start to hear the actual impact. 

49:21
Barry Pollard
Michael, I'm sure you have opinions here and you have your hand up. 

49:23
Michal Mocny
Yeah, I've been to various meetings so I would say like for frameworks providing APIs for developers, this is not useful because the whole goal there is a very careful coordination of routing and rendering and so you know, before you have hooks into rendering and routing. So like as you initiate a route change, you might play a role in what state changes or animations need to happen, how you carefully orchestrate or swap. We are observing after the fact. And then there's layers of buffering and idle callbacks. This is a performance observer. You would never Build a site using this, it would be. It's like the chicken before the egg sort of thing. 

50:05
Michal Mocny
On the other hand, when it comes to performance measurement, even platforms like Vercel, we met with these teams, you know, they don't only deploy NEXT JS products and so they are interested in a generic rum measurement solution that works with a range of techniques. You know, even developers adopting a technology like NEXT js, even though they have deep hooks, they want a one size fits all solution for measurement. So I do think it will be interesting and then of course for you know, cross framework comparisons and stuff like that. So I do think that the heat will pick up now that this has shipped. I think there hasn't been as much interest as were hoping. We'll see what happens. But you know, Rich Sherris was at Perf now last year, he was quite excited to see some of the demos. 

50:49
Michal Mocny
I met with React core team, they were quite excited with some of the demos. They want this for like lab based instrumentation. They do some of their own customized stuff. But the browser has like deeper insights. So when it works and when it overlaps it actually proves quite useful. But the frameworks often want to be, you know, in control of every possible flow. We talked about some of the limitations, but there are more. So I think it's a. I think both will be here to stay, I think, if that makes sense. 

51:17
Barry Pollard
I think the other one is interaction Connect for paint. I think once it does all paints, people could be a lot more interested in that. I think that's much has a lot of potential beyond soft navs that you could say, when is my components broken? You know, when's all the paints related to this interaction happening? Regardless whether it was soft nav or something. And again frameworks might pick up on that. But the minute we're concentrating on the soft nav side and Nic apologies, I see it was me that broke that by restoring your link to the problem. 

51:47
Nic Jansma
I just want to point out that it's Barry that's been gaslighting me because this was not linked and. And then if you see his change here has the Vercel link and that's where I copied it from. I was like, I've never been to this page before, I don't know. Now my version that I had put there earlier has the correct link in there. 

52:03
Barry Pollard
I think we collapsed or something, I don't know. Took a while, then it got broken. 

52:08
Nic Jansma
Anyway, apologies. It's all good. Obviously if anybody was talking more about that's fine. We we're not going to try to pack in the agentic realm stuff today, agentic browser stuff. So why don't we have the topic for September to talk about that. I think it was really valuable to talk through all this spa stuff today. Really appreciate Barry going through all that for us. There's so many caveats and angles to it that it's really helpful to have just a full discussion on it. So thank you Barry for all that. Any other thoughts before we wrap up today at all? 

52:47
Cliff Crocker
Good to be back. 

52:48
Nic Jansma
Yeah. 

52:49
Barry Pollard
Great meeting folks. 

52:50
Nic Jansma
Yeah, it was fun. We had 28 people at one point on the call. So thanks for everybody that's joined to see some new faces, some old friends and stuff too. So thanks everybody for joining. Let's meet again in September and we'll talk about agentic browsers and other things if anybody else as other topics. So thanks everybody. 

53:12
Barry Pollard
Cool. 

53:13
Andy Davies
See you soon. 

53:14
Karlijn Lowik
Bye bye. 

  Transcribed by https://fireflies.ai/