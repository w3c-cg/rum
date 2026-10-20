00:00
Yoav Weiss
Not good night yet. 

00:14
Nic Jansma
Sergey. 

00:25
Cliff Crocker
It. 

00:45
Barry Pollard
Hi, everyone. 

00:46
Sergey Chernyshev
Hi. 

00:47
Mateusz Krzeszowiak
Welcome. 

00:49
Yoav Weiss
Thank you. 

00:53
Nic Jansma
Welcome to the call. Thanks for coming. 

00:58
Nic Jansma
Don't sound so bored. 

01:02
Nic Jansma
Sorry. 

01:03
Yoav Weiss
Be bright breezy. 

01:05
Cliff Crocker
Welcome. 

01:05
Nic Jansma
Let's go. Leon, I think I saw, I'm assuming is your video about HDB compression this morning. 

01:12
Nic Jansma
I did make that video with the help of AI of course. Of course. 

01:17
Nic Jansma
It was fantastic. I got a lot of good chuckles out of it and very educational as well. 

01:22
Barry Pollard
So. 

01:23
Nic Jansma
Bravo. 

01:23
Nic Jansma
Well done. Well done. 

01:24
Cliff Crocker
You show that in the web Slack. 

01:26
Nic Jansma
I haven't seen it yet. 

01:27
Nic Jansma
Yeah, sure. It in this. 

01:29
Nic Jansma
The comments here, the resources channel. 

01:32
Nic Jansma
We could do a group viewing session right now if we would like. 

01:36
Cliff Crocker
Yeah, I think we got it. We got some room on the agenda. Just do a critique. 

01:42
Nic Jansma
Yeah. 

01:43
Nic Jansma
We'll pause at every. Every sentence and decide whether. How accurate it is and some of the background, the history of it. 

01:50
Nic Jansma
Yeah, very well done. That's great. 

01:54
Nic Jansma
I was like, I reckon I recognize this icon. I've seen that before. 

01:58
Nic Jansma
This is Leon. 

02:03
Nic Jansma
Let's give people a few more minutes. 

02:07
Nic Jansma
And we'll get started. 

02:17
Nic Jansma
Now everybody open it up and keep your speakers on so we can see it. 

02:20
Nic Jansma
Can hear it in quadruple stereo. Oh, I should add a slide about Rum as well. I don't have that yet. 

02:39
Sergey Chernyshev
That. 

03:10
Nic Jansma
All right, why don't. Why don't we get started? Let me make sure we're recording. Okay, we are now recording. 

03:38
Nic Jansma
Let's see, we have fireflies for taking. 

03:40
Nic Jansma
Notes and a good 16 people. 

03:44
Nic Jansma
Welcome, everybody. 

03:45
Nic Jansma
Thanks for joining. Today's the October 14th version of our wonderful community group. Let me kick it off with just,. 

03:56
Nic Jansma
Just some slides. 

04:00
Nic Jansma
To get started. 

04:04
Nic Jansma
Okay, agenda for today. I have Interop on here. Would love to talk about Interop 27 a little bit just so people understand what it is. We talked about it a little bit last year. I think as well there is a feedback period happening right now. As far as I understand it. We're potentially. We could sway some of the opinions of some things that are happening within our app not listed on here. But we can also talk about our TPAC, which is the W3C's general face to face meeting, which will also be happening in about two weeks. And I was also going to talk. 

04:43
Nic Jansma
About almost getting there. 

04:47
Nic Jansma
The logistics for this are all the same. Talk about wromwrom. We have our groups, maybe annual face to face gathering. It'll be the second iteration of it. This will be November 18th. Sorry, I just put the slide together. 

05:03
Nic Jansma
So there's barely any information on it. 

05:06
Nic Jansma
So this will be the day Before Perf now in Amsterdam hosted by the Google offices and Barry's been helping put that together. I know this happened last year. I was not able to make it last year, but I'll be able to. 

05:18
Nic Jansma
Make it this year. So I'm very excited about that. 

05:22
Nic Jansma
It's free to register, though I haven't seen. 

05:24
Nic Jansma
I don't know if Barry or anybody. 

05:26
Nic Jansma
Else has looked to see if the. If we're full at all yet or approaching that possibly. 

05:32
Barry Pollard
I think only Caroline can see that she's not. 

05:37
Cliff Crocker
Okay. 

05:38
Nic Jansma
The live add in a link. We'll post the link in the chat as well. 

05:47
Nic Jansma
So 74 total attendees right now, at least on the. 

05:51
Nic Jansma
On the page. 

05:52
Nic Jansma
So hopefully be a good opportunity to talk about a bunch of fun things. We have a few things on the agenda already. 

06:00
Nic Jansma
Let me see if I can click copy and paste this over. Show it live editing right to here. Okay. 

06:12
Nic Jansma
We have these very tentative. We're still kind of thinking through. 

06:18
Nic Jansma
Some. 

06:19
Nic Jansma
Of the things that we would want to talk about here. We would love to have updates from the browsers teams in general. We have them kind of all a slot available. We're still kind of narrowing down if all these teams can give updates about. 

06:36
Nic Jansma
Anything that they want to. 

06:39
Nic Jansma
I think the Mozilla folks have said. 

06:42
Nic Jansma
That they would as well. Andy is trying to figure out from the safari side if anybody from there. 

06:51
Nic Jansma
Is going Another update on BFCache stuff from Gilberto and I was going to talk about the Beacon data set as well. If you have any other things that you want to talk about here, we. 

07:00
Nic Jansma
Have a couple hours to discuss. Feel free to reach out and we can see if we have time on the agenda. 

07:09
Nic Jansma
It'll be fun. 

07:09
Nic Jansma
It's called RUM RUM. You should join. 

07:13
Nic Jansma
Next meeting would normally be in November. We're going to skip that one because it's roughly a week before Perf now and RUM RUM. 

07:22
Nic Jansma
So we're going to skip November and. 

07:23
Nic Jansma
The meeting following will be in December. I guess we can see in December whether we have the energy and enough. 

07:30
Nic Jansma
People around to meet in December. That one may be tentative based on where everybody is with their holiday schedules and all that kind of stuff. 

07:38
Nic Jansma
Don't have any topics yet. Maybe something will come out of RUM RUM for that. 

07:43
Nic Jansma
But yeah. 

07:47
Nic Jansma
Okay. Any other logistics or things or questions people have before we dive into topic today about Interop? 

07:56
Nic Jansma
All right. 

07:57
Nic Jansma
I'm gonna do my very best to set some context for Interop. 

08:00
Nic Jansma
I know there's more folks on the call that may have a little more. 

08:03
Nic Jansma
Knowledge about Some of the intricacies of it. Interop is a. Oh, go ahead. 

08:09
Cliff Crocker
Sorry, I was just trying to catch. 

08:12
Nic Jansma
Up before you got started. 

08:12
Cliff Crocker
But did we. Did you guys talk at all about the Beacon? About the new RUM data set from Cloudflare? 

08:21
Nic Jansma
Did you guys talk about that last. 

08:22
Nic Jansma
Time or are we going to talk about it here? 

08:24
Nic Jansma
We have not. I was going to do a more in depth discussion about it at RUM RUM, but I'm happy to talk about like just a one minute spiel here. 

08:33
Nic Jansma
If people are not aware at all,. 

08:37
Nic Jansma
Would that be useful or do we. 

08:38
Nic Jansma
Want to just move forward to interrupt stuff? 

08:42
Cliff Crocker
Sorry, I didn't mean to cut you off but yeah, I just wanted to make sure that people are aware of it and then yeah, if you're going to do something more in depth later,. 

08:47
Nic Jansma
We can dig in. 

08:48
Nic Jansma
But I'll just For those of you that haven't seen, we do have a new data set on the RUM Archive. 

08:57
Nic Jansma
Let me switch over to it. 

09:02
Nic Jansma
We at Cloudflare were able to start sharing our RUM data alongside the data. 

09:08
Nic Jansma
That Akamai has been sharing for Impulse. 

09:11
Nic Jansma
So all of this is Described within. 

09:15
Nic Jansma
The rumvision.com you can also read about it in our course corporate blog. If you enjoy reading the Cloudflare corporate. 

09:21
Nic Jansma
Blog, we do have a blog post here. It's called the Beacon Data Set. 

09:26
Nic Jansma
What is that acronym? Do we miss the acronym here? 

09:30
Nic Jansma
Maybe we don't Browser experience across Cloudflare Observed Network yes, we had to find a thing that matched anyway. So it's a bunch of new data that we're contributing. It's Cloudflare's view of RUM from the traffic that we get. We have millions of sites that we're collecting. We're exporting about 10,000 of our top by traffic volume sites on a daily basis. It's same format as RUM Archive. So you should be able or as the Impulse Ramarxive stuff. 

10:06
Nic Jansma
So you should be able to just switch the project name and issue all the same queries. 

10:12
Nic Jansma
The data sets will look different. Different data, different traffic patterns, different websites being measured, etc. And I hope to dive into some. 

10:20
Nic Jansma
Of those differences more in the future. 

10:22
Nic Jansma
But I will maybe do more of that at wrong. 

10:27
Nic Jansma
Thanks. Yep. 

10:30
Nic Jansma
Interop so Interop is a cross company initiative. You can see some of the team. 

10:38
Nic Jansma
Members that helped form Interop kind of. 

10:42
Nic Jansma
Hosted underneath the WPT web platform tests GitHub repo. It's been going on a couple years. 

10:48
Nic Jansma
Now for maybe four years or something like that. 

10:53
Nic Jansma
And the screenshot I'M sharing here is the Interop dashboard from last year. This is a view of feature completion, test passing over time. The purpose of Interop is to pick a subset of impactful web features and. 

11:12
Nic Jansma
Make those features work consistently across the browsers. 

11:18
Nic Jansma
And the way to verify that is through web platform tests and getting those. 

11:22
Nic Jansma
Passing for all the browsers. 

11:24
Nic Jansma
So each year there is a set. 

11:27
Nic Jansma
Of proposals for what features to include that's put forth. 

11:32
Nic Jansma
You know, there's a whole submission process, some voting if you will, with thumbs up and other feedback. The browser vendors themselves have a large opinion on a lot of these, the features that can be included or not. And then eventually I think by like this happens over a few months and then by the beginning of the year timeframe, the new features for Interop of. 

11:57
Nic Jansma
The next year are announced. 

11:59
Nic Jansma
So we're in the middle of the process right now. The all of the potential features have been chosen and I think the narrowing down of which ones, sorry, all of the potential features have been submitted as a proposal and narrowing down to which. 

12:17
Nic Jansma
Ones will be chosen for 2027 is. 

12:20
Nic Jansma
Starting to happen with champions assigned to each one. 

12:23
Nic Jansma
And we'll go over each ones in. 

12:24
Nic Jansma
A moment looking, you know, like from an outsider's perspective, not affiliated with any of these companies. I've seen it seems like a very successful, useful project for the features that. 

12:37
Nic Jansma
Are that are chosen. 

12:38
Nic Jansma
We see over time the platform tests. 

12:42
Nic Jansma
Getting better and better for each of the browsers. This little chart down here is kind of cool. 

12:48
Nic Jansma
It shows you between January and October of last year, the passing rate of browser features across the major three and. 

12:58
Nic Jansma
Then some total or minimum of them. And you can see it improves over time. The browsers vendors make all of them make very consistent progress in making the web more interoperable, which is just a very good thing for all of us. 

13:14
Nic Jansma
So I thought it was really cool. You can see actually the focus areas chosen last year on the right hand. 

13:20
Nic Jansma
Side here again the screen is kind. 

13:21
Nic Jansma
Of small, but if you want you can look click through and there's a. 

13:24
Nic Jansma
Bunch of dashboards that you can take a look at. 

13:30
Nic Jansma
Scope of the project is about standards, right? So web standards, none of these things, none of the things that are chosen are not already a web standard. They it's the Interop project does not define the standards themselves. It's more about making sure all of. 

13:48
Nic Jansma
The browser engines adhere to those standards better interoperably. Right. 

13:54
Nic Jansma
Everything must be testable to be included. 

13:56
Nic Jansma
So web platform tests must be created or creatable or already exist. 

14:04
Nic Jansma
And yeah, so that's kind of. 

14:05
Nic Jansma
Like the scope of the features that can be selected. 

14:09
Nic Jansma
We are in kind of the middle of this process right now. So there was a submission window. Thank you, Michael. 

14:17
Nic Jansma
For the clarification. 

14:19
Nic Jansma
The tests have to have already been created. 

14:21
Nic Jansma
It sounds like not created for the project. They should have already been WPT tests. 

14:28
Barry Pollard
Well, there's also. Sorry, there's two things. There's a. We want this implemented cross browser. And for that. Yeah, we need to know what we're implementing. So we need the tests. But there's also a. I've got the name of it, a exploratory or investigation thing which says we'd like this to better implemented, but we don't know what it is yet. Please create the tests in the next year so we can consider it for next year. Interop focus area versus investigation ever. 

14:53
Nic Jansma
Thanks, Michael. 

14:55
Nic Jansma
And the investigation effort is for the. 

14:56
Nic Jansma
Kind of next year section of that, is that correct? Yeah. 

15:00
Barry Pollard
I mean, again, doesn't guarantee it, but it's basically saying it's not ready for a focus area yet. So we need to do some more work before we can consider it. 

15:08
Nic Jansma
Tee it up for next year consideration. 

15:10
Barry Pollard
Yeah,. 

15:13
Nic Jansma
So the submission window is already closed. That was basically in September. I was looking at the timeline. It looks like there's like refining of these and champions being selected and some. 

15:24
Nic Jansma
Negotiating happening as part of the group that's doing this. 

15:28
Nic Jansma
So. And then it sounds like the. The scope of everything will be published in February. I know that there's probably a lot of work happening over the next few weeks, maybe a little bit of discussions at TPAC around this as well, which. 

15:40
Nic Jansma
Is happening in two weeks. 

15:42
Nic Jansma
So. 

15:43
Nic Jansma
Yeah. Yes, Michael. 

15:46
Michal Mocny
Yeah, I just want to double down. Thanks for drawing attention to this, but something I haven't appreciated as much in past years and I've learned over time, like the only thing that could be included in this program and the only thing that will make progress over the next year is making sure the set of tests that selected pass. And so now is the time to review and to set expectations. Like one of the proposals, and I know you're going to go through the list is long animation frames and I know there's a lot of excitement and a lot of thumbs up from folks and that's helpful. 

16:24
Michal Mocny
But I think if you want to have a big influence, the size of your lever right now to change the set of tests to make sure that everything you expect or want is included, like there's no easier time than right now in the next couple of weeks. So that's just a call to action, I would say. 

16:44
Nic Jansma
Michael, can I ask some follow up. 

16:47
Nic Jansma
Questions on that too? 

16:47
Mateusz Krzeszowiak
Like. 

16:50
Nic Jansma
Do you think. Or maybe we can get into this. 

16:52
Nic Jansma
When we look at the. 

16:54
Michal Mocny
Yeah. 

16:54
Nic Jansma
Proposals are there some of these tests are some of these proposal proposed features that could use some additional work not. 

17:02
Nic Jansma
Just on the spec side but on the test building side where anybody. 

17:07
Nic Jansma
With air quotes in the community could help contribute towards flushing them out? 

17:14
Michal Mocny
Yeah, I think we could look at specific ones, but I think in my opinion almost all of the features could do with some love and effort. Like I think, you know, tokens are more broadly available now than they have been in the past. I think we all understand this area better than we have. And individual browser implementers, when they ship these features, kind of tend to focus on where they're investing. Like prior to Interop efforts, when you have single implementer status, there isn't necessarily full coverage of what the WPT suite and it's always useful to have a second set of eyes. And so I think like we got bit in the past where once something was selected for Interop effort, then it gets more attention and all of a sudden we notice some oversights or flaws and there's room to make test change proposals. 

18:02
Michal Mocny
But it's always harder later. Now it's just, you know, so it's a great time to spend some time if you care about this area and it doesn't take that much effort. Like yeah, these Things are tiny JavaScript tests that are really easy to RUM, really easy to add or modify or just validate. 

18:22
Nic Jansma
The test harness itself is not scary to look at. 

18:24
Nic Jansma
Like you can very easily like reason with it or your agent can reason with it. 

18:29
Nic Jansma
Matthias. 

18:31
Mateusz Krzeszowiak
So I don't know if it's still correct, but like I wanted to contribute some tests in the past but I noticed like there's a ton of pull requests and it doesn't seem like there's any flow for who should review them and stuff. Are there any best practices you would want us to follow when working on those? Because no one wants to be flooded with slop PRs and I just want to make sure that we know what to do and we spend our tokens the correct way. 

19:11
Nic Jansma
Yeah, there's only 1400 pull requests right now open, right? Yeah,. 

19:19
Michal Mocny
Yeah. I don't know if anybody else on the call you have, I don't know if you have opinions. I'm learning the process. I think if you help draw attention to the ones you think need it will help make sure it gets the attention. 

19:33
Yoav Weiss
Yeah, I think like theoretically there is. 

19:36
Yoav Weiss
Always an assigned reviewer. In practice, those assigned reviewers may or may not be the best ones, or may not have actual time to review things. But yeah, like Michael said, if there are important things that need to be fixed, let us know and we'll like. Either we can, you know, a lot of the folks on this call are also potential reviewers, or we can find, you know, the right people and nag them until they actually review. 

20:12
Barry Pollard
So. 

20:17
Nic Jansma
I was looking at the repo really quick. 

20:20
Nic Jansma
It's under. Let's see. I'll show this tab Inside Web Platform Tests WPT Pull requests. You can do the WG Web label. 

20:34
Nic Jansma
And that kind of narrows it down a little bit. And we actually have a bunch that are open, including some from that are eight years old. So it'd probably be worthwhile maybe even. 

20:48
Nic Jansma
For outside of this call, but for the web group to review these as part of our triage and stuff. 

20:55
Yoav Weiss
Yeah, a lot of those seem to. 

20:57
Yoav Weiss
Be from Chromium WPT export, which means that someone shipped them in Chromium and then their merge here failed for various admin reasons and no one bothered. It's highly likely that for a lot of those that no one is me. But yeah, but it's essentially tests that are already in Chromium and just need to, you know, some admin push here because they showed some flakiness eight years ago. 

21:33
Nic Jansma
Yeah,. 

21:36
Barry Pollard
Okay,. 

21:40
Nic Jansma
Great discussion and feedback and maybe that's something that we can bring. 

21:44
Nic Jansma
Back to do more as part of Web Proof, really. 

21:54
Nic Jansma
Getting into the specific proposals for this year. I guess before getting into those, there is this cool feedback mechanism that you can help to sway the opinions of the Mozilla developers, which is one of. 

22:10
Nic Jansma
The companies that's participating. 

22:12
Nic Jansma
If you click on this link or go to this URL, it lists all of the interrupt features and you can say I'm interested in this. 

22:18
Nic Jansma
And you can click, click and then order them according to your preferences. As far as what you would like. 

22:25
Nic Jansma
To see, this is my personal take on the right of somewhat opinionated ordering. 

22:33
Nic Jansma
Feel free to choose your own adventure. 

22:35
Nic Jansma
In that if we look at the. 

22:37
Nic Jansma
List of things that are realm or. 

22:40
Nic Jansma
Webperf related, there's a lot of things that we cover as well. There's a lot of things that are. 

22:46
Nic Jansma
Owned by the Web Perf Working group and things that may be interesting to rum community members around this right layout. 

22:55
Nic Jansma
And stability, which is CLS long animation frames, timings for all these things essentially. 

23:02
Nic Jansma
The first topic 5 essentially are things. 

23:06
Nic Jansma
That we would probably care about for. 

23:07
Nic Jansma
Rum that affect our measurements and stuff like that. 

23:12
Nic Jansma
And some of the members of our community created the actual GitHub issues. 

23:17
Nic Jansma
That are tracking these, you know these proposals for Interop. 

23:22
Nic Jansma
So I don't know if any that includes anybody on this call. I think I saw Yovi had one. 

23:25
Nic Jansma
Or two of these that you had opened and maybe one from Erwin as well. So anyway thanks for everybody for contributing these. 

23:39
Nic Jansma
But this is like the web proof related ones and there's another hundred. 

23:42
Nic Jansma
Or so that are not this. Right. 

23:44
Nic Jansma
There's other things that you may be. 

23:45
Nic Jansma
Interested personally across the web as a developer in that list. 

23:49
Nic Jansma
So that Firefox tool is a good. 

23:51
Nic Jansma
Way to help organize your thoughts around them if you wanted to help give feedback on them. 

24:01
Nic Jansma
As far as this list goes, this. 

24:04
Nic Jansma
Is not sorted in any particular order. 

24:06
Nic Jansma
Other than kind of realm related up. 

24:09
Nic Jansma
Top and webperf adjacent next to it. 

24:14
Nic Jansma
Any thoughts on any of these as. 

24:16
Nic Jansma
Far as folks. 

24:19
Nic Jansma
Preferences for seeing these. 

24:21
Nic Jansma
More consistent across the browsers? Just curious. Go ahead Barry. 

24:34
Barry Pollard
Like it in first preload and resource timing. I I'm not sure if I remember this like is do we. That's just a proposal and a spec change. It's not a. This isn't interoperable and one browser does it and follows the spec and another browser doesn't. We need a better way of doing this. 

24:59
Mateusz Krzeszowiak
So as far as I I remember the conversation it's almost like both like I think Noam is claiming that the spec is clear enough and just all browsers fail to implement it properly. But I think I filed this as like an exploratory type where like I would like everybody to agree what we actually want to have implemented. 

25:31
Yoav Weiss
So this is on the agenda for. 

25:33
Yoav Weiss
TPAC to get agreement on this. But I don't know if assuming that we'll reach conclusions and have you know, have a decision that may or may not require spec changes and test changes which may or may not, you know, disqualify this. 

25:58
Barry Pollard
Yeah. So it might better as an investigation effort rather than focusing reasons we don't know what we're doing. And well Noam's technically correct. The changing to the spec is going to break everybody. So it's not necessarily the right solution. Anyway point is that yeah that one's questionable whether it's a certainly whether it's a focus area proposal or whether it should be investigation effort or whether it needs more work before it can even be considered interrupt that's my personal opinion, by the way, not Google's opinion. 

26:37
Nic Jansma
Anything else that you wanted to add to that barrier? 

26:39
Nic Jansma
Can we go to action? 

26:42
Barry Pollard
Okay. Yeah. 

26:44
Nic Jansma
I wanted to ask, can you please share the link to the speculation rules here from this slide? 

26:49
Barry Pollard
Yeah. 

26:50
Nic Jansma
Yes. 

26:50
Cliff Crocker
Yeah. 

26:51
Barry Pollard
Thank you. 

26:53
Nic Jansma
Post it into the chat. Thanks. Link to the slides as well if you want to click through there. Oh, sorry, Barry has another. 

27:28
Barry Pollard
Oh, I don't know. 

27:40
Nic Jansma
Bringing it back to what Yova's talking. 

27:43
Nic Jansma
About, we could talk about tpac because. 

27:48
Nic Jansma
It does have some bearing on some. 

27:49
Nic Jansma
Of the things that were just mentioning as well. 

27:54
Nic Jansma
So TPAC is annual face to face. 

27:58
Nic Jansma
Get together for the W3C in general. Most of the working groups will have. 

28:05
Nic Jansma
Meetings planned for tpac, the Web Performance Working Group. 

28:09
Nic Jansma
We are meeting two days, Monday and. 

28:11
Nic Jansma
Thursday, in basically two weeks, all day. 

28:15
Nic Jansma
To discuss various web performance related topics, including some that may be interesting for Rum. 

28:21
Nic Jansma
This is just a snapshot of the agenda. 

28:25
Nic Jansma
Yoav and I have still been moving. 

28:27
Nic Jansma
Things around as we get more topics or try to squeeze more things in, but it's pretty much a fully packed list of things to talk about. Oh, in fact, I see discussion about. 

28:42
Nic Jansma
Interoperability cross with web performance queued up as well. 

28:48
Nic Jansma
Some of the things that are related. 

28:51
Nic Jansma
To Interop will be discussed further here. 

28:55
Nic Jansma
I thought it's also a good opportunity. 

28:57
Nic Jansma
For this work, this community group, to consider if there's any feedback that they would want to give to the web performance working group for any of these topics. Right. 

29:09
Nic Jansma
So if there's anything that are very,. 

29:11
Nic Jansma
Very important to this group, we can help communicate those needs to the working group as part of these discussions. 

29:21
Nic Jansma
There's a lot, there's a lot more. 

29:23
Nic Jansma
People that are in the room at TPAC or on video calls. 

29:27
Nic Jansma
So we get between say 20 to 40 people, I would say, in general, that are participating in these sessions throughout the days. And it feels to me like a lot of decisions are more likely to get made during TPAC or at least good directions on things then sometimes even. 

29:46
Nic Jansma
During like the regular hourly calls, weekly hourly calls that we do just because there's so many more people in the room. And we're very focused on the performance things. 

29:55
Nic Jansma
So it's a good opportunity to get your thoughts and feedback in, say, for example, if you were really super excited about container timing. We've been having these discussions almost yearly at TPAC and elsewhere and we can,. 

30:10
Nic Jansma
You know, share feedback from the community within WebPerf. 

30:17
Nic Jansma
There is an opportunity if folks want. 

30:20
Nic Jansma
To observe some of these yo or. 

30:23
Nic Jansma
I can give you the ability to join in for a session, but there's kind of a fine line if you're not already a W3C member for actually. 

30:35
Nic Jansma
Giving feedback and affecting some of these. 

30:40
Nic Jansma
So we, you know, you can observe easily, you know, watch it and we take a lot of notes and we try to record a lot of the. 

30:48
Nic Jansma
Sessions so you can watch them later afterward if you prefer. But it's a good time to share your thoughts ahead of time if you would like ordering, I guess. 

31:02
Nic Jansma
But there's a lot of things here. 

31:03
Nic Jansma
That I think are very real adjacent. 

31:06
Nic Jansma
Declarative performance observer in case folks haven't seen that. It's a way to send RUM data. 

31:12
Nic Jansma
Without RUM Script Resource start entries for measuring when resources getting notified when resources. 

31:19
Nic Jansma
Start, not just when they end Container. 

31:22
Nic Jansma
Timing very RUM Related. Core Web Vitals Download and memory as. 

31:29
Nic Jansma
Missing Core web vitals Pretty much all. 

31:32
Mateusz Krzeszowiak
Of these. 

31:35
Nic Jansma
Are about measurement. 

31:37
Nic Jansma
Many of them at least are stack. 

31:40
Nic Jansma
Traces from long tasks. 

31:42
Nic Jansma
Paint timing updates. 

31:45
Nic Jansma
Me personally as a. 

31:46
Nic Jansma
Rum vendor interested in web performance, I'm interested in almost all of these. 

31:52
Nic Jansma
So it'll be a, hopefully a really good discussion. Any topics here? 

32:00
Cliff Crocker
A little bit of a pointed question, Nick. Like what, yeah, what's the desired outcome like coming out of TPAC? I think just for those who aren't, who haven't participated or gone to it, like is the idea that okay, hey, we've got this big stack of like things we want to do. Is this, is there prioritization discussions or is this just more going deep on proposals? 

32:20
Nic Jansma
Yeah, great question. I it's. It can be think it can be thought of as an extension of just. 

32:25
Nic Jansma
The, you know, the 20 some bi. 

32:29
Nic Jansma
Weekly meetings that we have during the year all compressed into two or three days. So like a lot of things get done, people are there and you know, theoretically not paying attention to other. 

32:43
Nic Jansma
Work things for the full day so are able to focus more a little. 

32:46
Nic Jansma
Bit at these things. What often I see in practice is that folks may throughout the year build up their proposals or kind of wait for a TPAC like thing to kind. 

32:59
Nic Jansma
Of bring some of their proposals and. 

33:01
Nic Jansma
May hope for clear direction from feedback. 

33:06
Nic Jansma
From everybody else there for how to proceed with it. 

33:08
Nic Jansma
So whether that's a decision on going path A or path B or just. 

33:14
Nic Jansma
Getting a pulse of the room of. 

33:15
Nic Jansma
Like is this something that either the. 

33:16
Nic Jansma
Browser vendors would consider or would be useful for the community? 

33:21
Nic Jansma
Those are things that I think a lot of folks are interested in getting their feedback on. 

33:26
Nic Jansma
And as you know, the presenters and. 

33:29
Nic Jansma
Chairs, we really try to drive towards, you know, we. What are the next steps for all of these? But you know, it's not always clear. Sometimes the discussions can be very useful. Sometimes they're like, well, we need to gather more feedback and come back to. 

33:43
Nic Jansma
The group, you know, at another session later. So yo. 

33:49
Yoav Weiss
Yeah, so I guess like,. 

33:53
Barry Pollard
At least. 

33:53
Yoav Weiss
From my perspective there are a lot of things that are essentially, you know, presentations of. Here's some new work that we're working. 

34:03
Yoav Weiss
On like, or thinking of which I. 

34:07
Yoav Weiss
Think is very useful for like in order to get that initial feedback from. 

34:12
Yoav Weiss
A large chunk of the community because. 

34:14
Yoav Weiss
The biweekly calls have fewer people than the full TPAC room. 

34:21
Yoav Weiss
Some, some of it is like, you. 

34:24
Yoav Weiss
Know, status updates which are potentially like,. 

34:29
Yoav Weiss
At least the folks that like. 

34:31
Yoav Weiss
I think status updates are less useful. 

34:33
Yoav Weiss
And actually like here are a bunch. 

34:36
Yoav Weiss
Of open questions that we ran into as part of ongoing efforts and getting feedback from the room. I think that's a more useful thing. 

34:44
Yoav Weiss
And then finally there are a few issues that have been long standing and. 

34:50
Yoav Weiss
At least my goal is to drive them to conclusion. 

34:55
Yoav Weiss
You know, we made progress on them along the way. 

34:59
Yoav Weiss
We figured out roughly what or you know, a path to resolution. 

35:05
Yoav Weiss
And my goal as a chair is. 

35:07
Yoav Weiss
To drive them to actual like, you know, let's make a decision, move on, resolve this and be done with it. Like navigation, timing 160 is at least. 

35:21
Yoav Weiss
The main one that I think about. I think like also single resource multiple. 

35:25
Yoav Weiss
Fetches, which is what like we just talked about with early hints and preloads, is something we need to, you know,. 

35:34
Yoav Weiss
Get consensus from the room about the. 

35:38
Yoav Weiss
Direction we want to take. This will be, you know, a big decision that needs to be taken in as broad a forum as possible and then based on this decision we can make progress on this and you know, close it throughout the year. 

35:55
Cliff Crocker
Yeah, makes sense. I guess what I was starting to get at is like for this group and in general, you know, we've talked before about the. One of the purposes of this group is to be able to kind of inform some priority or like what. What we need. Would there benefit to this group priority providing those that are going to be at TPAC talking about this, something that says like, hey, this is what's coming out of realm. Cg, we see container timing as being like the most important thing or, you know, whatever it might be. Does that help in these discussions or is that just more of your. 

36:28
Yoav Weiss
I think that helps, you know, work priority discussion and shipping Decisions for. 

36:36
Yoav Weiss
Browser teams, less so for the working group. 

36:38
Yoav Weiss
For the working group. 

36:39
Yoav Weiss
What, what the working group needs from this CG is concrete feedback on, you know, speculative load measurement sucks because AVC got it. And if that were fixed, then it would better. That's, that's the kind of feedback that I think would be more useful coming from this cg. 

37:01
Yoav Weiss
And then like, yeah, that's. And prioritization and,. 

37:08
Yoav Weiss
And need that's more geared towards browser teams and their funding decisions. 

37:16
Cliff Crocker
Okay, awesome. 

37:18
Nic Jansma
Use cases and ergonomics are very valuable feedback from the community. 

37:24
Nic Jansma
Why speculation load measurements are important for. 

37:27
Nic Jansma
You or your customers or why this. 

37:30
Nic Jansma
API is very hard to work with. 

37:32
Nic Jansma
Or gives you bad data in xyz. And those are the kind of things that can feed back into these discussions, I think. 

37:39
Nic Jansma
You know, there's a lot of overlap. 

37:40
Nic Jansma
Obviously between the people on this call and people that will be at webperf. At least four or five of us I can see and we can help, you know, surface those things. 

37:52
Nic Jansma
But if there are concrete things from a concrete person, it's better than us. 

37:57
Nic Jansma
Just saying kind of generically the RUM TG wants xyz. Right. 

38:01
Nic Jansma
So if I could say person A at company B thinks or they've opened this issue and they can. 

38:07
Nic Jansma
Link to it, you know, or it's. 

38:10
Nic Jansma
You've added your feedback to the GitHub issue for nav timing160 because you're very. 

38:14
Nic Jansma
Passionate about it as well. 

38:16
Nic Jansma
Like that's more valuable than just our. 

38:18
Nic Jansma
Saying this is important to the community. Right? 

38:22
Barry Pollard
Yeah, I go and say the same is true of the Internet interrupt stuff that we just discussed. If you go and thumbs up speculation rules because you really want it, that's one small signal. If you go in and put. Actually someone just put a good comment this morning saying here's my use case, here's why it doesn't work and here's what I'm having to do to work around it. And that's much more valuable than clicking a thumbs up button. Great. 

39:01
Nic Jansma
Are there any, in looking at these y', all, are there any things that. 

39:06
Nic Jansma
We could, I mean, I don't know the depth of all the topics that everybody wants to talk about here, but like. Or that everybody will be bringing to TPAC to talk about. Are there any things that you see obviously that. 

39:20
Nic Jansma
This working group, like for. 

39:21
Nic Jansma
Example, like the shape of the declarative performance observer, I think would be very useful for other folks on Rum CG to take a look at their proposal, at least the previous proposal from junior and see if like would this make. 

39:34
Nic Jansma
Sense for you or your company or is it a burden in some way. 

39:37
Nic Jansma
Or solve a bunch of problems? 

39:41
Nic Jansma
Are there any major ones that you. 

39:45
Yoav Weiss
I think for all the new things it would be useful to get signal from the cg so declared a performance observer resource start entries container timing I guess is still a new thing. Scroll timing, speculative load measurement. All these will benefit from that kind of a signal. 

40:10
Nic Jansma
I tell you what, go ahead. 

40:11
Cliff Crocker
Yeah,. 

40:14
Nic Jansma
I think first a lot of. 

40:16
Nic Jansma
These what we could do is we could also paste into the Slack like. 

40:19
Nic Jansma
Here's some of the topics that will. 

40:20
Nic Jansma
Be discussed at TPAC and link to the GitHub issues for many of them not all of them have that but for many of them there are ordinance planer and see if people want to add feedback before. 

40:31
Yoav Weiss
Yeah and what we could do as chairs is try to get you know, some sort of like a pre read. 

40:40
Yoav Weiss
Because one of the you know, feedback. 

40:45
Yoav Weiss
Points from me to myself last year was that there were too many sessions. 

40:52
Yoav Weiss
Where you know, a feature that was. 

40:57
Yoav Weiss
Already discussed was you know, here's an overview of the feature for 20 minutes. 

41:03
Yoav Weiss
We don't have and then like yeah,. 

41:07
Yoav Weiss
And then we didn't re ran out of time for discussions or it dragged. 

41:12
Yoav Weiss
On for too long and yeah and like and this year it's two days. 

41:20
Yoav Weiss
Rather than three days compared to last year just because it was not a reasonable like three days were not a reasonable thing. 

41:29
Yoav Weiss
So maybe one thing we can do. 

41:31
Yoav Weiss
Is get people to get a pre read. 

41:35
Yoav Weiss
Here is the overview and then we. 

41:40
Yoav Weiss
Can post this on Slack and people can read this, understand the context and provide some initial feedback or know that they need to tune in for this particular spot. 

41:53
Nic Jansma
I think that's a great idea. Yeah, let's see how much like there. 

41:56
Nic Jansma
Are a couple explainers already linked here obviously and some GitHub issues that could just be linked. Let's maybe push for that for everyone. 

42:02
Nic Jansma
And I think both with rumcg as well as just the general web perf folk it would be good to get those links blasted out ahead of time for people to read on the plane. 

42:12
Cliff Crocker
Or train or yeah sometimes even just like a simple poll or something in groups like that can be additive and helpful. I know we want to have commentary on the issue themselves and you know, upvote leave use cases. Yes, all that for sure but I mean even just like a general like hey here's like a litmus test of the community and what we're hearing like you know, could be easy to do in Slack as well. But just some thoughts. I mean I know like everybody really puts so much into this and then goes to TPAC and talks about it. What I'm trying to look at is there are other ways to help you guys drive the action that we want to see. Was the biggest motivation there. 

42:59
Sergey Chernyshev
Yep. 

43:02
Nic Jansma
Yeah, it's similar in some ways to. 

43:04
Nic Jansma
Like the interop list. 

43:05
Nic Jansma
Like there's a big list of things. 

43:06
Nic Jansma
That folks are trying to prioritize for. 

43:11
Nic Jansma
Effort and this is kind of like. 

43:12
Nic Jansma
A different list of things that many people want to push forward on. 

43:18
Nic Jansma
And so it'd be interest an interesting. 

43:20
Nic Jansma
Signal from the Rum CG on which ones are interesting to Rum cg. 

43:28
Nic Jansma
Okay, well yeah, so I'll Yoga and I will work together to guide people. 

43:34
Nic Jansma
To get some links or some pre. 

43:36
Nic Jansma
Read stuff available probably by next week. This will happen in two weeks, right? Two weeks from. 

43:43
Nic Jansma
Yeah, yeah. 

43:44
Nic Jansma
Roughly today. 

43:46
Nic Jansma
So we are two weeks from two days ago. 

43:48
Yoav Weiss
But yeah. 

43:49
Nic Jansma
Yes, 12 days from now. 

43:54
Barry Pollard
I've added load of links to the agenda for you. 

43:59
Nic Jansma
Thank you. 

43:59
Nic Jansma
I see that Live. Live edits. 

44:03
Nic Jansma
Awesome. 

44:03
Barry Pollard
Perfect. 

44:04
Nic Jansma
Yep. 

44:05
Nic Jansma
So there is an agenda document. We will. 

44:08
Nic Jansma
Oh. 

44:10
Nic Jansma
Take this. I'll take an action yield to summarize. 

44:16
Nic Jansma
Some of this for Rum CG with links and all that kind of stuff and post it in our Slack. Maybe also post it to the mailing list. I don't know how many people actually look at those mails though. 

44:25
Nic Jansma
But yeah, that'll be helpful. 

44:26
Nic Jansma
Good. 

44:30
Barry Pollard
Okay. 

44:31
Nic Jansma
Any other discussions about interoperability? 

44:35
Nic Jansma
Tpac, Rum. 

44:37
Nic Jansma
Those are the three main topics today. 

44:39
Nic Jansma
And I don't know if we have anything else. 

44:47
Yoav Weiss
I'm. I saw Agent identity on the agenda. 

44:54
Nic Jansma
For today. 

44:55
Nic Jansma
I thought so we did that last time. 

44:59
Yoav Weiss
Okay. 

45:00
Nic Jansma
So I'd be happy to talk about it more. You were. 

45:05
Nic Jansma
You personally weren't able to make it last? 

45:08
Cliff Crocker
Yeah,. 

45:10
Nic Jansma
We. 

45:14
Nic Jansma
There was. Yes, it was part of TPAC planning. 

45:18
Cliff Crocker
Okay. 

45:20
Nic Jansma
Caroline had suggested is there something that. 

45:22
Nic Jansma
We can bring to TPAC around agent identity? 

45:27
Yoav Weiss
I believe there are already breakouts on that. If there aren't I should have filed them. 

45:36
Nic Jansma
Let me find. 

45:37
Nic Jansma
And this kind of. Yeah. 

45:38
Nic Jansma
Okay. 

45:39
Nic Jansma
So now I'm full context is in my brain again. So we last from cg. We talked about it a little bit. 

45:46
Nic Jansma
As far as the challenges from a. 

45:48
Nic Jansma
Run point of view of identifying agents doing various things, whether they've been driven. 

45:52
Nic Jansma
By an agent or browser or could be driven by an agent. 

45:56
Nic Jansma
And I think Caroline's proposal was that. 

45:58
Nic Jansma
For TPAC. 

46:01
Nic Jansma
If we as a rum. 

46:03
Nic Jansma
Group could either encourage another working group to talk about this or have a breakout or something around it. I think that's what she was kind of driving for. Driving towards. 

46:17
Nic Jansma
Do you know if there is a. 

46:20
Yoav Weiss
I see at least one breakout related to agent identity. It may or may not like may need to be hijacked a bit. 

46:37
Yoav Weiss
But. 

46:38
Nic Jansma
Yeah, I will make sure that I can join that. 

46:43
Nic Jansma
What is that on the. 

46:45
Yoav Weiss
Yeah, I just posted it a link. 

46:49
Nic Jansma
Thank you. 

46:52
Yoav Weiss
Yeah, it's. 

46:55
Yoav Weiss
A few folks like I. 

46:57
Yoav Weiss
Met these folks at a, like at a workshop. They have a very specific. Idea in mind for agent identity. It may or may not like. Yeah, I, I think we need to. I don't know if the deadline is over but we can probably propose that. Yeah, we can make this more of a, you know, generic discussion rather than a specific pitch for a specific thing. I don't know if you want to chime in on the issue or if I should but what is kya Know. 

48:03
Nic Jansma
Your agent or something? 

48:04
Yoav Weiss
Yeah, know your agent. 

48:07
Yoav Weiss
It's as the response like it started with like KYC is know your customer, then KYB is know your business and now I guess ZED is next. I don't know if we're wrong this. 

48:22
Barry Pollard
Or. 

48:26
Nic Jansma
Web WebML is obviously meeting there. 

48:28
Nic Jansma
And WebMcP topics are going to be there. 

48:35
Yoav Weiss
Yeah, yeah. 

48:36
Yoav Weiss
And there are a lot of other. 

48:39
Yoav Weiss
Agentic web related breakouts you can see in the. Like there's a label. 

48:49
Nic Jansma
Yep. 

48:50
Yoav Weiss
With 12 sessions on it. 

48:53
Cliff Crocker
Okay. 

48:55
Barry Pollard
So. Okay. 

48:59
Nic Jansma
What we can try to do for. 

49:01
Nic Jansma
The folks that are joining TPAC is. 

49:04
Nic Jansma
Reading a summary of what happened as well. 

49:06
Nic Jansma
Maybe even talk about that at Rum for a little bit. 

49:10
Nic Jansma
If there's anything that we want to. 

49:11
Nic Jansma
Bring back to it. Just kind of keep that communication going back and forth. Yeah, I see a bunch of them as well. I need to set. 

49:23
Nic Jansma
Fill out my tpac agenda. 

49:31
Barry Pollard
All right. 

49:33
Nic Jansma
Anything else? 

49:41
Nic Jansma
Why don't we wrap up a bit early than. Well, sorry, you know, is there anything. 

49:45
Nic Jansma
That you wanted to discuss further about that? 

49:51
Yoav Weiss
Not other than I think we should. 

49:53
Yoav Weiss
Solve this and yeah, I was here for that but I guess I missed it by a week or a month. 

49:59
Nic Jansma
Or something and happy to talk with. 

50:01
Nic Jansma
You about some of the things like a high level summary is just. 

50:06
Nic Jansma
We. 

50:07
Nic Jansma
Talked about how it's nearly impossible to identify. None of the browsers are self identifying. 

50:12
Nic Jansma
Today or a very small portion of them are and we really don't even know the scope of the problem because we don't know what percentage of traffic is genetic or gentic driven so you know, I think we just talked about. 

50:25
Nic Jansma
Some very basic fingerprinting things that can. 

50:27
Nic Jansma
Be used to do it. But I think we as a group. 

50:30
Nic Jansma
Would like a signal, a stronger signal,. 

50:32
Nic Jansma
A declarative signal in some way. 

50:36
Nic Jansma
That might identify either I am an agent in AI control or human control or. 

50:42
Nic Jansma
You know, like some sort of. Yeah, notion of it yesterday. 

50:48
Sergey Chernyshev
Yeah. Just wanted to say that the big question in the room is also the fuzziness of the use case. Right. Like yes, they might be browsers, but are they like, are they giving real users the same? Well, the word agency comes to mind. Right. Like it's not like if you use a browser that it means the user is affected directly. 

51:12
Yoav Weiss
Right. 

51:13
Sergey Chernyshev
So like there is this fuzziness of measuring the browser might not be giving you user experience representation. 

51:25
Yoav Weiss
So yeah, I think that there are. 

51:29
Yoav Weiss
Differences between agent like a co browsing scenario where the site is visible to the user versus a headless scenario where the site is not and then somewhere in between where you know, headless until the user is needed or whatever other model that we'll come up with that, you know. Yeah, that's definitely something to consider and something to see. And there's like, at least I know regarding identity in general. I know that there's a lot of concern from agent browsers that once they will reveal their identity, everyone will just block them. Which doesn't seem like I'm failing to see the incentives there. But at the same time I understand the concern where like, at least from my perspective, the bigger risk is that everyone will like, if they don't reveal their identity, everyone will think they're bots and will block them for the wrong reasons. 

52:50
Yoav Weiss
But yeah, there's a lot of things. 

52:56
Yoav Weiss
To figure out as an ecosystem around all this include like identity visibility, you know, user like interaction modes, etc. 

53:11
Nic Jansma
I think an interesting thing from like. 

53:13
Nic Jansma
The realm perspective as far as whether. 

53:16
Nic Jansma
I did agents should or should not. 

53:18
Nic Jansma
Identify themselves is that I could see. 

53:21
Nic Jansma
Scenarios where rum could help validate that. 

53:24
Nic Jansma
Agentic driven. 

53:27
Nic Jansma
Browsers may have different conversion. 

53:30
Nic Jansma
Rates than a normal person, like randomly. 

53:32
Nic Jansma
Clicking around the web, maybe even more focused, maybe even more likely to complete. 

53:37
Nic Jansma
A conversion or a purchase or something. 

53:39
Nic Jansma
Because the agent has already solved all the hard problems for you and brought. 

53:43
Nic Jansma
You to like the end goal. Right. 

53:44
Nic Jansma
So it could be advantageous in some. 

53:48
Nic Jansma
Ways to prioritize in some scenarios the. 

53:51
Nic Jansma
Agentic browsers coming through because they may. 

53:54
Nic Jansma
Be more valuable to you. 

53:55
Yoav Weiss
Yeah. 

53:56
Yoav Weiss
Or even just, even if they're not more efficient they're potentially more like, you know, by like once they. 

54:04
Yoav Weiss
Actually landed on your site, they are there to get the job done rather than just poke around. I don't know. 

54:12
Mateusz Krzeszowiak
So. 

54:12
Nic Jansma
Yeah, go ahead, Sergey. 

54:16
Sergey Chernyshev
Yeah, just wanted to also say that last time I brought up in my portion of the post presentation I brought up a topic that mobile apps, right, not web. Mobile apps has been kind of an outsider to our RUM community. But as we start discussing these other agents in their fuzzy interaction with web, right, like basically like full web browser, not full web. Everything we just talked about, mobile apps might be part of that conversation. Ability to measure user experience, speed of user experience in those can be part of the same conversation. Maybe we need to generalize. So not going to repeat my spiel fully, but that's what I want to highlight. 

55:08
Barry Pollard
Yeah. 

55:13
Nic Jansma
Okay, some follow ups from today, bringing a summary of some of the. 

55:19
Nic Jansma
TPAC sessions to Web Perkin Group and. 

55:22
Nic Jansma
RUM Community Group ahead of time so people can review that. Looking for opportunities at TPAC for some. 

55:28
Nic Jansma
Of us to participate and maybe prompt. 

55:32
Nic Jansma
One of these sessions or do a breakout on identity. And the next time some of us may be getting together would be at Rumroom. We won't be meeting in November separately,. 

55:49
Nic Jansma
So it'll be face to face. If you're able to make it to Amsterdam for Perfnow and Wromwrom. Can't wait to see y' all in person. 

55:56
Barry Pollard
Yes, Barry, since we've got four minutes left. Not directly rum, but in case any of you missed it, and I don't know how because you're all obviously following me close on social media, but we published soft nav data for the first time in Crux yesterday, which you might all be interested in checking out and might need to greater interest in self navs and request new customers for soft nav support if you don't support it already. So have a look at that or ping me if you've got any questions or any feedback, love to hear it. 

56:24
Nic Jansma
Fantastic. 

56:29
Nic Jansma
Can you share more of that data at Rumron? 

56:32
Nic Jansma
Possibly Barry, or any insights that you're. 

56:35
Barry Pollard
Yeah, I haven't decided what we're talking about there, but that'll probably be one of the big ones. Yeah, yeah. There's certainly going to be a couple of things that we're talking about at there. 

56:43
Nic Jansma
Okay, great. 

56:48
Nic Jansma
All right, and with that, why don't we wrap up for today. Thanks everyone for joining. 

56:55
Nic Jansma
See you all later. 