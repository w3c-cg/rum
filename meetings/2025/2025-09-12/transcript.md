
00:00
Speaker 1
Hey. 

00:02
Speaker 2
Hello. 

00:02
Speaker 1
Hello. 

00:04
Speaker 3
Hello. Hello. How is everyone? 

00:16
Speaker 1
You know, Friday. 

00:18
Speaker 3
Yeah. 

00:20
Speaker 1
Hey, Rick. Hey. 

00:24
Speaker 3
Sia. Is there a cat or a dog? Sia, there's a dog. It's a dog. Show us the dog. He's like about to jump up. We should have more dogs on this call. Mateus has a. Yeah, Mateus, bring the dog. 

01:04
Speaker 4
Data dog. 

01:12
Speaker 1
Am I audible at all? Can people hear me? 

01:18
Speaker 2
Yes. 

01:19
Speaker 3
Are you so cute. 

01:26
Speaker 1
Welcome, welcome. Hi, everyone. She's gonna rejoin a. I don't know. 

01:45
Speaker 3
What happened with Nick. 

01:47
Speaker 1
There we go. Okay. Yes. Real dog matrix rdf. 

02:04
Speaker 3
So is everyone back from the holidays or Sam and anyone have any plans? 

02:11
Speaker 5
Which holidays you're talking about? 

02:13
Speaker 3
I don't know any of them. 

02:19
Speaker 1
All the good summer ones, right? Yeah. 

02:22
Speaker 5
Headed to my summer starting late. 

02:23
Speaker 1
I'm headed to Mexico in a week and a half. 

02:27
Speaker 3
Nice. I'm actually looking. I don't think my fire slices here. So let me see. 

02:36
Speaker 1
Oh, I see it waiting. I just let it in. 

02:38
Speaker 3
Yeah, yeah. 

02:42
Speaker 1
Although it's not yet joined. I saw it in the waiting room, but I don't see it actively joining at the moment. 

02:51
Speaker 3
Yeah, Safe system transcribing. 

02:56
Speaker 1
Yeah. 

03:00
Speaker 5
There is some echo, Nick, from coming from when you speak. When I speak from somebody else or not. 

03:10
Speaker 1
Might be interesting. 

03:12
Speaker 5
Yeah, that might be Carlin. 

03:14
Speaker 4
I think so. 

03:18
Speaker 3
It's our meeting room and the echo is really bad. I'll shut up. 

03:28
Speaker 1
All right, how about we give two more minutes? One more minute, Torrance. I will start sharing a screen. Yay. No more echo. There we go. Fireflies is trying to join again. Yeah. Did it work? So, Caroline, it's weird. It says Fireflies. Oh, there we go. Okay, now it joined. Okay, so now we have automatic note taking which has been useful for us. Firefly is request that we talk to it and I will not be doing that. Okay, let's get. Let's get this kicked off. We are recording. Welcome Everybody to the September 12th edition of the Roan Community Group. I put together a couple slides just to kick off the discussions and such today we'll go over the logistics as usual. Talk a little bit about next meeting to see if anybody has any ideas agenda for today. A couple brief things. 

04:46
Speaker 1
First I would like to solicit some feedback from the group on a particular navigation timing issue that we're looking for rum vendor feedback on. We'd love to talk about interrupt both the current 2025 progress as well as some pre planning for 2026. Maybe we can help influence some of the projects that get taken up as part of that and then I think the main event today would be talking about interesting topic that Isaac had brought together, brought to the Slack a while back around unresponsive crash reporting, self profiling and how they kind of work together and some of his findings and requests. So hopefully a good lively discussion about that logistics page is the same as normal. This has all of the links for anything that you would want to do for interacting with the group. Nothing much new there. 

05:41
Speaker 1
We are still using the Realm CG project in GitHub to track things that the group is working on. We have some projects kicked off there that we haven't made a ton of progress on yet. Maybe a little bit. Things like the server timing registry, server timing best practices document that were going to consider. Certainly would solicit help from anybody here that has some time on a Friday off maybe to work on some of these, myself included. You should be doing that today. Anyway, there are some good things there that we could use more group help with. Next meeting will be next month in October 10th. We target the second Friday of each month, so that will be October 10th. At the same time, my proposal for next week, one of them would be to talk about the Rum Archive. 

06:30
Speaker 1
We have some updates there this year. I'd love to share some of the updates for what we are working on with that project. Maybe encourage others to consider participating as well. Again, a couple other things we have kind of in that list on the bottom right is our backlog of things that we would like to talk about. If anybody is particularly interested in either leading a discussion or really wants to yabber about some of these, please let us know. I think one of the ones that were talking about was. I forget right now. Oh yeah, not stepping on each other's toes. So if multiple rum vendors are on the same page, multiple websites are doing similar things. Making sure we're not causing each other to break could be another topic. 

07:15
Speaker 1
So anyway, either share your ideas in the Slack channel or message us or in the Agenda document, which has these as well. Yeah. So with that, if I could lead just a few topics before we get into the main event there. Okay, so. Oh, go ahead, Sergey. Sorry, Nick. 

07:38
Speaker 5
I noticed that you use Bitly for links. Bitly went rogue and now shows advertising on those links. 

07:45
Speaker 1
I noticed that. Yeah. 

07:48
Speaker 5
Idea to start moving off of that in some way or another. 

07:52
Speaker 1
That's a good idea. I don't know if anybody has any other proposals other than just sharing long links, which would be fine too. But I noticed that as well when I had opened that accidentally that there was now a bunch of advertising on there. So good point. I will take that as an action item to look into a different short URL thing that we can use. Thank you, Sergey. Long links. Long links. Long links. Okay, so as part of the other work that we're doing in the Web Performance Working Group, from time to time we discuss various topics, issues, GitHub issues. And sometimes during those discussions we don't have enough evidence or feedback to make a decision. And we kind of want to look to the broader web to understand it's an impact of a proposal. This is one of those. 

08:40
Speaker 1
So there's a proposal for adding timestamps for activation and dismissal of documents. This is particularly important with cross document view transitions where part of the old page may be held from the unload, depending on event handlers and such like that. And getting a little more visibility into the timestamps for any delays that could be caused could help improve the overall user experience. So in this tab, which I will switch to sharing that tab really quick. We did discuss this last year in the Web Performance Working Group in March. So it's been about a year and a half. 

09:22
Speaker 1
And one of the steps that I noticed when I was looking at this issue was that were going to solicit rum vendors to see if this is impacting any of our customers in hey, we need this data or hey, we have a spot that we're noticing here. Do we have any evidence from the web from any of us where it would be useful to add events such as I think the deactivation start or some similar event like that could help track some of those unknown times. I know like Tim on our side is promoting this unattributed navigation time. And this is kind of like one of those blind spots that we have, I think, where it's like there's something happening but we don't know exactly what. And this may help point out to exactly that. 

10:07
Speaker 1
So the request would be for anybody that either has a website that cares about this or has customers that do. Maybe if we can add some comments to this ticket. Yay or nay, which would. Which would help. Yo. 

10:20
Speaker 6
Yeah, that seems like, you know, without wanting to, you know, throw. Throw the ball over another fence. But this seems like data that browser vendors have and there were like web developers just don't like we maybe the time between those two events is irrelevant. Maybe it's huge and I don't think that we know do we like maybe with lab testing we can get some visibility into that I don't know but like, I guess maybe people on the call can contradict me and say that no, we know that this is, you know, a huge problem or not, but I, I think this is just, you know, an unknown from our perspective and therefore, you know, people won't necessarily ask for things they don't know about. 

11:19
Speaker 1
Was hoping for anecdote of somebody that with a customer it's like, oh, hey, we're having a big problem with this, but we can't pinpoint it. I don't know if that's the case, but I certainly agree with you that if the browsers were measuring this independently, it could help with some of the evidence there. 

11:34
Speaker 5
Sergey, I'm not intimately familiar with the cycle at the end of the page life, so I might be off here, but is that related to overall transition from old page to new page and like just one portion of it? It might be worth documenting the whole life cycle and showing where the gaps are and what this specific event contributes to. Again, I apologize, I probably didn't read enough of that. Maybe, maybe it's already well documented, you. 

12:09
Speaker 1
Know, but I don't think where this document or, sorry, where this potential timestamps would be is in any sort of visual guide, which would help I think with the, the thing as well. I'll pick up to do to myself to maybe request that we try to place that in the existing big timeline, visual timeline that we have. Yeah. 

12:31
Speaker 5
And the last working group event that I attended, sorry, no longer a worker grouper unfortunately. But I think we discussed the security or privacy implications of like who owns which portion of that transition. 

12:50
Speaker 1
Right. 

12:51
Speaker 5
Especially specifically. I think the discussion was about in between redirectors. 

12:55
Speaker 2
Right. 

12:55
Speaker 5
Like when there are like bitly redirectors in between. Well, their current case is weird but you know, but generally who owns who. Who can read this and stuff like that might be also. 

13:10
Speaker 1
Yeah, in this case this is, you know, I think probably same origin, restricted, et cetera. But absolutely there's some caveats to that. So I, I didn't want to rattle on this too much. I just want to say like if this rings the bell to anybody or like, hey, yeah, we had a customer that was really trying to narrow down some things and we can't figure out why. Please add to this thread. Okay. Oh, sorry Erin. 

13:35
Speaker 4
Yeah, I was wondering is this part, will that become part of the waiting time of the time first byte. 

13:45
Speaker 1
It's actually after, if I understand correctly, it's after the first byte while we're still trying to build up, like we're starting to get some bytes of the new document. And then shortly after that would be like after first byte. Then there's possibly some delay from previous page. 

14:01
Speaker 4
Okay. 

14:01
Speaker 1
So I think. But a visual of that would help. 

14:06
Speaker 4
So it will still span a moment from before. Well, from the moment of clicking, but even until after the navigation itself as well. 

14:16
Speaker 1
Yes, it'd be after clicking after first few bytes and then some sort of delay. 

14:22
Speaker 4
Yeah, because the new transition needs to happen. Yeah, that makes sense. We don't get any questions or desires from our customers, but it's interesting to know. 

14:34
Speaker 1
All right, something to be aware of. And if you do, maybe we can use that to help with this. I'll switch back to the slides. Want to Talk about Interop 2025 really quick? So Interop, of course, is a project that's been going on for a few years. Collaboration between browser vendors to help improve and making sure all these features work the same. We talked about this a couple months ago, I think in March maybe of this year. These are some slides from before, but I kind of wanted to look at where we are. We're halfway through or more than halfway through the period of 2025. I focused. So there is a core Rev Vitals feature that was added to Interop tracking, LCP and element timing, if I'm recalling correctly. 

15:21
Speaker 1
It's interesting to see on the Core Vitals specific web page tests, the number of tests that are starting to pass. And we do see some positive movement from Edge and Firefox. I have seen some additional chatter around Safari progress, specifically some tests that they were changing and such. I don't see anybody from Safari on here and I'm not sure if anybody has spoken with any Safari folks if. If we know of any more news about any of that at all. But I just want to share if there was some. Some good changes there. There's probably not any more news about that, but that dovetails into a conversation around 2026. So, Caroline, did I know that you and Erwin were looking at this a little bit. Did you want to talk about Interrupt 2026 at all? 

16:17
Speaker 3
Yeah, if my echo is too bad. Otherwise, I'll leave it to Erwin. Is it okay? 

16:22
Speaker 1
Yes, it's fine. 

16:25
Speaker 3
Yeah, I'll manage that later. Yeah. So interrupt 2026. It's coming. And I'm still going to assume that Core of Vitals will also be part of it through Safari, probably around. I'm hopeful it'll be around for now. But you know, Christmas is fine as well. But then the question is, what else do we want? Erwin's been going through them with me today and we already added loaf today and we added a fetch later. So if you guys could read that and see if there's anything that we want changed and also upvote it, that would be awesome. Cls, I believe, has also been added by Ian Duffy, a couple of others as well. And I think as round cg, it would be good if we upvote all of them to see if we can get the. Keep the momentum going and get those. 

17:32
Speaker 3
I think we're also still missing a couple of them. I think we probably want speculation rules. Scheduler yields would be nice. Are there others? And could you guys. Thank you, Matthias, that would be awesome. And yes, we should also do a mess. We should absolutely do that, Sergey. But are there others? I think we have until October 3rd to add them and I think it would be good if it came from us. Yoav. 

18:10
Speaker 6
There are some things around resource timing that are missing. I think around like early Hints has all the, like the final response in like I believe that there are real interrupt issues. Like these are all feature requests essentially, but I believe that there are a bunch of real interrupt issues around resource timing. We can try to collect them and try it. But I think generally the way that Interop works is just pointing at the resource timing best suite, seeing what it gives in various browsers and I believe that it's not great. Like for resource timing we should probably for navigation timing as well. Like I, I think there is room for like generally all the performance events, seeing where we have a lot of reds and try to cover those. So yes, if I'm looking at. 

19:18
Speaker 1
Yes, yeah, exactly. 

19:22
Speaker 6
So yeah, a lot of red there. It could be greener and it would be nice to add those. 

19:33
Speaker 3
Could you maybe add those? 

19:35
Speaker 6
Sure, I can do that. 

19:39
Speaker 1
So I guess I would suggest for this group there's like, there's two phases here, right? There's the proposal phase, which the interrupt thing did say submission window is through September 24th, so we have 12 more days for that. So anything that we want to get into the proposal queue, we need to get in soon after that. Then it's whether we want to influence the. Try to influence the actual things that are chosen and I think that helps. Last year we had a lot of thumbs up votes on the CLS issue or sorry, not the CLS issue, the core vitals issue. So the non CLS ones. And I presume that so Many upvotes helped influence the fact that was chosen by the browser vendors. 

20:26
Speaker 1
I'm not sure how much we as a community can help influence here, but we should try for the things that we care about. And so then between September And I think December 11th, it's is when we can vote. That does fail nicely with some folks, a bunch of folks being in Amsterdam at the same time and trying to encourage others to vote on things that we think is important as a community. I did have one question. I don't know if anybody here knows for sure. Maybe look into Michael, who I think has a lot of knowledge around Interrupt stuff. Core vitals for LCP and Element timing that are happening right now. Does does like would that I'm assuming like we're not going to all get 200% for all the browser vendors by this year with that. Would that proposal re come up for 2026? 

21:18
Speaker 1
Would we want to repurpose the things that weren't fixed in 2025 for LCP and ET in 2026 as well? Like I don't know how that works. Like should that be another thing on our radar? I don't know if anybody here knows that. Nobody here probably knows that. So maybe that's a follow up that we can do in Slack to kind of get a better sense of what happens for assuming that interrupt for LCP and ET is not finished. Like what happens next and can we help re encourage more drop there? Let's put that here. 

22:06
Speaker 3
Yeah. And Ardor thinks we're forgetting right now. 

22:10
Speaker 1
Yeah. 

22:12
Speaker 3
Anyone? 

22:15
Speaker 1
I think I captured the ones that people were saying but I feel like I missed one that somebody had suggested. All right, so I guess chime in over Slack or hear comments. This will be linked to the Agenda document and we could for example have a tracking issue in our GitHub repo about things we care about for Interrupt and whether those are filed or not. So maybe I can do that and people can suggest. Okay, see. All right. Anything else written up? 

22:57
Speaker 4
I like the signature based sub resource integrity that is. I think it is coming in. I'll add it in the chat as well. Should be coming in Chromium. Although there's a notice at the top of the Chrome status page. I'm not fully sure. I'm also not sure if someone here is up to speed. 

23:17
Speaker 6
There was an intent for this that like intent to ship signature based sri. Yeah, happy to hear your supportive. 

23:29
Speaker 4
Yeah, well I already experimented with it and we are definitely looking at moving to signature based SRI because we are currently supporting resource integrity, but it comes with a lot of hassle whenever someone changes their tracking configuration, for example, because, well, they need to change their hash as well. So yeah, we are eager to move to the signature based solution. 

23:54
Speaker 1
Yeah, plus one for that. 

23:57
Speaker 4
All right then I'll add that to interrupt as well. 

24:03
Speaker 1
Thank you. Okay, good discussion there. Okay, I will. I will kick off this next part of our call with just a recap of a leak to a Slack thread by our compatriot Isaac here. He was talking about self profiling, unresponsive crash reports and business investigations in Slack. It sounded like a good topic for a longer discussion here within this group. Isaac, can I hand it off to you to kind of give a little bit of background and some other things to think about? 

24:41
Speaker 2
Yeah. Hi everybody. If we haven't met, I'm Isaac. I work at Slack on the client performance front end performance team. We are a team of one officially. I have been working on this problem at Slack for four and a half years and although I didn't know it when I sent that message, I just accepted a new job. So I will not be working on Slack next month and I reserve the right to come back to you with a completely different set of problems. 

25:06
Speaker 1
So does that mean there's a performance team of zero then? 

25:09
Speaker 2
They're going to put some people in that seat. I just want to give you the quick history about our battle with web performance and what makes Slack unique. And I want to frame this conversation with I understand Slack is unique and some of the things I'm talking about here don't probably make as much sense for the wider web. There are a set of problems that not everybody has. But I do think there's some value here just on the performance of very large web applications. So for the uniqueness of Slack. Slack is incredibly long lived desktop application. We ship the browser. That's the way the majority of the users who use Slack use it via a desktop app, which includes Electron, which is Chromium. And we see page loads very infrequently, as you might imagine. 

25:57
Speaker 2
We actually have code that ensures that Slack clients are refreshed automatically when the assets that they're using become, I think four weeks old. So that's kind of an idea of how often we see page pops, which is like a little different than a lot of the web. And that also means that we are less concerned with a lot of the traditional web performance metrics. The time to first bytes, the cumulative layout shifts, all of these things that are really about presenting the user with content as soon as possible after they hit enter. We're, we're less focused on those, we're much more focused on metrics that track interactivity like input delay. So when a user presses a key, how quickly does our code get to start handling that? Because maybe the thread was busy doing something else we asked it to do. 

26:44
Speaker 2
We also track interactions, very specific interactions. If you're familiar with Slack or really any chat app, channel switching is an interaction we care very much about. The other thing about Slack, I'll tell you, is that it is a incredibly complex application. It is not just chat anymore. We have real time document collaboration, we have multi user video chat, we have a whole multi window system now where you can pop out channels and conversations in the new windows. And for reasons we don't have to get into in this call, it's all just the one thread. It's all happening on just the one thread. And new things are being built by teams every day. I'll throw out a ballpark number, an unofficial number. Let's say we have 60 plus people building the front end at any moment in time. 

27:26
Speaker 2
So as you can imagine, there's always new code landing and I have a few slides I'll actually show just to walk you through some of it. But the story is really the story of the performance place we're at now, the APIs we're hoping to see and how we got there. And it'll go really quickly, don't worry. Nuts. This isn't like a really long story. So like all of the front end web these days, for better or worse, the application is really framed around unidirectional data flow, predictability of ui. And all you need to know if you don't build web applications every day is the application is a big Rube Goldberg machine. A marble goes in the top and the UI flows out the other end. And every time, any state change happens, we rerun the cycle of reconciling the ui. 

28:14
Speaker 2
I know I'm not sharing my screen. 

28:15
Speaker 1
Okay, So I want to make sure I will. 

28:17
Speaker 2
A sec. If you take that idea and you add a websocket to it and a real time event system to it means at any moment you could be literally trying to reconcile any change into the UI as a user's first name changes, as the channel gets renamed, as a new user gets added to it, as somebody thumbs up a message in a channel you're not looking at. So the, the opportunity for code to run at any moment in time is very high. And the possibility that blocks input or slows a user down really in any way is. Is quite high as well. So when we talk about what are. 

28:52
Speaker 2
Where are the performance problems, it's not as simple as somebody just running a profile on their machine, because their setup of Slack, the number of channels, the frequency of messages sent in those channels, it may not be the same as the customer who's experiencing the issue. I'm going to start by sharing the entire screen. This is very early into Slack Journey, we built a tool called Sleuth, which I'm going to show you right now. There is a secret command our support team can ask you to run and it'll generate this bundle of logs and performance profiles. 

29:24
Speaker 2
We use the chromium tracing APIs in our desktop app to capture full Chromium traces and then we split those off into renderer profiles and we let engineers who are triaging these issues look at a performance profile as if they were sitting at the desk of the person who was experiencing the problem, so they can go through and kind of see where the problems are. We source map this stuff in an ingestion pipeline. And this was like a very huge, a huge thing for the team when this was built because we had these large customers. We have the same thing on the profetto side, like for the full Chromium trace. This is useful less often and useful by a very specific set of people. 

30:01
Speaker 2
But this kind of took these performance escalations we get from big customers, pick any big brand name, you know, imagine them, and really would let us actually resolve the issue. Suddenly these escalation threads that would go on for weeks and weeks of try this, get us a video recording. Suddenly, if we got one of these profiles from them that captured the issue, we could instantly know what was happening. So this was like a very big win for us. There was this other thing that would happen quite often that we call like Slack is unresponsive in the browser. This is just like us taking a concept of Chrome and exposing it to the user. This is browser window unresponsive. This presents in Chrome in a specific way. 

30:45
Speaker 2
But if a user takes some form of input into the application and that input is not acknowledged by the render thread, for, I believe these days it's 15 seconds. Chrome sort of like throws an event that's like, we probably have lost the plot here. It's like, let us know what you want to do, but maybe it's not coming back. And we present this to the user in this way. And the Sleuth tooling is incredible and the ability to get chromium traces is incredible. But when you land here, it's sort of the end of the day because a chromium trace likely isn't going to continue running. It probably won't get uploaded. This was a problem that plagued Slack for a really long time. We could get metrics that this was happening, but we never understood the cause. 

31:31
Speaker 2
Very recently a web API came out that allow you to capture these crash reports and actually if you send the right headers and have the right security setup, you can get the call stacks of them as well. Because we get to own the browser, we plugged everything in the correct way and we actually got these visible in Sentry, which is the piece of tooling we use, so that when these errors happen, these previously untrackable errors, we could suddenly see exactly the line of code that we just basically take a sample of the stack and we say, what are you executing at this moment in time? And that gives usually a pretty big hint into where the problem was. 

32:12
Speaker 2
And this took a problem that was a really long problem for a really long time, and cut the volume in half in a matter of a month because Suddenly we had 14 places in the code we could go fix these things. And it's very easy when you have a line of code to go to a team and be like, hey, this is a real issue. It's affecting this many people. Can you please fix it? And I should note that this is predominantly what I do in my seat is I find the problems, package them up nicely enough to escalate to a team so that somebody else can go fix it. Every now and then I'll fix something myself. But predominantly it's about giving engineers the visibility. 

32:48
Speaker 2
No one wants the application to be slow, they just don't know in which ways it's slow and why. And that's kind of the role of the performance team. Another API we recently discovered that has been really interesting for us is self profiling. If you're not aware, I assume you probably all are. But if you're not, self profiling allows you to invoke the JavaScript profiler from JavaScript and get the data in JavaScript and do what you want with it. If you're curious, there's actually the proposal from Facebook includes a pretty sizable backstory about them experiencing these similar problems, attempting to solve it in JavaScript. They wrote a transformation that would annotate every function call and realizing that this just wasn't a workable solution. And then Bringing it into the browser. This is in my opinion, I don't have all the visibility. 

33:40
Speaker 2
One of those APIs that's probably like right on the edge of should it even exist. I don't think it's getting wide use and I think Facebook's attention has moved on. Meta. Sorry, their attention has moved on, but this was pretty huge for us, especially when we talk about typing responsiveness and input delay. That portion of typing that's we haven't started running your handler yet. Also going to throw out there is a overhead to using this. So we do not use it on our customers, we only use it on ourselves. We have plans on how we would use it on our customers. But what we do is we run a profiler constantly. We let the buffer fill up and then roll it over on every engineer that works for Salesforce and Slack. 

34:22
Speaker 2
And when we hear about an input delay event, we look back in the buffer, we steal those little bits of data about what was being run and we throw it up through Pyroscope, which is traditionally a back end profiling tool, but it doesn't know the difference. So. And then suddenly we get this sorted list of all the hotspots of what is blocking input. And again, incredibly actionable. We with this built up, you know, a list of like 30 to 40 things we had, we got 12 engineers to staff working through that list and we had high confidence that fixing each one of these would have a real impact on user experience. Something really interesting. Just like a random note, the thing that this pointed out was mostly forced layout. And that's like sort of a problem on the web. 

35:05
Speaker 2
It's difficult to get real visibility into when that's happening and when it's blocking input unless you captured in a profile. But this was like a list of the 20 components that were calling the wrong properties and suddenly causing these forced layouts that were delaying input. That's that one. And that's the end of my explanation of the things that we work on. I just kind of wanted to have this open discussion about. These things are really hard to work with if you're just like some engineering shop building your tool. We really had to plug a lot of things into each other, build a bunch of infrastructure just to get to this point where we could see this picture. 

35:45
Speaker 2
And every time I open the Chrome dev tools these days, I'm greeted with these beautiful numbers that tell me exactly how my application is performing on the web. I personally wonder if there's a place for the browser or the tooling to also tell Me, hey, here's the biggest 20 hotspots that are causing pain for your users. I just feel like that would basically let my job be eliminated, which is the dream of my job since I started. I don't want to have a person in the seat at this company. I just think we just need to get the right information to the right people and the right engineers. But that was a little bit of a rant I'd love to hear. Any thoughts, questions, anything or not? Or maybe it was just all perfectly. Yes, go ahead. 

36:39
Speaker 7
So I totally get the crash reporting. I don't think we have anything else that would, you know, solve that issue. But like, I'm wondering about the like constant profiling thing. It is expensive and you mentioned that like, it helps you like debug slow interactions and stuff. We have the law of API, which also gives you a lot of this information I think right now. So do you see any like, added value on top of like, what we can already extract from the location law of events? 

37:14
Speaker 2
Yeah. So we do actually capture the law of data and we have looked at the attribution and again, this is probably uniquely slack, but because of the way that we batch updates and because of the shape of our state management system, they always just point at the same line of code. It's like, oh, you are flushing the ui. That's the expensive thing. So when I talk about something like channel switch, we can also wrap that channel switch interaction with self profiling. And we do. And that paints a slightly more interesting picture of the specific function calls of the dispatches that lead it up to the UI being flushed and maybe the force layouts in there that were contributing to the cost. I do think that's a really, I think that's a really powerful API. 

37:59
Speaker 2
I think that's going to add a ton of value for people. It hasn't proved as useful to us. 

38:05
Speaker 7
Yeah, that's interesting because I think, Yoav, correct me if I'm wrong, but I think we are seeing a similar thing. We are trying to track some of the things across the entire platform, like problematic scripts basically. And like the attribution itself is not great. In a lot of the cases we are just like seeing a wrapper or like a jquery. Whereas like the original code that is actually calling something and making things slow is somewhere either up the call stack or down the call stack. But it's hard to say without, as you said, having the entire profile and seeing the entire trace. So. 

38:49
Speaker 1
Yeah, yeah. 

38:52
Speaker 6
So just a short comment that like specific Cases where we're seeing this could probably be useful as bug reports to like either Chrome or the spec, depending on what we think, like whether Chrome is doing the right thing in terms of the spec, but the spec is wrong, or you know, but generally this wouldn't be useful. 

39:20
Speaker 2
Bug reports, just to quickly speak to the first part as well with self profiling. So our plan to scale that up, and we're still not confident we're going to do it, is that we've kind of gotten to the place where adding the header does not incur the massive cost which used to be the issue. So we're closer to a world in which actually calling the API is what's expensive. And if we get there, the idea was that for a small percentage of sessions for a one active minute across a small number of users, we would spin up the profiler and see if we can capture one of these input delay events. 

39:54
Speaker 2
So to try to minimize as much as possible the performance impacted any given user, there are still a lot of questions if doing so is going to like disable a bunch of optimizations or something in V8, and if there's like a long term cost of even turning it once. But that's kind of like the exploration path were going to go down. 

40:15
Speaker 8
I'll jump the queue. There was a long thread. There's an open issue about that. Exactly. Is that the context that you're describing or did you independently stumble upon this. This idea of the V8 stack sampling mode being able to sort of have a fixed cost on every load, but then it's easier to start up versus very lazy, but then you can delay it for specific subset of users. There's an issue about that in some threads. 

40:40
Speaker 2
I would have to see the issue because we at one point raised an issue and then landed a fix that was like drastically reducing that one time cost. And probably in that discussion we brought to the point of like, do you even need the header? Could calling the API just be the thing that initiates this? But it's possibly the same thing. 

40:58
Speaker 8
Okay, I didn't realize that came from you. Thank you for doing that. 

41:05
Speaker 1
Sergey. 

41:06
Speaker 5
Yeah, I have two notes. 

41:08
Speaker 1
One about. 

41:11
Speaker 5
Removing yourself from the job eventually. I don't think that will ever happen. No matter what we collect, action cannot be taken. As Matthias just said, like getting to where in the stack, like that will never happen. Like with best tools we will have to investigate. 

41:27
Speaker 1
Right. 

41:28
Speaker 5
So education and training for people who will be using automated or whatever collection tools that we could automate still needs to happen. Right, so that's my first comment. I mean yo, I've said it correctly. AI will do that for everyone. Yeah, sure, tomorrow. But the other actually is the question, you obviously mentioned specific life of Slack that basically is both web app and browser, right? How much of this collection is only available on the browser side and will not be available to ROM vendors who are not running their own browsers? 

42:14
Speaker 2
Every everything I've talked about today, aside from the Sleuth and the Chromium tracing, invocation, all of that is API available, self profiling, call stacks and crash reports. It all kind of lands in a different place when you use the API directly. And I don't think there's any tooling that actually currently takes the unresponsive call stacks and in a century pretty way shows them to you. But it is all available via API? Yeah, of course, mostly Chrome. 

42:44
Speaker 5
And for crash reporting that is available in the browser level, is there anything that can be done to start collecting that and sending it to the server? Like I'm not an expert in there, like, but Mel exists, right? Like there are probably other collection endpoints that could be advertised or something like that. Is that something you're thinking of for that or. 

43:10
Speaker 2
No, I think if a provider like if Sentry suddenly had that feature where you. Yeah, I'm going to come back to this. But if Sentry suddenly had that feature, we would happily pay them to solve that problem for us. We'd like to spend down all our infrastructure and source mapping and pipelining to get it all visible. So yes, definitely, this is like a complete random note that probably deserves to be an issue somewhere. But the self or, sorry, the call stack and crash report API is sort of bundled with others in a single reporting endpoint. So you get into this weird place where if you want to send crash reports to one vendor but you don't want to send like the. I think it's like CORS audit errors or something like that. It's like there's no way to do that with the API today. 

43:57
Speaker 2
So that's like a slightly weird bit. But we would happily pay someone to do that. We'd happily pay someone to do all of this. There is one self profiling vendor out there, we have experimented with it a bit, but it doesn't seem like it's going to work for us at the moment. The only other thing I want to quickly comment on is when I talk about the elimination of my job, it's like of course engineers will also be always be doing the Work I think about like the path that front end error reporting has gone through where again, picking on Sentry. It's like we're at the point where a new error shows up. The system alerts to a channel. It uses git to do line level attribution. 

44:35
Speaker 2
It assigns a member of a team that owns that thing based on file ownership rules that are defined like code owners. Basically it becomes a problem for someone packaged in a nice way where an engineer can just move forward with it. That's my dream for this space. Obviously people are going to always have to look through everything and fix it. I just, I don't know if we need a separate group of people sort of chasing every feature release trying to be. Trying to find a performance issue and then get to the team before they started working on the next thing and their attention drifted elsewhere. 

45:13
Speaker 1
Michael, I'm assuming you had more things to add on. 

45:18
Speaker 8
Yeah, I mean, thank you, Isaac. That was an excellent presentation. I had a question about the specific example you showed with like input delay where you could tag that what recently happened, what you were just profiling in the past to upload that assigned with this event that happened and then you could aggregate that. So there are kind of two different systems at Google that we use that does something like that. And I was curious, which one is this more like? So one system will sort of upload a specific trace and so you'll get like 1000 trace events and you could see like this event happened, here's what happened before, here's the event that happened. Here's the thing you could see the severity of the input delay. Let's use as an example. 

45:59
Speaker 8
Now the downside is you might have to crunch the numbers to figure out what are the patterns as opposed to just opening one trace. It might just be flake or whatever. On the other hand you get a perfect view of exactly what happened. So you get to have deep insights. There's another system that tries to take thousands of reports and create an average sample, an average stack. And so at a glance you could see typically what tends to happen. But that has its own trade offs where you know, if it's like death by a thousand different possible issues, they on average look like a small chunk and so they won't really stand out. And anyway, I was curious which one of those is the system you described more like? Or did you have something in the middle that's different? 

46:44
Speaker 1
It's. 

46:44
Speaker 2
It's much more like the second in your description. To try to solve this issue of the different categories of problems you might experience. We do very simple bucketing on the amount of time that the delay took up. Then we tag those separately in pyroscope as like, this was 100 to 300 milliseconds. This was 300 to 500 milliseconds. It also helps that our application is mostly one big text box and a few other things. It is all in our case shape. Quite similarly, on the input delay metrics themselves that come out of Performance observer, we do this thing where we look for like a container boundary. 

47:22
Speaker 2
So when we hear about the input delay, we go up one level in the tree and we look for like a data attribute on the thing to say this is input in the quick switcher, this is input in the message input, you know, to sort of try to categorize them that way. 

47:34
Speaker 1
Cool, cool. Thanks, Isaac. I don't know if you cover this fully and some of the things you're talking about when talking about overhead with the self profiling API, you mentioned a couple cases where you thought it might be causing some overhead. Like do you. Did you guys do a study on how much keeping profiling API on constantly or restarting constantly would cost your users at all? 

48:07
Speaker 2
I can tell you exactly, because the way that the API works is you send a header that's like, I allow this. And then later you call something like Create profile. We naively were like, let's just start sending the header. Because it's a header, it's like very easy to just consistently send. And then we'll start calling the API as needed. And then in the graph of page load there was this big jump and we realized that it was actually, we used some of the more recent APIs that let you break down all the little chunks of page load and were able to attribute it to. It was actually calling that API. That's the thing we made a big impact on. I couldn't tell you if there is runtime performance cost. 

48:49
Speaker 2
I think the only way for us to do that would be to use our experiment system and see if turning this API on is negatively impacting input delay. And we're just not ready to do that yet. But. 

48:59
Speaker 1
Okay, so yeah, go ahead. So you noticed a startup cost, if you will, a base level cost, and then there's possibly an additional runtime cost for enabling later. But you haven't been able to quantify that yet. I know that like I was looking into self profiling a couple years ago and I didn't see a lot of data out there around this. Like, I think Facebook had published a report where they had said it affected less than 1% page load time or something like that. Don't quote me on that, but I would love to have more real world reports of how much it's actually affecting things. 

49:34
Speaker 2
Yeah, our naive view is that it's like generating a stack trace. It's like the browser certainly has to do some work to unwind inline functions and where does this actually go and what does the code actually look like? We have given the our desktop folks who know Chromium much better have said that once you run a JavaScript profile the page is not going to perform the way it should until you refresh completely. It's like you've sort you suddenly turn off a bunch of deoptimization that doesn't get turned back on. I don't know if there's Chrome folks in the room if anybody knows the answer to that, but yeah. 

50:09
Speaker 8
That sounds plausible. I linked to the issue that I was referring to before and that has some a different perspective of numbers. It's an older thread, I didn't see your name on it so there may be a different thread. But anyway Paul Irish did some benchmarking and there were a few other folks that did it looked like running the full suite of Speedometer would have a 3% difference in scores. That's different than perhaps like the initial hit on loading versus like this what you're saying and that was just passing the header without trying to start sampling. Once you start sampling there's another hit. 

50:43
Speaker 8
There's a different mode that you can use the same feature within V8 which is like don't Basically the header currently enables does more work up front so that once you create a sample it's less overhead and so that is an interesting trade off like if you delayed all of the upstart for when you make your first sample in that poor performance moment now you're affecting so you're not really measuring that thing if that makes sense. But you kind of don't want to send the header for every single user of your product. So anyway that thread goes over maybe we need to make some trade offs or make it configurable or do something but you mentioned the graph went up when you enabled the header. Could you say more about which graph? Because I'm curious about that initial cost. 

51:29
Speaker 8
Maybe you don't have the exact numbers. 

51:30
Speaker 2
But yeah I will have to get back to you. This was like two and a half years ago but I can definitely find the thread pretty quickly and tell you exactly what went wrong. 

51:40
Speaker 8
Thank you. 

51:41
Speaker 2
It was presenting in the application as white, so the window would load, you would just see nothing. Even though we had content that was already in the browser and there were CSS styles, it would just get stuck there and then suddenly it would start up. I'm talking in the realm of 1/2 second to 1 second, but we ship a lot of JavaScript. Too much JavaScript. 

52:08
Speaker 1
Very interesting. Yeah. 

52:10
Speaker 2
All right, well, thank you all for the time. I'm not asking for anything. It's just like an idea I wanted to throw out there and a problem I wanted you all to hear about. 

52:19
Speaker 1
Well, I'm trying to bring it back to like, can we take action on some of the things some of your learnings can we influence by making this better, more easy for people to track this kind of data? Certainly. You know, the overhead discussion that you and Michael talking about I think is one track in doing that. I don't. Were there any other takeaways anybody else picked up on that or you'll. You and I could consider bringing to WebPerf to improvements on. 

52:50
Speaker 6
My main takeaway is that which. Yeah, I guess I kind of knew a lot like Loaf attribution can be improved and ideally a lot of the like. Maybe Loaf can be a way to distill some of that stack race info. 

53:11
Speaker 2
And. 

53:13
Speaker 6
Make sure that people don't have to go to that particular power tool and get that info in a lighter weight way. But yeah, we need to like. I don't know that there's an open bug on this and there probably should be with a lot of examples. 

53:42
Speaker 1
Michael, did you still have your hand up or unintentionally. 

53:48
Speaker 8
Nope, sorry. I don't know why it's not closing itself. I will put my hand down. 

53:52
Speaker 1
Just always say it. Hello. Sorry. 

53:56
Speaker 2
Yeah, just like sheer curiosity, does Loaf attribution work in like a fundamentally different way than the way that call stacks and crash reports? Is grabbing the stack at a given moment like. 

54:10
Speaker 8
It does? Okay, so Loaf only marks the top level of the stack. 

54:19
Speaker 1
Right. 

54:20
Speaker 8
Even that is a little bit different, but you don't get the full stack. Instead you say a task was run from here to here, including all micro tasks and stuff like that. So it's very coarse, but it's very inexpensive and is running all the time. Now there are some things about Loaf where we restrict how often it reports and possibly it would be much cheaper to like tune those dials. And then there was a feature request that hasn't had work put into it where frameworks or Application authors could sort of play a role in saying this subset of the task is kind of a new resource or something, or new framework. And so the proposal was performance, not bind. But basically you could wrap a callback and then it would tell Loaf that this subset of time is attributed to something different. 

55:08
Speaker 8
There are other ways to do that, but. 

55:09
Speaker 2
Yeah, yeah, that makes total sense. I think that could provide a lot of value. I assume that if you were to also report, like report the largest child chunk by self time, it's like suddenly you're in the profiling problem again. It becomes now incredibly expensive to generate that data. But I think that's more in the realm we're looking for. I think that explains the attribution problem. If it's just the top of the stack is always like flush UI for us or something. So yeah, what about. I'm very new to soft navigations, but is there like, is there the possibility for attribution there? Is it already in there? I guess it's not. It's not really. Yeah, go ahead. 

55:55
Speaker 8
So the way soft navigations work is you start with an interaction, you establish a context, the context persists across scheduling hops and so you could know anytime any code is running, you could sort of get the original context and the original context points back to an interaction. So it's kind of like a back pointer that persists. So that's an interesting feature. And there's a project to expose that capability via Async context project. And so now anytime you update DOM UI and then anytime Chromium paints, we can map the paint to an element, the elements to a context, the context to an interaction. So what you don't get is why was it long? 

56:39
Speaker 1
Right. 

56:40
Speaker 8
We don't do that type of attribution. Instead what you say is this is how long it took to see some visual update and it was in some way triggered by this interaction. And then soft navigation adds some heuristics that are specific to this idea of navigating and like URL changes. But like the interaction to paint tracking goes through those hubs. There is somewhere a feature request that says, well, if there's a low off script entry along the way and we have a context, could that be useful? Like provide that link as well. So you have the original event timing for the interaction, you have eventual paints and however long that took. And along the way some scripts ran that might have had that context. So tell you the story along the way, that could be a thing that we could add possibly. 

57:31
Speaker 2
Yeah, makes sense. 

57:32
Speaker 1
Yeah. 

57:34
Speaker 2
Like you. I could also imagine a way that like an application could. Developer could throw up some bit of like, you know, string context of like here's the sort of work we're doing and if we, if we ended up. If we ended up having captured a navigation like. Like the browser ended up deciding during that time there was a navigation like those could somehow get added to it. I think going back to self profiling and the react Facebook's team story about that, it's like the problem is we don't know those things. The problem is that they're like all hidden in the call stacks of what's actually happening. We time all the things we think are the long things and then we make them not long and then it's the 10 other things that turn out are the remaining problem. 

58:15
Speaker 2
So that's why the profiling API has been really beneficial to us. 

58:25
Speaker 1
Wonderful discussion. Thank you Isaac for taking the time to lead us through that. Sharing your pain and. And the successes that you've had. I don't know if there's any other thoughts on that at the moment or we can close out for the day. Okay, next meeting again will be October 10th. I think I said ideas for the meeting are always welcome. Please reach out. 

58:50
Speaker 3
And just one more thing for everyone who's going to performance now and is not yet aware we have, as Sergey called it, a ramrom, a real user meetup with thanks to Philip in the Google headquarters the day before performance now. And if anyone's around, please join and please fill out the Eventbrite link to do so as we need. No, you're right in time. It's no problem at all. Even if you would be a bit later. Matthias. Yeah, so Matthias, sorry, lots of things happening as much. But fill out the Eventbrite link at least three days before because we need to tell the security guys at Google that we're coming, bring an ID and we'd love to see you there. 

59:51
Speaker 1
Exciting. All right, thank you everybody. Have a great weekend. See you next month. Cheers. Bye bye. 
