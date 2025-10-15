00:02
Barry Pollard
How we doing? 

00:04
Cliff Crocker
Okay, good. I was trying to throw some stuff on the slide for Rum but I don't have access to the sign up so I was asking Carolyn how many people had registered. Do you guys know? Is there like a sign up link somewhere? I know I should do this, but look at the cg. 

00:37
Nic Jansma
Robin. I'm going to make a quick copy of the ROM archive presentation to a public link since our version is only shareable within Akamai. Just so other people can. 

00:54
Karlijn Lowik
Hi. 

00:56
Nic Jansma
Hey. 

00:56
Barry Pollard
Hello. 

00:59
Cliff Crocker
You got a helper today. 

01:00
Karlijn Lowik
I got a very cute little helper today. Yeah. So Fridays are now my day off. So once every month she might pop up. So how's everyone? 

01:24
Cliff Crocker
Good Friday. 

01:26
Nic Jansma
Getting a little bit of a. From you Cliff? Possibly. 

01:31
Karlijn Lowik
Yeah, sorry, no, from. 

01:34
Nic Jansma
From Cliff. I think it was. 

01:38
Barry Pollard
Something's just really wrong with my mic. 

01:40
Cliff Crocker
These days and I can't figure it out. 

01:44
Barry Pollard
Welcome everybody. 

01:44
Nic Jansma
We'll get started in a few minutes. 

01:48
Barry Pollard
Hello, hello. 

01:50
Karlijn Lowik
Hi. Hi. 

01:52
Nic Jansma
Hey, hey. Hello. Good to see everybody. Hope you guys Friday so far is great and your weekend will be even greater. That is the hope. Let me get started at about three or four after the. I see our Fireflies helper has joined successfully this time without leaving a bunch. So hopefully it's working. 

02:45
Karlijn Lowik
Yeah, let's hope we're back with our transcriber powers and know who's talking this time and also not have to re update it while in a airplane lounge because that really, really doesn't work. You ever thought Internet can't be bad? Yes, absolutely. 

03:06
Nic Jansma
Or ux. 

03:15
Karlijn Lowik
Yeah, I think we probably we can start. 

03:19
Nic Jansma
Yeah, why don't we get started? All right, let me share some slides just to kick us off like normal. This is the October 10th edition of our friendly little group here. 

03:37
Barry Pollard
Welcome, welcome. 

03:38
Nic Jansma
Thanks everybody for joining. A couple things that we're going to be talking about today. We want to lead by talking about a face to face meetup at Perf now next month, tentatively called the Rum Real User Monitoring. Real User Meetup. 

03:54
Barry Pollard
I don't know. 

03:56
Nic Jansma
We have a moment to give to Barry to talk about some updates he wants to share from the Google side of things. And then we're going to have a discussion on the Rum Archive which I'm very excited about. Kind of share some updates with where that project is and continue to solicit some ideas for how others could potentially join. Will there beverages at Rum? I would hope there would be Rum beverages at Rum but I will not be there so I cannot help with that. 

04:28
Karlijn Lowik
Whether there Will be rum at the Rum. Rum. That's the question. But I say we go for Bitterball and yeah, we go for Bitterball and Rum afterwards. 

04:37
Karlijn Lowik
Otherwise. 

04:40
Nic Jansma
I'm jealous. I already have the fomo. I will not be there. We will talk about that in a moment. But I'm very excited that you all are getting together. Standard slide of logistics with all the links that you would need to participate at all next meeting. So we are going to skip November. November I think what day would be 14th or such is right around TPAC for those folks that participate in the other side of things for. So the web performance working group will be in Japan next or next month in November. We thought about moving the date around a little bit after that but then we start getting into other holiday things. So we're going to tentatively aim for a December meeting. Skip November entirely. Aim for December. You know that we'll see what kind of topics we have as well. 

05:30
Nic Jansma
It is again still kind of mid holiday and other craziness. So we'll see if folks have appetite to me then. But I will send out a cancel for the November date and we'll aim for December instead. We continue to work through the topics backlog. I haven't updated this little screenshot in the bottom in a little while but we keep on making progress on the proposals and the topics there. Again, if anybody wants to share a thing that they want to talk about, whether you lead the conversation, whether you want to just propose the idea and have other people talk about it, you can vote with thumbs up. Thumbs up in there. And we try to take a look at that and use that list as a lightweight of lightweight way of guiding what we talk about in the future. 

06:15
Nic Jansma
If you have any ideas, you can always reach out to the chairs and we are happy to discuss. And with that let me hand it over to Caroline or Cliff or whoever else wants to chat about. Room, room. 

06:31
Cliff Crocker
It doesn't look like it's taking my face here. Can you refresh? 

06:38
Nic Jansma
No, this is all that we get. We get and then there we go. 

06:42
Barry Pollard
Okay, there we go. 

06:45
Cliff Crocker
Okay, Go ahead, Caroline. I don't know if you want to take it. My mic's apparently acting up but I just. 

06:52
Karlijn Lowik
Yeah, I'll take it. Yeah. So the last time we discussed were thinking about doing a rom. It then became a rum ram and I think there's talk about becoming a rum ram. But aside from us basically making a song, it felt good to have a bit of a face to face meeting. We see each Other online all the time. But it's not quite the same as seeing each other in real life and having conversations in real life. Thus the start of the WRM room. It's at Google Amsterdam. And I think sign ups are actually looking really good. I think I'm around 60 right now. I can go to max 70. So if you haven't signed up yet, please do so. 

07:37
Karlijn Lowik
If you're hesitant, if you can make it or you're actually sure you can't make it, I think cancel now if you think other people might want your place. The idea is quite an informal, well, mixer, if you will. If we're gonna stick with rum, we wanted to do a quick discussion on what we did, what we accomplished the last year. Also talk about challenges and things we want to discuss the upcoming year. We've now had about 11 of these meetings. How did we all find it? 

08:15
Karlijn Lowik
Was it useful? 

08:16
Karlijn Lowik
Any things we could do to improve things you would actually like to discuss in the upcoming year? See if we can get more people to join because we also opened it up aside from just this round to other people. And I think about 15 to 20 are probably not part of this group yet. So it would be nice if we could get more people to join. Of course. Yeah. So that's basically the idea that we had. Although if you guys have any other suggestions, please tell me or reach out. 

08:56
Karlijn Lowik
To me personally if you have doubts about doing it in public. 

09:03
Nic Jansma
Very, very exciting. 

09:06
Karlijn Lowik
Yeah, Barry. 

09:07
Barry Pollard
Yeah, if I can jump on the bandwagon. Just before that. 

09:10
Barry Pollard
The DevTools team are running a couple of sessions, one on MCP and one on site. Wide performance measurements. 

09:17
Barry Pollard
So it'll be in the same place with a small lunch break in between. 

09:22
Barry Pollard
It's a much smaller group so it won't be able to take the full 70 people. But we have about 12 spaces or 15 spaces in the Gap. We've still got about three or four spots left. 

09:33
Barry Pollard
So if anyone wants is going to. 

09:34
Barry Pollard
The Rum meeting and wants to do a Rum rum with another hour or two beforehand, then I forgot to put a slide but we can share the link afterwards or it's on the slack. 

09:45
Karlijn Lowik
Yeah, yeah, do so I think by the way, Barry, about 10 people joined. After you send out the email, I'll send details to them as well. Oh yes, if they want to join. Yeah. And from performance now perspective, I think they are now currently at about 5. Saw the attendees list about 220 people. That means that they still have about. 

10:12
Karlijn Lowik
100 people that could still join. 

10:15
Karlijn Lowik
So I'd say maybe we could publicize it a bit more. See if we can get more people. 

10:21
Karlijn Lowik
To show up in Amsterdam next month. But that's just me doing this shout out nobody asked me to. 

10:30
Karlijn Lowik
Also this is my little girl, her name is Hannah. 

10:33
Karlijn Lowik
We work together today. 

10:36
Barry Pollard
By the way, there is more than the 220 that's on that website moment. 

10:39
Barry Pollard
I'm speaking to PPK. There's about 10 or 20% of people who don't choose not to make themselves public. So 260 is the last I heard on that. So. 

10:49
Karlijn Lowik
Oh, we're getting there. 

10:50
Karlijn Lowik
That's good news. It's always last minute people of course, but still. 

10:55
Karlijn Lowik
Yeah, yeah. And the sad news is that Nick can't make it. 

11:03
Nic Jansma
Yeah, I'm very sad. One thing also to add on a little bit because you were talking about kind of a recap of Realm CG over the last year and planning for the future. So two weeks later, as I alluded to, there is the W3C TBAC event. That's where all the other working groups will get together. 

11:21
Barry Pollard
Maybe. 

11:21
Nic Jansma
I don't know. Barry, are you going to that? I don't know if anybody else on this call will be okay going tpac I we do plan on having a short session at TPAC in the web perf room. We have like three days of like six hours worth of sessions. My the session that I propose for us is to talk about the Rum CG at webperf WG because you know they don't. There's. There's a few overlaps here obviously but not a lot. I want kind of wanted to give the web per working group an update of what this group has been doing over the last year, our goals etc. So hoping to kind of promote this group back to that group as well. So just as a heads up for that. 

12:01
Karlijn Lowik
Yeah I think it might be actually a good idea if we recap it a bit. Put it on the slack as well and you can share it. And Barry is obviously there in real. 

12:10
Karlijn Lowik
Life so he can get more insights as well. 

12:14
Karlijn Lowik
But I think more people are feeling. 

12:16
Karlijn Lowik
The fomo so it would be good to have a small recap of our real life meeting. 

12:21
Karlijn Lowik
And if it's going to get very serious for one reason or another and serious things are. 

12:26
Karlijn Lowik
Discussed, we'll make sure to put that on paper as well. 

12:30
Nic Jansma
Absolutely. Great idea. Okay, I'm going to hand it over to Barry for a couple updates with his bytes. 

12:43
Barry Pollard
My mic. Stop working there. 

12:45
Barry Pollard
Yeah. A reminder of this is that we at Google used to regularly meet with. 

12:48
Barry Pollard
A few of the Run providers and give updates on things that we thought might be of interest to so we kind of continued this on into here. 

12:56
Barry Pollard
I don't have any massive announcements here. 

12:58
Barry Pollard
So there's no secrets to Google search out algorithm coming out this month, maybe. 

13:03
Barry Pollard
Next month, but I gathered a collection of things I thought were interesting that. 

13:08
Barry Pollard
Either directly affect ROM or might affect some of the things that you guys are working on. 

13:13
Barry Pollard
So it's a big long bullet point. 

13:15
Barry Pollard
List here that I'm going to run through. 

13:16
Barry Pollard
So stuff that's out there already. Lighthouse V3, which obviously is a lab. 

13:20
Barry Pollard
Tool and not run based, but I. 

13:22
Barry Pollard
Know a lot of you have a. 

13:23
Barry Pollard
Lab component to your rum services and a lot of you use lighthouse. 

13:27
Barry Pollard
So that's V13 just released today. If and when you upgrade to that. 

13:32
Barry Pollard
It will drop a lot of the old audits. We move to combined Insights, the same ones that are in the performance panel. So that's a breaking change. You will suddenly lose old audits that you didn't have access to. 

13:44
Barry Pollard
The Insights became the default in v12. 

13:48
Barry Pollard
So you may have already dealt with this or maybe you're on V11 or maybe you switch back whatever, but that's something to be aware of. There's blog posts I've just announced that I've linked to there. There's also lots of new documentation on the Insights, so if you link to it from your own docs, then feel free to update those links to the new Insights audits rather than the old audits and stuff like that and reach out if you've got any questions on that. And thanks very much by the way to lots and lots of feedback. We've heard from lots and lots of people, some of them are on this call and loads of people outside to get those Insights and Shipship. 

14:23
Barry Pollard
Next thing is that this little small thing that I think is actually really cool and could be interesting and could help performance. As far as I know it's not measurable in rum, so that's a bit annoying. But there's this proposal which actually came out in the speculation rules called no. 

14:37
Barry Pollard
Very search where you can say on a response hey, these URL params don't matter. So if you have UTM params or gclid params as some of the ad stuff uses or anything else that's only used client side, that means that the document you get back is still the exact same. Some params obviously matter if you've got a logged in state or this that or the other or you're choosing the number of items to show or whatever. And obviously the page will be different each depending what primary set. But there's a lot of problems that are not changing. As I say, they're often used for tracking or advertising or whatever. So the UTM ones used by Google Analytics and other analytics providers is classic one. 

15:16
Barry Pollard
If you ask for that quite often. 

15:18
Barry Pollard
You'Ll go all the way back to the origin server. Some CDNs allow you to say hey, these parameters don't matter, just start the same thing from the cache. 

15:26
Barry Pollard
Basically what this change does is it. 

15:28
Barry Pollard
Allows the browser Google Chrome only at the moment to say yeah, that's the same thing. If you've got so if you click on an ad and you went to cliffcroker.com's? Utm equals my amazing discount and then you clicked around the site and then you click the logo to go back to the homepage it would request that page whereas now it won't need to because if you've got this parameter on it saying UTM params don't matter. 

15:52
Barry Pollard
So it's quite a nice way of. 

15:53
Barry Pollard
Getting extra caching use. 

15:55
Barry Pollard
If you do see widespread use of. 

15:57
Barry Pollard
This or speak to your clients and. 

15:58
Barry Pollard
Suggest it again, it's Chrome only at the moment. 

16:01
Barry Pollard
It would be nice to see if CDNs adopted this or whatever. 

16:04
Barry Pollard
I think this is one to keep. 

16:05
Barry Pollard
An eye on because it could up cache usage quite a bit if that does become widely used and available. 

16:13
Barry Pollard
Second one is another HTTP header. So there was a non standard purpose. 

16:17
Barry Pollard
Header that we used to say prefetched or whatever. I think it was a couple of different things. 

16:22
Barry Pollard
We have dropped that was replaced a long time ago with set purpose. 

16:25
Barry Pollard
But we not everyone we used I think the link rel prefix didn't use. 

16:30
Barry Pollard
It for a while so six months or a year ago we updated that. 

16:34
Barry Pollard
To include set purpose. 

16:35
Barry Pollard
We've now retired it. So if any of your realm solutions are looking at the purpose header, you're not going to get it anymore, at least from Chrome. And I think Chrome is the only. 

16:43
Barry Pollard
Browser to support this non standard header. So make sure you're looking at set purpose rather than purpose. A lot of you I know look at both or whatever. 

16:52
Barry Pollard
That's one that again might slip through your radar. We have some speculation roles, eagerness changes, particularly on mobile. 

17:00
Barry Pollard
So on moderate you can hover which speculates pages that hover doesn't exist on mobile. So we now introduced a viewport based heuristic. 

17:11
Barry Pollard
So as you're flicking up on mobile. 

17:14
Barry Pollard
There'S all sorts of heuristics and it needs to be near the center of the screen or it needs to stop scrolling. So for X number of milliseconds and that sort of thing, there's lots of details in that doc that's linked to. 

17:25
Barry Pollard
From this deck, but you may notice a lot more pre render or pre fetch options for mobile. 

17:31
Barry Pollard
I've seen some people sharing their run stats on this and going up so that's one again to be aware of. 

17:36
Barry Pollard
You don't need to do anything about. 

17:37
Barry Pollard
This assuming you support speculation rules already. But just if you notice an increase in prefecture pre render navigations that could be why particularly on mobile. 

17:46
Barry Pollard
There's some more changes happening on desktop. 

17:48
Barry Pollard
There but that's and also mobile but that's the major one that's coming. 

17:53
Barry Pollard
Some other changes. The Crux dashboard which again I know. 

17:58
Barry Pollard
Some of you used compared to ROM is being deprecated. 

18:01
Barry Pollard
So this Tuesday will be in the October Crux release and that'll be the. 

18:05
Barry Pollard
Last time we're updating that. 

18:06
Barry Pollard
It'll still be available. 

18:07
Barry Pollard
We're just taking away the old infrastructure. 

18:10
Barry Pollard
That will actually won't be available now. 

18:13
Barry Pollard
I think about it because you won't be able to collect even the old months from that once we turn down that thing again. 

18:19
Barry Pollard
There's a blog post there on alternatives. 

18:22
Barry Pollard
We've got Cruxways, lots of other people in the community, we've got other tools including people on this call. 

18:27
Barry Pollard
You can also if you really. 

18:29
Barry Pollard
Really want to switch this over to. 

18:32
Barry Pollard
Using your own BigQuery connector that is charged. There's a free limit of one gig. 

18:38
Barry Pollard
Or whatever which is more than enough to get. I think I calculated about 80 dashboard views but if you start sharing it and things like that then it gets messy. My advice is don't. So that's really a I really want to do this and I don't care what it costs to keep it then fair enough, there's an option but I would move to other tools I. 

18:55
Barry Pollard
Think like this is based on the. 

18:57
Barry Pollard
BigQuery data set which is very slow to get and at least to crash and all the kind and that sort of thing. 

19:04
Barry Pollard
We have an ongoing soft navigations experiment going at the minute. 

19:08
Barry Pollard
I'd be super interested to hear if anyone's working on that or looked at it. 

19:13
Barry Pollard
I think it could be a big. 

19:14
Barry Pollard
Thing so I would encourage ROM providers to it. 

19:16
Barry Pollard
I know a lot of you in. 

19:17
Barry Pollard
The past have expressed interest, but I haven't heard of many of you actually Playing with it. So that's my plea for you all now is start playing with it. 

19:25
Barry Pollard
Nick, tell me you've integrated it in Akamai already and it's great and nice. 

19:30
Nic Jansma
I had a question about it really quick. It looks like the old origin trial token that were using in Boomerang for soft navs from like 2 years ago seems to be working now again with the latest trial. I thought they always had like a date expiry on them, but it seems to work. I don't know. Would that be true? 

19:50
Barry Pollard
Like it seems someone else, Steve Smart. 

19:53
Barry Pollard
I think raised this. 

19:54
Barry Pollard
And did you look into it? 

19:55
Barry Pollard
If I remember right, you still own. 

19:57
Michal Mocny
Michael Yeah, I'm on. I don't know how the token works. I also thought that it had an expiry built in. I also have heard reports that it does work. It is the same feature flag. 

20:09
Nic Jansma
Yeah. 

20:09
Michal Mocny
And it is the same chrome feature. And this is kind of an extension of the original origin trial but. And there was also like an initial mix up way before the first feature launch. So there were a few weeks there where it was misconfigured and then it was reconfigured. But I would have expected it to stop working. I don't know if it's infrastructure, if it's something I did, but anyway, okay. 

20:33
Nic Jansma
We saw a report from a customer where it seemed to be working again and were like wait, why is this working right now? So we'll take a look into it. 

20:39
Barry Pollard
A little bit more. 

20:41
Nic Jansma
So we may be inadvertently doing this trial again still with our older code and we'll. 

20:47
Barry Pollard
If you are going to vertically look at this, then I would suggest getting. 

20:53
Barry Pollard
A new token because I think it. I'm not convinced that it's not working by accident and it might not stop working, if you know what I mean, because it wasn't intentional to use the same token. But yeah, not the first notice. Carlin. 

21:07
Karlijn Lowik
Yeah, I think we're gonna probably ship around Perth now just before, just after. Erin's looking into it right now. Only event season is really crazy and we have a lot of other things in our backlog, but it's gonna go with a big release of going to Web Vitals 5, adding top navigations and stuff. So you might be hearing from him. 

21:32
Karlijn Lowik
Around Perf now with questions. 

21:35
Barry Pollard
Very interesting. 

21:37
Barry Pollard
As I say, this is how we're. 

21:39
Barry Pollard
Recommending and where we're going to recommend hopefully in the future. Assuming that all those banging and, you know, no guarantees of shipping that the usual sort of caveats in terms of condition supply. 

21:49
Barry Pollard
But now is your chance to go. 

21:50
Barry Pollard
In there and look at it and say, this is fantastic. Ship it now, hurry up. Which makes it easier for us to ship or this is awful, it will not work. You need to go back to the drawing board and do it. Or most likely somewhere in between those. 

22:03
Barry Pollard
But yeah, this is the opportunity for. 

22:05
Barry Pollard
You all to speak to it and say this works or not for you. And let us change it. Because once we ship it's very difficult to change it after the fact when people start depending on this. 

22:16
Karlijn Lowik
Yeah, yeah, well, we'll let you know. I mean, you could tend to hear from us around the time we start to ship origin trials. So just for your information. 

22:28
Barry Pollard
Cool. 

22:29
Barry Pollard
And yeah, if any of you want. 

22:31
Barry Pollard
To speak to Michael or myself, feel free. We are cytic people desperate for validation and feedback, so feel free to reach out that invite. 

22:42
Barry Pollard
Moving on, my big list of things Michael's also been working on. One of the problems we have is if you do, particularly on input, if you have a modal, for example, and you click ok, the modal vanishes, imp. 

22:56
Barry Pollard
Gets reported a few milliseconds or seconds. 

22:59
Barry Pollard
Later and says that the target, the. 

23:01
Barry Pollard
Element that caused this imp, the button was null. 

23:06
Barry Pollard
Because it's gone from the dom, you can't report it. 

23:08
Barry Pollard
We've tried a few workarounds in Web Vitals where we try and grab it at the time and all that, but quite often, like in that modal example, it's just gone by the time the event timing bit reports. So you've got no idea what button click actually caused slow imp. 

23:24
Barry Pollard
So what we're planning is adding a very simple selector. 

23:27
Barry Pollard
It won't be as complicated as the one Web Titles JS or that you might use in your own run product. 

23:31
Barry Pollard
But it'll be if you've got an id. Is that the limit of it? 

23:36
Barry Pollard
I can't remember off the top of. 

23:37
Barry Pollard
My head, Michael, is it just the. 

23:38
Barry Pollard
ID or was it more? 

23:41
Michal Mocny
It's more. It's the format that Loaf Invoker script uses. So it'll be tag, name id and if there's no ID on an image, it'll provide the source URL of the image. 

23:57
Barry Pollard
So that will be taken at the. 

23:59
Barry Pollard
Time that the click happens and then when it worked a couple of seconds later. We still advise to get the nicer selector if you can, later if you assuming you're doing a similar thing to Web Vital js. But at least you've got a fallback now of something to give to users so that's I think shipping was coded anyways, but available behind the back. But I think we're tending to ship that very soon. 

24:21
Philip Tellis
Hi Michael, you mentioned it would have the URL as a fallback. Is there a way to know whether it's providing the URL versus an ID or some other identifier? 

24:34
Michal Mocny
Yeah, I think just to save time and strings if there is an id. Basically I replicated exactly what Loaf does In order to have it as consistent as possible after landing, we could choose to change it to. For example, always have more data in the query selector. But it's a valid query selector if there's a tag name and an ID that should be unique enough to find the element on the page. And so you shouldn't need the source, but the source helps you disambiguate if all you have is image. 

25:06
Philip Tellis
If it's a source, it'll be something like image square bracket src is equal to correct. 

25:10
Michal Mocny
Yeah, it'll look like image src equals quote. 

25:16
Nic Jansma
Got it. Like that. 

25:17
Robin Marx
Thanks. 

25:18
Michal Mocny
Yeah, no worries. 

25:22
Barry Pollard
Yeah. And if I understand correctly, when this ships, we wouldn't need to do anything additional to have this working. It will just work out of the box, right? 

25:34
Barry Pollard
No. So the minute we get a target element and we certainly web vitals js. 

25:39
Barry Pollard
We use that to create a selector text. This is an additional field called targets or remind me, Michael, target identifier. So it's a new field. So yes, you will need to do a change to actually read that field. Okay, cool, thank you. 

25:56
Barry Pollard
And yeah, actually that reminds me, I. 

25:58
Barry Pollard
Need to update with vitals JS to fall back to that as well. And yes, if you like a better name, let us know. 

26:06
Barry Pollard
And also like, I think this. 

26:08
Barry Pollard
Is especially useful for imp because I say that modal example, you click it and something goes or a menu, you click and it goes away. It would also be useful for lcp, even cls. So hopefully in the longer term future we can go out to those as well. 

26:25
Barry Pollard
Okay, I'll let you back share it there while I continue on. Another interesting one that I noticed was. 

26:32
Barry Pollard
There'S a CPU performance API. So we have a network performance API. We used to have those in 4G, 3G, 2G, slow 2G and offline. And this is kind of a similar thing but for cpu. So I can't remember what the categories are. High end, low end, terrible or something like that. So it allows you to get a broad category. The biggest concern with this is security, that we don't want to sit there and say Philip is running a Mac 123 with serial number 456 because that would be a fingerprinting effort so they will be very broad categories. It will say something like this is a high end machine or a low end machine and so on. 

27:10
Barry Pollard
Stuff like that was literally just sent out an intent prototype which means it will be available soon in Chrome if it's not already behind the developer flag to play with. But you can then grab it and run and then categorize by event and say hey, IMP is slow on slow devices. Who'd have thought? But it's a good way of knowing and segmenting and understanding your traffic and oh, all my core vitals went dying. Why? Oh, I had a bigger increase in the window devices that month because of whatever reason. 

27:39
Philip Tellis
Is the definition of high end and low end change over time. 

27:43
Barry Pollard
There was something to be honest, I haven't read through the thing fully, but there is something in the thing saying. 

27:48
Barry Pollard
That one of the goals of this is to make it future proof and not do like we've done with the network one where 4G knows 99% and absolutely useless. I didn't get as far as reading to see how they're future proofing it, but it was certainly something we've been thinking about in the future. So have a read of that link and I will finish reading it myself, but I thought it would definitely interest you. So even though I don't know the full details, I thought it was highlighting. 

28:16
Nic Jansma
To you. 

28:20
Barry Pollard
Some other things from the Google world that you might be interested. We released DevTools MCP server I think. 

28:28
Barry Pollard
I've spoken to a few of you. 

28:29
Barry Pollard
About before useful for debugging performance. 

28:32
Barry Pollard
Stuff, particularly if you're doing while you're deving I know some of us are massive AI cynics and some of us are all in on AI. If you're one of the latter, have. 

28:41
Nic Jansma
A look at that. 

28:41
Barry Pollard
We'll get a lot of good feedback and people find it useful, but you can basically say something like do a trace on this page that I'm developing or give me the LCP for this page or give me the crux LCP for this or so on. So yeah, that's worth late night and bit of trivia. 

28:57
Barry Pollard
Adi Asmani who published a post on. 

28:59
Barry Pollard
Core web vitals history which I hadn't seen before he published it. 

29:03
Barry Pollard
Lots of good details in there and. 

29:04
Barry Pollard
Interesting stuff that someone this group might be interested in. 

29:07
Barry Pollard
So that's all I got from Chrome. I'm going on my remit on this next slide. 

29:12
Barry Pollard
If Someone can go forward. 

29:14
Barry Pollard
I'm talking about non Google News that I probably shouldn't really talk about, so. 

29:17
Barry Pollard
Keep this to yourself. 

29:18
Barry Pollard
But other things that I've noticed of interest is Safari Tech Preview has now supports INP behind a flag, so you. 

29:26
Barry Pollard
Have to go down to developer flags and turn on event timing and stuff like that. But it's very exciting. 

29:31
Barry Pollard
I personally noticed that it was very slow in one of our demo sites that we use. Michael dug into it and figures out. 

29:38
Barry Pollard
He thinks he knows the reason why. 

29:39
Barry Pollard
Raised above WebKit we've got a PR. 

29:41
Barry Pollard
Open to do that. They're basically waiting for the key up after a key down rather than measuring it immediately. 

29:48
Barry Pollard
So it is a little slow for typing, but other than that seems to work well. 

29:53
Barry Pollard
You might want to play with it and see what you see. 

29:55
Barry Pollard
Or you might notice that suddenly getting IMP for Safari it will only be. 

30:01
Barry Pollard
In Tech Preview and only for people who turned on the flag. So I wouldn't expect large volumes of this yet, but you might suddenly notice a few eager people checking this in your room and it might be worth checking that everything's working on your site that it feeds through. 

30:13
Barry Pollard
That's very exciting. We've also seen lots of questions from. 

30:20
Barry Pollard
Them on lcp, so we're assuming that's coming soon. And as a reminder, Firefox already has LCP and also has event timing behind the flag. 

30:28
Barry Pollard
So Crossprizer Core Web Vitals coming very soon for at least two. 

30:32
Barry Pollard
So we're very excited about Alan? 

30:35
Karlijn Lowik
Yeah, I was just wondering, I think you mentioned that there were a lot of definition questions from WebKit about LCP. 

30:42
Karlijn Lowik
And I was wondering what kind of are you running against or running up to that needed better definition. 

30:49
Barry Pollard
It's mostly sort of edge cases, I'll be honest and I'll let Michael chime. 

30:54
Barry Pollard
In here if he disagrees. 

30:55
Barry Pollard
So things like an element is off screen and then it's animated on screen. 

30:58
Barry Pollard
Should that client is LCP or not? 

31:00
Barry Pollard
And lots of those. We've had people raising it anyway or. 

31:03
Barry Pollard
People are surprised that it is LCP or isn't lcp. 

31:06
Barry Pollard
LCP is a heuristic and it's not. 

31:08
Barry Pollard
Perfect by any means, but it's pretty good for the vast majority of cases. So there has always been weirdness like that. 

31:15
Barry Pollard
Or you have six images all the. 

31:18
Barry Pollard
Exact same size and you expect the first one to be LCP because it was drawn first, but the third one is two pixels more for some weird rendering reason. So suddenly it shows and you're confused why and that sort of thing. 

31:28
Barry Pollard
So I think it's mostly things like. 

31:30
Barry Pollard
Those where what should this be and all that. I think for the vast majority cases they're not, you know, they're not disagreeing with the definition or the metric or anything. They're just like, hey, how do we handle this sort of weird case and what do you do? 

31:42
Barry Pollard
And particularly they've noticed Chrome does it. 

31:44
Barry Pollard
This way, Fireworks does it that way. 

31:46
Barry Pollard
Or both of them do it this. 

31:47
Barry Pollard
Way, but the spec says they should actually do it this other way. So it's annoying things like that. And as I say, in the vast majority it's weird edge cases, stuff that may or may not register as LCP anyway rather than big breaking issues. 

32:02
Barry Pollard
Michael, is that fair or have you got anything to add to that? 

32:05
Michal Mocny
That was just a question about general feedback from other implementers on the specs. Yeah, I missed the question. Yeah, I think that's right. I think the biggest issues I personally have seen is that Mozilla Originally, now WebKit folks were trying to implement the literal spec as specified, which was not always meant to be taken literally because it can get complicated. And so we are trying to improve the spec were necessary to clarify that. But it's kind of hard to go sometimes from spec text to thing and so there were sometimes errors in that sense where they were like overly reporting literally. What? Yeah, so anyway, other than that, I do think it's mostly clarifications and stuff like that. Everything else is pretty good, which is. 

32:54
Barry Pollard
Not unfair for Spectrum. 

32:55
Robin Marx
It'll do. 

32:56
Barry Pollard
So I think we'll. The whole point of getting that we're getting other browser vendors is we spot this sort of thing. So this isn't unusual and I think the spec and maybe even bronze implementation will come out the better for this. 

33:11
Barry Pollard
But yeah, no major blockers as far. 

33:13
Barry Pollard
As I know and looking forward to seeing that in the future. Safari Tech Preview Personally I don't think. 

33:18
Barry Pollard
They'Ll get it out for this year. 

33:19
Barry Pollard
Interop doesn't always say they'll get it out by this year, but usually for the measurement purposes we at least want it in their dev one, whether it's Chrome, Canary, Spirit Preview or Firefox. 

33:34
Michal Mocny
Can I just add. So I haven't thoroughly tested other implementers versions of Paint timing carefully but in the past I have and the biggest differences are like in Chromium, what we consider paint and the various stages of rendering for different things doesn't always match just how some other implementers work. And so as a specific example, there was an issue with WebKit FCP where when an image was downloading they would try to first paint the image. That first attempted paint was considered contentful. So then the first contentful paint was fired, even if they had to finish downloading the image, finish decoding the image and then render it. And it might have been a long, long time before you actually see pixels. So if you looked at a film strip you would see FCP marked and then you'd see the image far into the future. 

34:27
Michal Mocny
I am invalidated if the way they do the LCP element timing will have those same issues or not or if they fixed it. So I would look at specific film strips, look at the timings they provide. So you might get an entry with an element and a timing and it looks reasonable and it's comparable. But if you look at a film strip, is it actually accurate? Hopefully they're doing that type of testing and you shouldn't need to, but that's what I would be careful with. 

34:53
Barry Pollard
This is Michael making excuses for why we're going to look slower than Safari in the future, but it's not measuring the scene but exciting times. 

35:03
Barry Pollard
Moving on. Another thing staying in the safari world. 

35:06
Barry Pollard
Is your advice who I can't see if he's on here or not, but he got speculation rules merging so webkit which I'm personally very excited about again not particularly definitely related to rum but you might see in future prefetches is prefetch only at the moment and you was careful to point out there's lots more work to be done this and it's again not even in Tech Preview yet but it's exciting times the future there. 

35:33
Barry Pollard
And Andrew who I saw on earlier. 

35:35
Barry Pollard
From Mozilla says they're working way out of so hopefully that'll uncross prizer as well at some point. 

35:42
Barry Pollard
And then the last little one is for those of you debugging again moving. 

35:45
Barry Pollard
Away more from the rum side but. 

35:47
Barry Pollard
If rum spots something you have to. 

35:49
Barry Pollard
Debug a react site. There's now lots of nice details in DevTools Performance Panel. There's docs I've linked there and there's. 

35:57
Barry Pollard
Also they gave the talk about it. 

35:58
Barry Pollard
In their summit whatever you called it yesterday. So that's quite a nice way of debugging react sites for those of you that have to do it and that's. 

36:07
Barry Pollard
All I got for this month. So a big collection of randomness but. 

36:10
Barry Pollard
Hopefully that was useful. 

36:12
Nic Jansma
Good roundup of updates. Thank you Barry for going over all that. Appreciate it. Okay, let's Jump into the room. Archive wanted to take the time to talk a little bit about the project and where it's been. We do have Robin here as well, Philip here. All three of us, along with Tim and others at Akamai, have been working on this project for a few years now. Want to give some updates, where it is, where we want it to go. As always, our call for participation. If we can see if we get other people to join. I'm going to hand it over to Robin. Robin, do you want me to. Do you want to run the slides or do you want me to. 

36:50
Robin Marx
I'll run the slides. 

36:51
Barry Pollard
Please. 

36:51
Nic Jansma
I will stop sharing. 

37:04
Robin Marx
There we go. 

37:05
Robin Marx
That should be fine, right? 

37:06
Nic Jansma
Looking good. Good. 

37:09
Robin Marx
So did short update on the RUM archive. I assume most of you know what it is, but we added a couple. 

37:15
Robin Marx
Of interesting new things lately. Even so, good to go over that again. So it is a public data set, open source of anonymized RUM measurements. Okay. Anonymized is of course very key there. What we basically do is we take rum beacons from Mpulse, which is the Akamai Rum product that we have on. 

37:39
Robin Marx
A per daily basis. 

37:40
Robin Marx
We take the rum beacons of our. 

37:41
Robin Marx
Top 100 customers who have the most beacons. 

37:44
Robin Marx
So that can even change per day which sites are included in that. We then fully anonymize the data. Of course, we don't include anything that could be. Could lead to individual users that can be identified. 

37:56
Robin Marx
And then we even aggregate it further. 

37:58
Robin Marx
So that we have one row containing multiple different measurements and giving you access to things like histograms to both make it easier to use the data and to further anonymize it there as well. We also do things like we filter out rows that would have less than five page loads in them. 

38:18
Robin Marx
So if there are less than five. 

38:19
Robin Marx
Instances of a specific combination that happened, those are not in the realm. 

38:23
Robin Marx
Archive. 

38:24
Robin Marx
Again, to reduce potential trackability, this means. 

38:28
Robin Marx
We lose a couple of potential outliers. 

38:30
Robin Marx
We drop a little bit of data, but it's still plenty useful. 

38:34
Robin Marx
Of course, what is in there? For a long time we had two separate data sets. One is the page loads that I just talked about. But then the other thing we track. 

38:44
Robin Marx
Is also all of third party resources that we see on the page. Think about things like Google Tag Manager or. Or God forbid, jQuery, if you're loading that from a third party, those things are being tracked as well. 

38:58
Robin Marx
You can see we have a ton. 

38:59
Robin Marx
Of different information on all of these. A ton of different metrics, obviously, and. 

39:05
Robin Marx
That'S crucial stuff that you can only. 

39:07
Robin Marx
Get from real run data. Things like which devices are actually being used, which browsers are being used by the real public, and a couple of metrics like rage clicks that you can only get from actual user interactions. 

39:23
Robin Marx
So that was for a long time we had those two data sets. Now very recently, last month we added. 

39:29
Robin Marx
Another type of data set which includes data on individual sites. 

39:35
Robin Marx
So what happened there was we have two Akamai employees, Nick who is here, and then also Tim Verique with Scalemates. They basically said we are comfortable open sourcing the full rum data for our personal projects. We have three sites currently where the data is not aggregated, it's not filtered. 

39:58
Robin Marx
It'S just a raw rum beacons that. 

39:59
Robin Marx
We see coming into impulse, of course. 

40:03
Robin Marx
Transformed into the Rum Archive data format. But other than that, it's a full RUM data that you can get from that. 

40:12
Robin Marx
I think that's very interesting because we are very well aware that there's a. 

40:17
Robin Marx
Lot of bias in the current Rum Archive data set. 

40:21
Barry Pollard
Okay. 

40:21
Robin Marx
It's coming mostly from top Akamai customers. Those are apparently very heavily focused on Mobile and iOS. 

40:31
Robin Marx
If you start looking at the data, as you can see here on the left as well. 

40:34
Robin Marx
While of course for individual sites that's going to be different. Okay. On the right, the globetrotting website. Yes, that's. 

40:40
Robin Marx
That's going to have a lot of mobile as well. But then you can see in the middle, Scalemates obviously has a lot more desktop and even tablet traffic there as well. Right. 

40:51
Robin Marx
So a lot of the details or. 

40:53
Robin Marx
The outliers that you maybe miss in the aggregated bigger rum archive, you can kind of get back by looking at individual sites and counter some of the biases that are in there. Right. So that's why we started releasing this type of data as well. 

41:13
Robin Marx
So what we currently have is really. 

41:14
Robin Marx
Quite an impressive data set. We have data going back all the way to 2021 already and we even back filled the data for almost two years for the personal data, for the personal sites there as well. 

41:28
Robin Marx
And we keep on adding these. 

41:29
Robin Marx
We add new data on daily basis, I think internally. And then we release some of that monthly to the. 

41:38
Nic Jansma
It's actually all daily now. So that. 

41:40
Robin Marx
Oh, there we go. 

41:41
Nic Jansma
That last bullet point is. Is old. We do daily uploads for everything at this point. So the page load data, the resource timing data and the individual website data is uploaded every day. 

41:51
Robin Marx
That's what I thought, but slide set monthly. So I just tried to play it safe. Okay, so that's what it is. Why did we start doing this in the first place? Because we saw like a gap in the community there. It's not supposed to be a competition with other data sets, but more complementary to them. I think we all love things like. 

42:15
Robin Marx
HTTP archive of course, but that is synthetic data. Well, here we have real users, we. 

42:21
Robin Marx
Have things like Crux which are incredibly useful, but at least for now that is single engine. 

42:27
Robin Marx
While with this we can look at multiple different browsers and then you have. 

42:31
Robin Marx
Some data sets that look at a. 

42:32
Robin Marx
Single site or a single use case. But then we want to of course make that a bit broader to multiple sites there as well. 

42:42
Robin Marx
How you access the data is very similar again to the HTTP archive. It's really just in Google BigQuery and you can just write Google BigQuery SQL. We have a couple of functions that we provide to make it easier to deal with the data format that we have. And I don't want to dive too deep into queries today, but we have. 

43:04
Robin Marx
A lot of documentation on that on. 

43:05
Robin Marx
The site as well. You can see it's really quite straightforward. 

43:09
Robin Marx
To get the data out of there. 

43:12
Robin Marx
I say that sometimes it's not. I for example got this message from someone at Firefox who's trying to see. 

43:20
Robin Marx
How often Firefox Mobile was being used. 

43:23
Robin Marx
And they couldn't find any data. It turns out that if you that. 

43:28
Robin Marx
Ample splits Firefox between Firefox is desktop and then Firefox Mobile. It's called literally Firefox Mobile. 

43:35
Robin Marx
So you have to query for that separately. So yeah, it takes a while to get to know how the data set works. Exactly. But once you do that, of course it should be to be easy to. 

43:48
Robin Marx
Get some interesting stuff out of there. 

43:52
Robin Marx
Not all results are going to be super useful. Obviously every time that I look at the top third party resources, I admit. 

44:02
Robin Marx
I cry a little bit inside. 

44:05
Robin Marx
But still it's somewhat good to see. 

44:07
Robin Marx
Confirmed what the state of the web is. 

44:11
Robin Marx
And I challenge you all to find at which rank jQuery starts popping up. And I'm going to give you a teaser. It's going to be earlier than you probably suspect. 

44:20
Karlijn Lowik
Okay. 

44:22
Robin Marx
Now of course not everybody likes to write their own queries. We're very well aware of that, which is why we also have what we call room insights and that's basically just. 

44:33
Robin Marx
A page full of all kinds of visualizations that we provide for you. 

44:38
Robin Marx
We do some basic queries that we. 

44:40
Robin Marx
Think will be useful for many different people. Like what are the type of browser distributions that we see in the wild, for example, so that you can very easily check that and also screenshot that for uses elsewhere. 

44:57
Robin Marx
One of the most fun visualizations I. 

44:59
Robin Marx
Think that I've made is one that tracks how often browsers release new versions. 

45:06
Robin Marx
And then also how quickly those new. 

45:07
Robin Marx
Versions get adopted by the users in the data set. 

45:12
Robin Marx
You can see for Chrome it obviously. 

45:16
Robin Marx
Has a lot of updates and people quickly get up to. I think they very quickly get up to like 75% and then go up to 90% quite quickly as well for the next version releases. 

45:33
Robin Marx
The graph is a little bit skewed because we only have two data points per month. We just look at, I think the. 

45:38
Robin Marx
Second Tuesday and the last Tuesday in. 

45:39
Robin Marx
The month here you can clearly see the cadence of Chrome. This is especially interesting if you compare it to Safari then, which looks very differently. Before April 24th we only tracked major versions of Safari. It's a left side and since then we also started tracking minor versions. It's right side. That's why it's more fine grained. You can see there. It's very clear that the update cadence is much lower and people are much slower to actually update to the new browser version. Older versions stick around for much longer on Safari. Firefox is interesting in that it looks a lot more like Chrome also has a lot of updates, quick updates, except for some exceptions like the one here. 

46:27
Robin Marx
In the middle, the one from July. 

46:28
Robin Marx
23Rd, the black, you can see that has a very long tail. And I was very interested in that. It turns out that is Firefox has these long term support versions that things like governments apparently use and they can use them for a very long time apparently. Okay, so very interesting that shows up clearly in Firefox and not for. 

46:50
Robin Marx
Example in Chrome. 

46:53
Robin Marx
The final one that I absolutely hate is Facebook. I hate it because it breaks my visualization because they simply have way too many versions that they release. I think they release a couple of them every week. So I never have more than one data point for each version. So everything just breaks in my graphing logic. 

47:14
Nic Jansma
How dare they? 

47:15
Robin Marx
Yeah, but interesting to see how they. 

47:18
Robin Marx
Approach this in their mobile apps. 

47:20
Barry Pollard
Right? 

47:22
Robin Marx
This just is an example of the type of data you can get out of the room Archive. 

47:27
Robin Marx
Another thing that we've added recently is. 

47:30
Robin Marx
Support for Google Baseline that you might have heard of. 

47:34
Robin Marx
Google now tracks when in which browser version every feature becomes available and then also says these are the features that we expect or that became available cross. 

47:45
Robin Marx
Browser in a specific year, in a specific month. 

47:50
Robin Marx
What you get from normal baseline data is just, okay, this became, let's say. 

47:55
Robin Marx
Newly available at a specific date. 

47:57
Robin Marx
But that doesn't tell you how many real users are on modern browser versions. 

48:03
Robin Marx
That can actually use that. 

48:05
Robin Marx
That's where the run data comes in. We can now correlate the actual browser. 

48:09
Robin Marx
Versions we see in the wild to. 

48:12
Robin Marx
These features and when they became available. And so we can give an indication of how many real users are actually on the baseline. 

48:20
Robin Marx
Let's say, for example, for the baseline. 

48:22
Robin Marx
20, 25, it's only 77% currently. We've had this for two years. What we added this year was, for example, also a way to couple this to the Google Chrome usage numbers. So Chrome tracks how many pages actually use a specific feature in the wild. So that's not real markive data that's coming from a Google API. But it's interesting to correlate to see which of the features are both supported for real users and also being used on web pages. 

48:53
Barry Pollard
Okay. 

48:54
Robin Marx
I personally am not sure that the Google Chrome usage API is always correct. For example, here it shows over 55% of pages uses the popover API. I highly doubt that. And I have a list of things that I think are a bit weird in that data and I've talked to the Google guys about that. 

49:15
Robin Marx
So that might change in the future. 

49:18
Robin Marx
But still interesting to have that, like the correlation of those two things at. 

49:22
Robin Marx
The same place, at least to me that's interesting. 

49:25
Robin Marx
I guess another thing we added this year, which was surprising to me, is splitting it out per country. So before we only showed this for all countries together. Now you can be like, how many baseline features are supported for a specific country? This gave some interesting insights, right? Like all countries was about 86%. The United States slightly higher than that, 88. Brazil, which I would have never guessed was at 94. Okay, I talked to Vinicius there, he's from Brazil originally and he said that's quite normal because most people there are focused on the bigger cities and they're very technology aware, very up to date there. So he was not surprised by that. But for me, in my racist old white man Persona, that came as a surprise. 

50:16
Robin Marx
So very interesting, various insight. 

50:20
Robin Marx
And then the right side. Now I'm very curious if anybody could predict to me which country is on the right side, because that's the worst baseline score that I've seen in our data set. And it's from a completely unexpected country. Can anybody guess I'm gonna blame the. 

50:35
Nic Jansma
Canadians just because I like picking up. 

50:36
Robin Marx
Oh, it's not. 

50:37
Nic Jansma
Just kidding, just kidding. 

50:40
Karlijn Lowik
Germany? 

50:42
Nic Jansma
Nope. 

50:47
Robin Marx
It'S actually South Korea, which I would have not guessed in a million years. I thought they were like, you know, super high bandwidth and 5G and everything like. 

50:58
Robin Marx
But apparently they are lagging behind for some reason. 

51:01
Robin Marx
I don't yet know why. 

51:02
Robin Marx
Still want to do more data analysis. 

51:06
Robin Marx
But like a good example of, I think where the Rama archive is useful not just for the data in there but also how we can cross correlate this with other public data sets like Baseline and get more insights into the web ecosystem as a whole. 

51:20
Robin Marx
Right. 

51:22
Robin Marx
So who are we doing this for? Everybody. Obviously we've seen this now being used by several researchers. I know Annie Sullivan is being used there for rage click analysis. We've seen Mozilla using that, we've seen Gilberto using this for back forward cache hit rates in the wild there as well. But to be very frank, we feel the usage is a bit low. We would have expected it to be a bit higher and would have hoped it to be a bit higher by now. We're hoping people start using it more in conference talks, for example, maybe at the coming perf. Now we don't really know why the usage is this low either, so if anybody after this has insights on that. 

52:08
Robin Marx
That would be welcome. 

52:11
Robin Marx
But so yeah, we think it could still be widely applicable to people there. 

52:17
Robin Marx
Yes, Cliff, I was just going to. 

52:19
Cliff Crocker
Speculate and sorry if I'm echoing, but I bet that we'll see it increase a lot once we start to see more of these more core web vitals in Safari Right now, Crux being the only public data set, you know, other than ROM archive. I think that there's, you know, some arguments around maybe why, you know that there's. I'm not saying there's competition between the two, but that day is not going to be available in Crux. I think I'm optimistic that people will start to turn to it a bit more. 

52:52
Robin Marx
Yeah, that's fair. That's a good point. So what's next for this? I just want to reiterate most of. 

53:04
Robin Marx
You know this, but we want to say it again. We are very open for others to add their own data to the archive. 

53:11
Robin Marx
Okay, this, here's the slide before and now I was very happy that I could add Cloudflare, I guess to the list. 

53:18
Robin Marx
They recently announced their intent to make rum freely available for all the users, which was excellent. Right? 

53:26
Robin Marx
It's the RUM Archive. Okay? It's not the Impulse Archive. It's not the Akamai Archive. It is the Rum Archive. So we are still very open for other people to contribute the data. We are of course aware that is difficult. There are privacy aspects there. 

53:41
Robin Marx
You don't want to share customer data. 

53:44
Robin Marx
We're aware of all of that, but still we do feel we have a methodology that makes it semi or perfectly safe even to do this. And it's not that much work, we. 

53:54
Robin Marx
Think, to get that in here. 

53:56
Robin Marx
Alternatively, even if you don't feel comfortable that the fact that we now have these personal projects, right, like Nick's personal sites and Tim's Scalemates, we hope that this might trigger some people who have their own personal sites, you know, their personal blogs or their personal projects, or let's say the Run Vision homepage. You know, who knows if you have RUM data for that you do feel comfortable sharing. I don't want to put you on the spotlane. It was just an example on the. 

54:24
Barry Pollard
Spot right now without being as real as I was. Can I do some, please? It's fine. 

54:32
Karlijn Lowik
I'll discuss just an example, right? 

54:35
Robin Marx
Like, we do hope that might lead to more people contributing data if they don't feel comfortable doing the whole aggregated data set. Maybe individual personal projects might be another way ahead. 

54:46
Barry Pollard
Okay. 

54:47
Robin Marx
From our side, even if people don't start contributing their own, we of course are going to continue with this. We have plans to add several things in the coming year. Adding more default graphs, adding more baseline. So I really want to do more data analysis and show exactly which of the baseline features are holding things back and which features are not being supported in the browsers that people are using instead of just having the full baseline. Like Barry, I'm very excited for Cross browser Core Vitals, right? Finally getting things from Safari and Firefox. Firefox is already in there, by the way. From Safari in there is going to be very useful. We plan to additional dimensions, things for speculation, rules, giving more information on screen sizes, that kind of stuff, and then also adding some usability perspectives to the page. 

55:40
Robin Marx
Other than that, we are just very open to feedback. If you think something is missing or we're doing something wrong or we can do something better, then please just let us know. 

55:53
Robin Marx
And let's, you know, try and make this a bigger success than it currently has been, I guess, because. 

56:00
Robin Marx
I do think it's very useful to have this kind of project and that. 

56:04
Robin Marx
We can do a lot more with. 

56:05
Robin Marx
It than we currently so that's it from us. 

56:10
Karlijn Lowik
Thank you. 

56:14
Nic Jansma
Thanks Robyn. Really appreciate you doing that. 

56:17
Barry Pollard
Barry, if you're curious, I know what that popover thing was. We screwed up. Select element allows you to make a select element much bigger and as part of that code we put the popover feature detection in for every single select element. 

56:36
Barry Pollard
So it was a measure of pages. 

56:38
Barry Pollard
With select elements, not pages with popover. It's since been fixed and I think the data has been redone. So you re import the stuff that should be a lot less than 55% but thing. But okay, I'll chase that way it's still wrong. But anyway that was why because this is. 

56:57
Robin Marx
This, this is a new screenshot from yesterday. So it's still wrong. 

57:00
Robin Marx
But yeah, I know that it's. It's fine that there are issues there. 

57:03
Robin Marx
I was just saying there are potentially some things that are not correct in there. 

57:09
Barry Pollard
Yeah, I mean there's always bugs, but mostly pretty accurate. 

57:14
Michal Mocny
Also just to clarify, if it's based on use counters, I think it's percentage of navigations rather than unique pages. So like if a head site uses it could become very popular in terms of end user deployments, even if it's not in developer mindshare. 

57:34
Robin Marx
Yeah, sure. 

57:39
Nic Jansma
Yeah. I know we have a, you know, a smaller set of people here, many of whom are either affiliated with the project already or have other things, but we are. I've heard interest from several companies in talks about looking into whether, you know, it'd be possible to get some data with contribute to the ROM archive or not. Part of our goal with doing as Robin was saying, part of our goal with the individual page loads was to highlight there's other ways of putting the data in there that can still be useful. Like I personally think that looking at not the aggregate top 100 sites and looking at an individual site can tell a different story. 

58:16
Nic Jansma
It's kind of interesting to see how they differ, how they are the same or how they're affected by that developer making changes or that developers portion of mobile share versus not can be somewhat interesting. Our view of the world is biased because we have a certain set of customers, we have a certain set of data that we're pushing. We would love to balance that bias with other views of the world. That's our pitch. Okay, Any other thoughts on that before we wrap up for the day? 

58:53
Robin Marx
Yeah, so if people want to talk. 

58:54
Robin Marx
About this more, we will of course. 

58:55
Robin Marx
Be at perf now. We'll also have a short demo of this at the Google booth. 

59:00
Robin Marx
So if you don't feel comfortable speaking up now, come talk to us in person. 

59:08
Nic Jansma
Thank you, everybody for joining today. Again in November, we're going to skip that meeting due to some conflicts and holidays. We'll aim to meet again in December. We don't yet have a agenda for December. Maybe some follow up from the Perf now discussions. Maybe some follow up from the TPAC discussions. That could actually be an interesting kind of what did we all learn or talk about and bring it back to this group. Maybe for December. I'm getting FOMO about Amsterdam, so please don't have fun and I will see y'. 

59:38
Barry Pollard
All. 

59:40
Robin Marx
Andrea has a question, I think. 

59:42
Nic Jansma
Yes. No. What a mistake. All right, everybody. 

59:48
Karlijn Lowik
Yes. See you all in Amsterdam, except Nick. 

59:53
Nic Jansma
Have a great weekend. Bye. 

59:55
Karlijn Lowik
Goodbye. 

59:56
Karlijn Lowik
See you later. 

59:57
Barry Pollard
Bye. 
