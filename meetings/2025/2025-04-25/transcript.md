**00:10**Brian Kardell\
So did Nick know and did he deliberately.

**00:13**Cliff Crocker\
I did not.

**00:14**magnus dahl\
No.

**00:15**Karlijn Lowik\
He's a Verstappen, apparently. So he's in. Oh, there went my Fireflies again. So you're in good company with Erwin.

**00:39**Nic Jansma\
Give everybody two more minutes. How about.

**00:43**Karlijn Lowik\
So how is everyone?

**00:47**Nic Jansma\
Good.

**00:48**Nic Jansma\
Good.

**00:49**Brian Kardell\
Yep.

**00:50**Karlijn Lowik\
Are you in a train, Magnus?

**00:54**Nic Jansma\
Yes, I am.

**00:56**magnus dahl\
Wow.

**00:57**Karlijn Lowik\
How is that going? The Internet looks good.

**01:02**magnus dahl\
Yeah. Yeah.

**01:06**Karlijn Lowik\
We. We always have terrible Internet when we are on a train.

**01:14**Nic Jansma\
Probably a better Internet there than I do at my house.

**01:18**Brian Kardell\
Ouch.

**01:20**Karlijn Lowik\
Yeah, you're the 99% though.

**01:27**Nic Jansma\
All I can get is Comcast cable here. They're fine, but not the fastest and not the most reliable.

**01:36**Karlijn Lowik\
I sometimes feel like everyone in web performance just tends to have bad Internet and out of that annoyance comes the job.

**01:43**Nic Jansma\
Right.

**01:45**Karlijn Lowik\
Don't know if there's two minutes, but that's a theory.

**01:50**Andrew Creskey\
No, it's true. I've purposely avoided high speed Internet so I. I have a better appreciation of the pains and I live in Canada, so I don't have any choice.

**02:00**magnus dahl\
Yeah.

**02:01**Nic Jansma\
Isn't it.

**02:02**Cliff Crocker\
Isn't it Etsy that does that?

**02:04**magnus dahl\
Like.

**02:04**Cliff Crocker\
Well, they'll have days or like weeks where they are. Everything's throttled so they can get a exposure to like what their users are seeing. Pretty awesome.

**02:13**Nic Jansma\
Good idea.

**02:14**Karlijn Lowik\
Yeah. Well, I mean sometimes. Sometimes you just want to get things done, then it's not so. But Erin actually used to have this. This really old phone is really old computer and he always said. Yeah, it's for testing purposes. Yeah.

**02:35**Cliff Crocker\
Are you recording, Nick? Since we've got so many people away.

**02:38**Nic Jansma\
Yes. Yeah, I've set these the meeting schedule to auto record once we start. It's always probably a good idea to double CH with the. The icon before we get started. So. Yeah. So this recall is. Sorry, this call is recorded for everybody that has joined. We will post it into the realm CG agenda, Google Doc later once we processed it. Yeah, why don't we. Why don't we get started? I'll just kind of kick off some of the meeting if everybody's okay with that slide. Okay. I think I'm sharing the correct window. Can everybody see a little slide deck pop up? Yeah.

**03:26**Brian Kardell\
Okay.

**03:27**Nic Jansma\
All right, community, thanks for everybody joining today. Obviously I know some of us can't make it or it may be hard because there's holidays around here. Tried to do our best a couple weeks ago was also another holiday for many people.

**03:40**magnus dahl\
So.

**03:43**Nic Jansma\
Going to kind of go through some of the standard logistics ahead of time. We'll talk about the next meeting briefly. Agenda for Today, two things. One is we wanted to do a quick follow up on the discussion we had last time around. An issue tracker for our group for things that we care about and then that kind of segues nicely into well, what do we do about those issues? How do we actually make progress here? And we have. So we have a discussion around funding browser work for, sorry, funding features for browser development or whatever. We have some folks from Magalia here today as well. We'll probably wait, if you don't mind, until that section to do a few intros if that'd be okay. Brian and team and so we can see everybody here a few logistics ahead of time.

**04:33**Nic Jansma\
This is our standard logistics slide. Now we trying to meet the second Friday of each month because we pushed this one off, this meeting today off two weeks. The next meeting is actually in two weeks. We're going to keep try to keep that schedule. So it'll be May 9th is the next one. Other standard invites and links are here. We've added details about the new tracking project to this slide deck as well. I'll be going over that in a minute. And we have a GitHub repo where we're hoping to put meeting minutes, links and other group details and stuff like that. Next meeting will be two weeks from now. Friday, May 9 at 10am A topic that was proposed is around HTTP header adoption. So diving more into the details of time, origin, server timing, etc.

**05:28**Nic Jansma\
Two thoughts there that are coming top of my mind is one how can we try to get more usage of these headers, which I think in general benefit rum and two, do we want to do any sort of standards around them or conventions around them? Proposed proposed ways that we can all speak the same language. So that was a proposal for next time. If you have other ideas, feel free to reach out to the chairs. In the agenda document there is a backlog of topic ideas at the top. People can vote there if they would like. We're crossing them off when they're done. Kind of a lightweight way of soliciting and voting for ideas. So feel free to vote for ideas.

**06:08**Nic Jansma\
If you would like.

**06:12**Nic Jansma\
All right. Anything else from the other chairs? Nope. Last meeting about six weeks ago, we had talked about the idea of doing some sort of issue tracker for the things that we care about. So there's, you know, we have a diverse group, we have a lot of different companies and people represented here. We probably have all different priorities, but I think there's a few common ones that may help many of us. Things that we would like to see implemented in specific browsers specked out in another working group because it's important to us bugs that we're tracking that are affecting some or many of us. And so we thought we often when we're getting together we're often talking about what are the most important things to us as a group.

**07:02**Nic Jansma\
And I think having some sort of issue tracker might help us agree or disagree to many of those. The proposal was to use GitHub project for this. Here's a screenshot but I'm actually going to jump into the actual project itself. We are live in the project. It's a public project just called Rum CG Tracking issues. We're still playing around how we're going to use it and organize it, but an idea might be to organize it into a couple high level categories around very specific user agent issues. So for example there may be things we care about in Chrome or things that aren't implemented in Firefox or not implemented in Safari. And so we're categorizing a few things here.

**07:49**Nic Jansma\
For example, for our discussion coming up, one of the things that we had talked about in the past was around funding browser work for things like LCT and I impaired event timing. I know some of that may be affected by some of the interrupt stuff now which is great. But tracking things that we as a group care about. Other things would be like feature requests, things that we want in specs so updates to resource timing together content encoding or to compress beacons to compress uploads transparently. Some of these may require spec work especially like in the web perf working group. Some of these may just require dev work or are being dev and that's great. Some of them are things maybe we cared about in the past we advocated for. They got specs dev and are shipped like including content type.

**08:42**Nic Jansma\
So I think it'd be good to also track just as a group of things that affect us. So again we're still playing around with it right now. I think only admins can add issues to here which are Cliff and Caroline and I reach out to us for now if there are other things you think we should track, maybe we can see if there's another way of automatically allowing other the rest of this room community group to add things or propose things for this. But with all that being said, I think one of the nice things about this is that can actually help target our what are the things that we as a group things that we want to discuss more in the RUM community group.

**09:28**Cliff Crocker\
Right.

**09:28**Nic Jansma\
Maybe we have some Hairbrained ideas that we want to see if the rest of us care about. That'd be a good thing for us to have in this forum. Maybe that idea gets advanced enough where we're like, no, like we all really want this. We don't produce specs in Rum cg, but we know other people in other working groups that do, like the web Performance working group. We can bring some of the ideas that we all think are important and the use cases, why, and we might have them over the wall and see if the web working group would want to work on them. These are things that, you know, we're already working on in WebPerf WG for example. But maybe they require some spec work, some discussions there to see if we can get agreement.

**10:11**Nic Jansma\
And then beyond there, let's say the specific work is agreed upon, it's even in the spec and in that. Now how does it get implemented? Well, each user agent has its own priority schedules and things that they care about. Maybe they want to implement something, maybe they just don't have the resources to. There are a subset of these categories that I think would be useful again for the next conversation that we're leading into. If the user agents don't have the time to implement something, maybe we as a group could help fund something. Wild idea. We'll talk about it a little bit more in a few minutes. Anyway, so that's kind of the idea for the tracking issues project. It's rather bare right now. We added a few things that we thought of in the past that have affected us.

**11:07**Nic Jansma\
Maybe there's more and I'm sure there is. And so if anybody here has any ideas for any of these stages, things that are just wild ideas that you want to talk about or things that require some spec work because we want to get it cross browser specified or you know, that One of the UAs is missing this critical feature that the other UAs implement. Maybe we could that on this board too.

**11:32**Cliff Crocker\
Nick, I have a question. So with the spec work that we have here, is there an opportunity for the working group to actually come back to this group to say, like, hey, here's our backlog. What are the things that this group cares about to at least sort of give opinions or feed into prioritization for the working group as well?

**11:54**Nic Jansma\
I hope. Yeah, absolutely. And I hope that these two groups can work good together. Right. And they serve different purposes. Right? Like this is a more open forum, we have more membership, more people can join because it's free. We are a very focused group. Even though we have different needs, we're all kind of trying to do the same thing. Whereas the Web Proof working group is much more UA focused. I would say, like a lot of the work comes from the browser developers and their employees and there's a good back and forth that can be had. Like we can help talk about the things that are important to us and then the working group can decide is this something that UAE would consider to spec to implement and then maybe need feedback. Back again to the rum cg. Right.

**12:39**Nic Jansma\
There have been many meetings in the past in WebPerf where we're like, well, who cares about this? Or like what's your use case? And it's often like maybe one or two actual implementer or one or two actual users of these APIs in the call and the rest is browser developers and they want more community feedback and so we can help provide some of that.

**13:00**Cliff Crocker\
Yeah, I think that's fantastic. And I think a big function of this group, hopefully to make, to provide input to that group. It might be, it might be worth looking at, you know, for a future meeting. Can we have, you know, I know you, Yoav or someone else kind of come and talk about what's currently on the working group's backlog, what you're focused on to kind of bring people up to speak. Not everybody goes to the working group meetings either. Probably a large majority of people here don't. So that might be a good topic if we want to maybe float that to those chairs, if we know them, one or two.

**13:39**Nic Jansma\
And related to that, actually the web ref working group next week is actually having kind of an offline issue triage where we have a lot of specs and we have issues tracked in GitHub for all the WebPerf specs and we have a big backlog. And so we're actually going to be kind of going through those and seeing like which ones have we made progress on, maybe which ones are not relevant because they're eight years old. My guess is coming out of that we're going to have some questions about like, are these important? And I'm hoping from that I could bring a subset of those back to this group and say, hey, like, are there any of these important to you here? You know, and then bring it back to work. So great. Eric, Eric, I'll hand over to you.

**14:21**Eric Goldstein\
Yeah, Nick, thank you so much for sharing this. I'm not going to go into the details, but like, I'm really interested in contributing a few Ideas here. And I'm just interested in how to get in touch with you to like maybe discuss some of these ideas and have maybe one or two of them added to the board.

**14:38**Nic Jansma\
Absolutely. Are you, are you part of Slack to the Web?

**14:43**Eric Goldstein\
Yes, I am.

**14:45**Nic Jansma\
Reach out to Rome. Rome. There's a channel for us.

**14:56**Nic Jansma\
Okay.

**14:56**Eric Goldstein\
So I'll start on the Slack.

**14:58**Nic Jansma\
I'll go from there.

**14:58**Eric Goldstein\
Thanks.

**15:02**Nic Jansma\
Okay. Any other thoughts or questions around the stuff?

**15:07**Cliff Crocker\
This is looking great, Nick. I think it's awesome. I think we'll kind of figure it out. And also maybe as we get more familiar with people looking at this and providing feedback, is there more opportunity, does it make sense for us to track like backlog for this meeting which we're now doing in a Google Doc in here and you know, will we be keeping agenda or meeting minutes and stuff in here as well? Obviously stuff we can talk about in the future, but I think it's nice.

**15:35**Nic Jansma\
We will evolve, right?

**15:37**Nic Jansma\
Yeah, yeah.

**15:41**Nic Jansma\
And I think with the. That is a good segue. I'm going to hand it over to Cliff to kind of kick off a discussion with.

**15:48**Cliff Crocker\
Yeah, so Nick kind of alluded to this a little bit and also in the agenda for this week, really, I think that, you know, part of the, this idea, you know, did kick off at Perf now or actually Web Perf Days in Amsterdam, you know, back in November. And also kind of a good premise for like why we're putting this group together, I think, you know, trying to get collective input on moving things forward that we care about, features that we care about. So we wanted to have kind of a follow up session to that, which was our getting stuff done in WebKit talk that we did at Web Perf Days. And specifically out of that came a few different approaches. You know, how do we get moving on these items?

**16:35**Cliff Crocker\
Do we, do we shame the browser vendors into actually doing this and adopting it? You know, do we, you know, look at other ways of like, you know, creating use cases and you know, kind of input for why this work needs to get done? I don't think we really talked about interrupt, but that ended up being, you know, huge and obviously, you know, Brian Townsend and Nicole Sullivan and others that kind of, I think sort of helped champion that looks like it may have had some success as well, hopefully. But the real one that kind of stuck out is I would say, you know, maybe a little bit of a harebrained idea.

**17:15**Cliff Crocker\
You know, we've got a lot of us on this call collectively that work for different size companies, whether you're, you know, small company, like Speed Curve or, you know, larger company like Akamai or Ikea or that. But the idea was like, hey, could we actually start to look at funding some of this work? Is there a way for us to maybe, you know, crowdsource the funds to be able to go out and hire someone or, you know, consult with someone to actually build the features that we care about that are in our backlog? It was a really interesting discussion. I think there was a lot of ideas around that. We wanted to kind of bring that discussion here to the group. And this does require some interaction from you all on an early morning or afternoon, whichever it might be.

**18:01**Cliff Crocker\
But we want to hear from you. We want to hear, is that something that we think has legs? Is that something that, you know, we've seen work in other cases. We're really fortunate to have Agalia here, who is one of those groups that actually has done this and has been responsible for getting a lot of features we care about in browsers that, you know, are for hire. So we want to hear from them as well. Before we do that, I kind of want to open it up to the floor and get some feedback. Like, what do people think about this idea? You know, if you were to say, okay, yeah, this looks like it has legs, what would that look like at your organization? Is there, are there challenges there? Is there difficulty there?

**18:43**Cliff Crocker\
Do you think that this is something that you'd actually be able to champion within, you know, your own orgs? So maybe I'll open it up to the floor a little bit and ask for just initial feedback on the concept. Not everybody all at once, though.

**19:06**Henri Helvetica\
Quick comment and question. Didn't you have do this quite a few years ago? And I was going to say, like, we could get some feedback from him around the Responsive Images Community Group. Like, I feel he was like the first person I remember being in that kind of scenario. Now, I could be completely wrong, but then that happened.

**19:37**Cliff Crocker\
Well, yo was. Was certainly one of the ones that was championing this idea and kind of raised it. So I believe that it did. I don't know Brian or Nick or others.

**19:46**Brian Kardell\
Yeah, yeah, no, I, I'd like to.

**19:48**Brian Kardell\
Reply to that, actually.

**19:49**Brian Kardell\
So, yeah, Yoav did actually try to.

**19:54**Brian Kardell\
Crowdfund something years ago for Responsive Images Community Group. He was also in the process of sort of switching jobs, so he like, was going to do it anyway and like, use that as a way to also sort of fund that, so it wasn't just all him, you know, so he didn't like really raise enough.

**20:19**Brian Kardell\
Money to do it.

**20:21**Brian Kardell\
I mean he raised a, I don't know, few thousands of dollars.

**20:28**Brian Kardell\
There have been other attempts to crowdfund some things. Certainly like lots has come since then.

**20:39**Brian Kardell\
Though that, you know, has. That aids your ability to do that. So back then there was no really GitHub sponsors, there was no open collective there. You know, we hadn't had all these experiments that we have now.

**20:54**Brian Kardell\
I'll be happy to talk about.

**20:55**Brian Kardell\
I don't want to hijack this with the answer, but I'll just say that.

**20:59**Brian Kardell\
Part of this does come from Yoav.

**21:01**Brian Kardell\
And I talking and Yoav was one of the ones that kind of championed this idea. So yeah.

**21:11**Nic Jansma\
Brian, if you wouldn't mind, since we've heard from you and would you mind just giving a very brief intro of yourself and any other members pass off to them, just say hi.

**21:22**Brian Kardell\
Yeah, sure. So I'm Brian Cardell, I'm a developer advocate at Agalia.

**21:29**Brian Kardell\
We're in open and I'm here with my colleague Dape.

**21:33**Brian Kardell\
Do you want to say hi?

**21:35**magnus dahl\
Hey.

**21:35**José Dapena Paz\
Hello.

**21:37**Brian Kardell\
So Dape is currently do some work in container timing and has other relevant experience that's in Chromium. We have some colleagues who would have been great to have on this call from WebKit as well, but they were on holiday and short notice so we couldn't make that happen unfortunately. But yeah, I think Dape is like more than capable of handling most of the technical questions if we have any.

**22:07**Brian Kardell\
But we work on the web platform.

**22:15**Brian Kardell\
We're the number two contributors to WebKit by a long shot actually we're like 16 of all commits to WebKit project come from Magalia. We're currently number two in Mozilla repos. The Mozilla repos for all the Mozilla projects.

**22:37**Brian Kardell\
Number one in Servo and up until very recently were number two in.

**22:43**Brian Kardell\
Chromium until Microsoft surpassed us. But for me the bigger question is why did it take Microsoft so long to surpass us? So yeah, we do a lot of.

**22:55**Brian Kardell\
This and we do a lot of it through contracting with companies who have needs that aren't being met. The priorities aren't being paid attention to.

**23:06**Brian Kardell\
I, I think everything that you said was totally relevant.

**23:09**Brian Kardell\
I actually made a note that I think that the priority question is also.

**23:15**Brian Kardell\
Relevant in terms of specking and the attention that things get in proximity to one another.

**23:24**Brian Kardell\
So roughly speaking, the longer it is.

**23:27**Brian Kardell\
Between the first and the second and.

**23:29**Brian Kardell\
The second and the third.

**23:30**Brian Kardell\
I think it raises the difficulty a little bit and you wind up with like, not enough scrutiny early on. Creates kind of problems. So aligning the priorities of all these engines is really hard. And having a fund that you can direct at will when it's necessary is, I think, a really great idea. I. Yep.

**24:04**Cliff Crocker\
Nick? Nick, do you had a question or a comment?

**24:08**Nic Jansma\
Yeah, I mean, I guess I would say a couple things. Thanks for. For the intro. I think that sets the stage, at least from how in some ways the galley might fit into the picture here. You had a question earlier, Cliff, about just general thoughts on this, and I'd love to share my own, just really briefly, which is that budgets are tight everywhere. Is my. My sense of the world right now. I think we, the chairs and I think we other people that have talked about this in the past think this is probably a long and will be hard to do. But I think it's very much worth trying to talk about it and see if there's something that can come out of this.

**24:46**Nic Jansma\
Like, I know, you know, personally coming, going to my leadership and saying, hey, I'd like x thousand dollars to be part of a fund for a thing that we think is important will be a challenge. Like that'll be political, bureaucratic challenge within my company. Not because Akamai doesn't support things, but just because it's hard to get funding for things. But I think, you know, if there are specific discrete things that we think are very important to this group, I'm excited for a conversation like this to figure out if we could try to at least attempt. Attempt it and see how it goes. I don't know if there are any others that at all.

**25:34**Brian Kardell\
Yarek.

**25:36**Nic Jansma\
Yeah, I guess my.

**25:37**Eric Goldstein\
I guess the. What it sounds like is like the implicit admission here is that like, I mean, if. If money is an issue, like, I mean Apple is certainly no. Does not have money issues.

**25:52**Barry Pollard\
So.

**25:52**Eric Goldstein\
And I'm not trying to assume that we should tell them how.

**25:56**Nic Jansma\
That they.

**25:56**Eric Goldstein\
How they spend their money. However, the implicit admission here seems to be that like, Apple is not. They're far better than they were a couple of years ago, but they seem to be. The implicit admission seems to be that they're not totally open to having these kinds of discussions. I'm curious what the actual kind of action on the ground is when these types of discussions are brought to the WebKit team because, like, they have some wonderful engineers and I'm sure the engineers are interested in having these discussions. So I'm curious, like, where the pushback is. Is it coming from the engineers themselves? Is it coming higher up? Is that just. Is that an opaque process? I'm curious where the. Where the pushback is, if that's even something you guys have access to.

**26:37**Brian Kardell\
Does that mean.

**26:41**Cliff Crocker\
Eric, would you mind? Yeah, there you go.

**26:42**Nic Jansma\
I think that the echo.

**26:43**Cliff Crocker\
Unfortunately, I think it's coming from you, but go ahead.

**26:45**Brian Kardell\
Sorry, I was just confused if somebody.

**26:47**Brian Kardell\
Else was also trying to speak.

**26:50**Nic Jansma\
So.

**26:54**Brian Kardell\
You know, there are a finite.

**26:55**Brian Kardell\
Number of people on all of the teams. There are finite number of people in Chromium as well.

**27:02**Brian Kardell\
So if I show up and I really want to press something that.

**27:06**Brian Kardell\
Chromium is not actually interested in, because they already are using all of their people to do the things that they.

**27:11**Brian Kardell\
Care about.

**27:14**Brian Kardell\
It'S not going to get a priority either. Right. So how you direct these things is really tricky. Historically, Chrome has had like, a 10x investment. They also do what is effectively the R and D of the web platform, which is great on the one hand, but it creates other problems on the other hand, because now they've invested all the money and they don't necessarily want.

**27:44**Brian Kardell\
To make changes and other people have to catch up.

**27:46**Brian Kardell\
And that's what I was saying about the priority.

**27:49**Brian Kardell\
Like, the longer you go in between the first implementation and the second implementation.

**27:53**Brian Kardell\
Maybe the harder it gets.

**27:56**Brian Kardell\
I think that there are some challenges. There are things that don't come up.

**28:02**Brian Kardell\
In those conversations because it's just scrutiny and who's scrutinizing which things.

**28:10**Brian Kardell\
So sometimes there can be, you know.

**28:12**Brian Kardell\
Concerns that are related to, like, privacy or security or, you know, things that, you know, they're just.

**28:22**Brian Kardell\
For whatever reason, they're.

**28:23**Brian Kardell\
They're not being caught because there's not enough eyeballs on them at the right eyeballs.

**28:28**Brian Kardell\
So all these things need time.

**28:31**Brian Kardell\
And they're all battling for the attention, which is really precious because the web.

**28:38**Brian Kardell\
Browsers, they're not just web browsers.

**28:42**Brian Kardell\
The web engines are what underscore everything. My colleague Daphne can tell you more. But basically every screen that you touch at this point in the world is running a web engine, more or less. Right. Every screen that you see, billboards as you drive down the streets, they're all web engines.

**29:03**Brian Kardell\
So they have a lot of needs.

**29:06**Brian Kardell\
You know, like the. The use cases are everything.

**29:10**Brian Kardell\
So it seems these things might seem really important to this group.

**29:16**Brian Kardell\
But everything seems really important to some group, you know?

**29:19**Nic Jansma\
Yeah.

**29:20**Brian Kardell\
So.

**29:24**Cliff Crocker\
Yeah, very valid. Nick, I don't know if you had comments.

**29:28**Nic Jansma\
Oh, sorry. I must have been clicky keyboarding. Yeah and I don't want this to be thought of as just an Apple problem. Like I don't see it as that.

**29:39**Brian Kardell\
Right.

**29:40**Nic Jansma\
Like I think the two use cases that we talked about were in particular at in wiper saves that we talked about here have been implementing of things in Safari and apparently, you know, via Interop we might see some progress there, which would be great. But I think in general I would love to not put this in the context of like any one particular browser or anything. I just like to see as a group, let's say there's a wild new thing that we all care about but like for whatever reason all the other vendors are just really busy like could we fund a prototype in Chromium or something? And I think that ties in very nicely to something that DAPP has been working on with container timing for Bloomberg.

**30:24**Nic Jansma\
And I'm not sure if either of you would want to speak a little more about some of the background of that. That in some ways I think that's another good use case. It's got kind of like a modern example of one company funding one thing with some experimentation, feedback cycle.

**30:45**Brian Kardell\
Talk about that.

**30:50**José Dapena Paz\
Hey, yeah, I say that the Bloomberg case, in this case it's not the only case. This being investing a lot in web standards as they need them. They identify issues and then they propose solutions on many ways in css. They've been contributing a lot in. In this case the part that I work with on is basically I've been working on telemetry integration, improvement of instrumentation specifically around chromium. And yeah basically that's the thing. Once there's the idea there's a part that is trying things try to find out the possible audience for a change to see if more people will be interested. It's all the process to get into to finally get working standard in Kotal timing. It worked like this. It was Jason Williams from Bloomberg and me.

**31:52**José Dapena Paz\
Basically Jason started doing some experimentation, a polyfill and then from that we decided that it would be used to try an implementation to see if it was really hard or how complex it would be. Actually I landed the implementation of container time in Chromium and implementation is a bit simpler than we would expect on first aid. But the thing is that it's important to actually try and see what can be done in chroming. It's very easy to do this kind of experimentation because of the. Or the model of. Well, they intend to experiment all these different actions. You can do origin trials, things like that. Well, in other processes I don't have so much understanding of how they work I could do.

**32:46**José Dapena Paz\
What it is for this meeting is that basically preparing, reviewing some ideas on how hard it will be to implement LCP and event timing and other things. But that's the idea. There are some common ideas that you need that you can reuse when you implement cross browser. And then there are specific things that are very specific to each of them. Like the painting engine is way different in each of them, but in the end you need to generate more or less the same information if it is available. So yeah, it's how it works. And all the funding is over like this. When there's people interested and there's some way to allocate hours to the work, then things move faster. It's as simple as that. So when we have that, it's easier to try things to move faster.

**33:41**José Dapena Paz\
And if there's this kind of attitude towards trying things, experimenting and contributing back to the work community, I think it's the best thing because we try real things, we work on real problems and then we find something that could be useful for more people.

**34:04**Cliff Crocker\
I have some kind of general questions about how folks work with Ogalia. I don't want to jump ahead if we want to talk more about, you know, about container timing and what any learnings from that, but it might be kind of appropriate to sort of think through that because one thing I'm sort of trying to get my head around before we jump there, is there other direct questions around container timing? So this is maybe a little bit, not meant to sound cheeky, but I mean, how does this work? So I want to see container timing in WebKit like and you know, it's awesome to see the work that's been done in chromium. I think it's going to be, you know, it's going to be what we really should have built for element timing. I think that it's going to be fantastic.

**34:57**Cliff Crocker\
I want to get this work done. How does that process, what does that look like? Like, who do I call? Do I just call Brian and be like, hey, give me a quote, like, let me know how much is going to run me. Obviously it sounds like maybe there's a lot of discovery, experimentation, a lot of unknown around how to scope these things. What does a typical kind of process look like for an organization that comes to a value to get something done?

**35:24**Brian Kardell\
Yeah, I mean we work time and materials, of course, you know, nobody wants.

**35:32**Brian Kardell\
To Just go into something completely informationless. So, you know, we do some research and we try to give you some kind of like idea, some estimates on.

**35:43**Brian Kardell\
T shirt sizing, what we think we'll.

**35:46**Brian Kardell\
Typically do some due diligence to go and you know, look at the difficulty of maybe depends on what the case is. Like if it's other implementations, if it's WebKit, we can. Well, in this case we have Dape who's got the expertise in another engine. So you know, we have him talk to somebody on the other team and.

**36:05**Brian Kardell\
Discuss and get a pretty good idea and we might have some preliminary discussions.

**36:11**Brian Kardell\
With friends at Apple and say like.

**36:13**Brian Kardell\
Hey, look, we're interested in this.

**36:15**Brian Kardell\
Like, are you like fundamentally opposed to it? Like, can we get your attention on a standards position? Right, let's get, let's put the pressure on that because we have potential funding.

**36:30**Brian Kardell\
And so, you know, a lot of this is like you're talking about priorities. And I said, if I come to.

**36:39**Brian Kardell\
The table and I want to talk.

**36:42**Brian Kardell\
About the thing that Chrome is, doesn't want to talk about and they don't have the resources allocated to that. The fact that somebody else is going to do it makes everybody sit up and say, okay, all right, let's get.

**37:04**Brian Kardell\
Something done on here.

**37:05**Brian Kardell\
So it's another forcing function, a lot like maybe a Chrome intent to ship. Chrome intents are good sort of forcing functions to say, hey, this just took another degree of seriousness.

**37:20**Brian Kardell\
Maybe if you can, now would be.

**37:24**Brian Kardell\
A good time to allocate some kind.

**37:26**Brian Kardell\
Of resources to reviewing how much you care about this.

**37:30**Brian Kardell\
So a direct conversation with some people.

**37:32**Brian Kardell\
At Apple and WebKit to see, you know, are we fundamentally opposed to this?

**37:38**Brian Kardell\
Are you willing to work with us? And usually the answer is that they're willing to work with us.

**37:44**Brian Kardell\
I've only seen maybe once or twice where, you know, it's come down to a standard position that's like, yeah, no, it's not gonna happen.

**37:53**Brian Kardell\
And yeah, that's it.

**37:55**Brian Kardell\
And then we sign a contract.

**37:57**Brian Kardell\
I will say though, that if we're talking about doing something as a group, that's not general, that's probably.

**38:03**Brian Kardell\
Not the model that we're talking about here. Right.

**38:06**Brian Kardell\
So Agalia does also have a mathematical collective.

**38:12**Brian Kardell\
That is one of the ways that we support work to work on MathML.

**38:17**Brian Kardell\
Which is exactly the case here where it can't get priority from any of the engines, actually. So that's really interesting. I will say that it's really hard.

**38:28**Brian Kardell\
To raise money historically that way we.

**38:30**Brian Kardell\
Also have a collective for servo, which is exciting.

**38:36**Brian Kardell\
And so it has like a lot of really small contributors, but no big ones.

**38:43**Brian Kardell\
So you have to get really, a.

**38:44**Brian Kardell\
Lot of small contributors to add up to substantial money, you know, but it.

**38:49**Brian Kardell\
Really depends on where we think the size is. I would say, like, a good thing to do would be to come up with a goal and then try to.

**39:04**Brian Kardell\
Raise toward that goal.

**39:07**Brian Kardell\
But I like, I would try to make it some kind of sustaining fund.

**39:12**Brian Kardell\
That you can then direct how you want.

**39:15**Brian Kardell\
Because priority is also relevant in this group, probably, right? I mean, four companies all have their.

**39:21**Brian Kardell\
Own ideas about what's important, but if you've collectively put in, you know, and.

**39:27**Brian Kardell\
You have, say, 60, 90, a hundred thousand dollars, whatever it is.

**39:36**Brian Kardell\
Like, you.

**39:36**Brian Kardell\
Have to decide how to spend it, like, that's also a good forcing function.

**39:39**Brian Kardell\
To can you actually get agreement?

**39:42**Brian Kardell\
So. Yeah, sorry, I think that was a really long winded answer.

**39:47**Brian Kardell\
I hope.

**39:47**Brian Kardell\
I actually.

**39:48**Cliff Crocker\
No, I think it actually provides some clarity, at least for me. I, I think one of the things I'm hoping was hoping coming out of this discussion was a, hey, what does the path forward look like? Like, what is the relationship between our collective here, like our community group and Ogalia look like? Do we have a, do we have a, you know, Brian, is it you? Are you our sponsor at Ogalia that we work back with? Or is there's like a, you know, another teammate or somebody sort of assigned that can kind of be our liaison, if you will? I think the mechanics of it are really important here just to sort of understand so we can start to get our heads around it.

**40:28**Brian Kardell\
So to be clear, like, there are examples of these things, like the servo.

**40:31**Brian Kardell\
Collective, or there's the one we have.

**40:34**Brian Kardell\
For our browser, Wick.

**40:35**Brian Kardell\
There's another one for math.

**40:37**Brian Kardell\
Mel. If you're looking at some kind of collective model, then the thing to do.

**40:40**Brian Kardell\
Would be to decide how you govern the money that you collect. Yeah.

**40:45**Brian Kardell\
And it doesn't have to be with.

**40:47**Brian Kardell\
A galia as like the, you know, we're the only ones that can do.

**40:51**Brian Kardell\
The work because it depends on how.

**40:54**Brian Kardell\
Much money you raise. I mean, maybe you only raise enough money to, you know, do some bug fixing or something. Right. But whatever money you raise, you have to decide how you're gonna do it.

**41:06**Brian Kardell\
And so kind of the, the.

**41:09**Brian Kardell\
Main thing is, you know, you.

**41:13**Brian Kardell\
Decide.

**41:15**Brian Kardell\
These are the sort of like voting members, and then you know, whatever you decide, like four times a year, twice a year, once a year, we're going to decide how we direct this money. And then basically it's just like, you know, you come talk to a Galia and say here's the money we have and would you be willing to work on this? And probably the answer is yes and pretty normal from there.

**41:46**Nic Jansma\
Nice, nice.

**41:52**Cliff Crocker\
I think that makes a lot of sense. I think for this group it's sort of the thinking about, you know, what does that look like? And thinking about like you know, if were to do this, I think we tried to do this before like wpo, like there wasn't there like a non profit that was essentially Pat that set that up to fund webpage tests and you know, compute costs and things like that we did get sponsorship for from like Akamai and Sosta and other places that sort of, you know, contributed to that group. Does anyone have more intimate knowledge of.

**42:28**magnus dahl\
That.

**42:31**Cliff Crocker\
How that works?

**42:32**Nic Jansma\
Before my time. I remember, yeah, I remember there being some sponsors on the early days of the stuff.

**42:40**Cliff Crocker\
Yeah, I mean I can take an action to maybe follow up with Pat and get his feedback about how that worked. And yeah.

**42:51**Nic Jansma\
Brian, for the collectives that you set up, I think you mentioned MathML and Servo. Have any of those been, have any of the contributions been from major companies or has it been all small individual contributors.

**43:10**Brian Kardell\
For MathML and Servo? They have not been. We have some contracting on those that.

**43:18**Brian Kardell\
Is not through the collective as well.

**43:21**Brian Kardell\
So I guess typically if you have.

**43:24**Brian Kardell\
Like a nice bucket of money yourself, it would make a lot more sense for you to contract with a Galia to do the parts of that you care most about and also you know, save yourself some percentage in fees that you have to pay to Collective or GitHub sponsors or whatever. So.

**43:47**Brian Kardell\
But there is also a Gallia's open.

**43:49**Brian Kardell\
Prioritization experiment that we can look at as an example and that got, I.

**43:55**Brian Kardell\
I can, I, I don't want to misspeak but I would say I think.

**44:00**Brian Kardell\
That something like 80% of the actual funds that were raised were through a few larger donations of like $10,000 or $5,000 or $15,000. There were 150, 200 donors but you know, most of the actual money came from larger contributions. In the Woolwich collective there we had a small number of like 500 or $2,000 a month. I think sponsors.

**44:49**Nic Jansma\
That'S good to know and I think for we represent in this group many companies of different sizes. But like I don't think anybody here is expecting Any particular company to want to pony up a very large amount of money for something like this. But if we could do a few five thousand, ten thousand dollar commitments, that may be feasible. I don't know, again, like maybe a long shot, maybe feasible, I don't know, but it's worth exploring a bit.

**45:21**Cliff Crocker\
I wonder if it might be worth, you know, maybe we can sort of look at our backlog. We can look at what other things and features that we're looking for. Obviously we're sort of in a holding pattern waiting to see what happens with LCP and bit timing, but maybe we can go through and look and grab something and say, okay, let's maybe take this idea. And I keep going back to element timer, container timing, but maybe we take that idea and say, okay, Agalia, one, what do you think? Like, is there a T shirt size, like estimate we can get for something like this?

**46:00**Cliff Crocker\
Because I think the thing we don't want to do is go out and get everybody to sort of extend themselves past the hat and all of a sudden we have like $15,000 and we can't even scratch the surface on something.

**46:12**Nic Jansma\
Right.

**46:13**Cliff Crocker\
Like then we've got people's money that we can't do something with. So I think trying to get an idea of, you know, like what size like of the bread boxes that could be useful for the group.

**46:29**Brian Kardell\
Yeah, I think we would have to go back and do some of.

**46:33**Brian Kardell\
That work, talk to our WebKit colleagues and stuff to give you some kind of.

**46:39**Cliff Crocker\
Yeah, totally. Well, maybe that's a good sort of takeaway from this as well, is like as a exercise for this group, like, you know, does it have legs? Do we think this is something we want to try and do? So like, you know, do we, do people care enough about like a specific.

**46:57**Nic Jansma\
Feature that we want to, is the.

**47:00**Brian Kardell\
T shirt size kind of thing, like.

**47:02**Brian Kardell\
The bread box size, whatever you want to call it that you're looking for.

**47:05**Brian Kardell\
Related to container Timing in WebKit is.

**47:07**Cliff Crocker\
That I'm being very selfish in saying that myself because I care about that. But so I don't want to speak for the group, but just as an example, I guess.

**47:15**Brian Kardell\
Well, can we do a.

**47:18**Brian Kardell\
Like a straw poll so that Agalia knows if that's the thing that we're being asked to T shirt size, like.

**47:29**Brian Kardell\
Maybe can you, if you agree that's the thing, give us a thumbs up.

**47:33**Brian Kardell\
So it's Nick Clifford.

**47:42**Cliff Crocker\
Are there, are there other things? Actually?

**47:43**Brian Kardell\
Yeah.

**47:43**Brian Kardell\
Are there other things?

**47:44**Cliff Crocker\
Yeah. Like what are, you know, since we haven't really done this exercise, like are. If someone wants to suggest something else, like we'd love to hear about that.

**47:54**Nic Jansma\
And I will say, like the rallying point for us back in the fall was these two things that have been picked up as part of Interrupt as well. Right.

**48:00**Nic Jansma\
So yeah.

**48:01**Nic Jansma\
Or yeah for Interrupt. So I think we're still trying to understand like is there something if we're not doing. We focus on that because we're going to assume and hope that there's a lot of progress there. Is there something else that this model would work really good for? Because those were the very obvious ones to us, of course.

**48:18**Brian Kardell\
So I don't want to, I definitely don't want to hijack your meeting.

**48:24**Nic Jansma\
No.

**48:26**Brian Kardell\
But I'm curious, can we do a couple of emoji polls? Because we have, we do have like.

**48:31**Brian Kardell\
What, seven, 21 people on the call.

**48:33**Brian Kardell\
So 21 people have been sitting here for kind of a long time. I assume that means there's some kind.

**48:39**Brian Kardell\
Of interest in the idea, but can.

**48:42**Brian Kardell\
You maybe give us an emoji thumbs up if you think there that you're.

**48:47**Brian Kardell\
You find this an interesting idea just.

**48:50**Brian Kardell\
To confirm that or.

**48:55**Ivailo Hristov\
For me just kind of the.

**48:57**Brian Kardell\
Okay.

**49:00**Ivailo Hristov\
So I have kind of a question in terms of Interop. Do we know like what's going to be done this year for sure with Interrupt. These are the things that are planned there going to happen or not? Because I think that's also going to affect the poll.

**49:17**Brian Kardell\
So I, so I'm on an Interrupt committee and I can tell you that we choose things together that we think.

**49:27**Brian Kardell\
Are plausible that we can get done this year. We try to make it an achievable but ambitious goal.

**49:34**Brian Kardell\
So everybody has bought in on that. I would expect the, you know, effectively that's kind of public statement that we're.

**49:44**Brian Kardell\
We'Re all intending to work on that.

**49:45**Brian Kardell\
So it's not a promise but it's, you know, I think you can expect.

**49:53**Brian Kardell\
There to be a big jump in passing tests on anything that's interop in all the browsers.

**50:06**Cliff Crocker\
But there is no formal statement or commitment. I think by Apple say it says we're going to have this done by this time. You know, I, I don't think there's ever anything like that. But, but I think it is just.

**50:22**Brian Kardell\
More of there is data to show though that it has.

**50:27**Brian Kardell\
It has never happened.

**50:30**Brian Kardell\
I believe that the only time that.

**50:31**Brian Kardell\
Somebody has failed to meet that it was actually Google.

**50:36**Ivailo Hristov\
I, I assume there are also like Priorities to work on things in the so I wonder if there is a specific priority regarding the new let's say LCP for example.

**50:51**Brian Kardell\
So the way that Interop works is.

**50:54**Brian Kardell\
That we get submissions from the community, we get about 100 to 150 and then we work together to see which ones we can include interop and what platform tests are relevant to them. And we create there's a scoring mechanism.

**51:12**Brian Kardell\
So the things that are in there are the priorities.

**51:15**Brian Kardell\
So got it.

**51:23**Cliff Crocker\
Here. Yeah, I'll post a couple of just like wrap ups. One from one from Google, one from Apple actually where they talked about interrupt 2025. That to me did show there is, you know, obviously a level of commitment there. I, I found it interesting anyway to look at these two and sort of compare notes. I think Nicole Sullivan wrote the one for WebKit and then there was a web dev blog that I just posted.

**51:53**Barry Pollard\
Yeah, I mean honestly the browsers all have veto authority and some people get that. But the good thing is that if anything gets past that, then there's a full intention here to do it. So it's not like they've said we're going to give you IMP and LCP and they have no intent to do it. Of course nothing's guaranteed in this world.

**52:12**Nic Jansma\
Google's going through layoffs for example.

**52:14**Barry Pollard\
Apple could go through the same or whatever. So but I don't think, yeah, I think we can safely assume that failing major catastrophes INP and LCP will be delivered across all three browsers by December 31st. There may still be some follow on bugs and that might have to go into Interrupt 2026, but the basics should be there and that's the commitment that they give by accepting something into Interrupt. Subject to all the usual caveats. There's no guarantees until it's done. But yeah, there's certainly not an intent to say we're going to do this and then not, as Brian says, very rarely do we not deliver on them. It's just we kind of only get to 98% or 90% or whatever.

**53:01**Nic Jansma\
Yeah.

**53:08**Nic Jansma\
Yannick, sorry, copyright microphone. I have one question about maybe you can shut them. Shed some light on this with the funding in the galley's experience with the funding that happens. Does can or does some of that funding often go towards working with the working groups to also help not just on the dev side of things, but on the specification side of things. And the example here that I'm thinking of again is container timing where in this case, like I've seen Jose Round Jace Williams from Bloomberg is also often around kind of pushing it.

**53:46**Nic Jansma\
And that's why, in my opinion, one of the reasons why container timing has been continued to be going forward is because there's multiple people that have energy, multiple companies that are kind of like keeping it in everybody's mind and sharing the experiments and saying, oh, we're gonna look at this next and we'll come back and we'll share with the group what we had. And it's been really successful as a result because we keep on hearing about it, we keep on hearing the updates and how it's improving and the benefits it's giving to companies like Bloomberg for the terminals and stuff like that. So I didn't know how much, like, how is it often like that?

**54:20**Brian Kardell\
I think it's almost always like that. Like this was the caveat that I was making to your earlier point when I was saying that priority.

**54:27**Brian Kardell\
Is also in specking. And it has to do with like.

**54:31**Brian Kardell\
How disparate, how far apart the implementations are when you can get multiple people working in multiple engines kind of interested and focused at the same time.

**54:42**Brian Kardell\
The working group tends to be kind of more productive, in my opinion, because you're not.

**54:50**Brian Kardell\
Well, we need to revisit a thing.

**54:52**Brian Kardell\
That we thought we expect and solved, you know, a year and a half ago and now we find out that we're wrong.

**54:58**Brian Kardell\
But now we have web compat issues potentially. So yeah, I think almost inevitably when.

**55:08**Brian Kardell\
You'Re implementing something you will find holes in the spec, you will find questions where, like it says this, but what's actually implemented appears to be something else. And you have to take those to the working group. Right. So.

**55:29**magnus dahl\
Yeah.

**55:31**Cliff Crocker\
We'Re kind of coming up on time here. Just wanted to kind of give a last, like if anyone else has any burning questions or thoughts for Agayo. And thank you so much for joining. I think this has been really super insightful and helpful and gives us something to sort of think about and take back to the group and on a little bit more. But any other questions or thoughts before. Before we start to look at wrapping?

**55:58**Nic Jansma\
One quick thing I will note unrelated and we can get back to this, but Barry may have some updates for some things. Barry, would you mind if we actually gave you five minutes on the next call in two weeks?

**56:09**Barry Pollard\
I was literally just typing that saying we've gone over here, but this was an interesting session. So yeah, go next week.

**56:16**Brian Kardell\
Okay, back to this. Sorry, go ahead.

**56:21**Brian Kardell\
I just include this to your last point. Focus visible and WebKit was the final implementation and you can see there's lots of posts and blogs here about the things that went through. Oh, we need to add new web platform tests. We have new spec questions. So that I think that's informative if you curious. Nice, because it was also crowdfunded.

**56:52**Cliff Crocker\
Awesome. Well, this is helpful, at least from my perspective. I'm really intrigued to see how this might work for us and how we can maybe start to work more as a collective to get some of these things pushed through that we've been wanting for a while. So thank you so much for joining. Nick, do you want to close us out? Is there anything else we want to kind of wrap up with here?

**57:13**Nic Jansma\
No. Yeah. Again, thanks for the Agalia folks for joining today. You know, certainly they're not the only ones in town that could do this kind of work, but I think they're a really good example of success that I have seen. I think it's been really helpful for me to kind of understand a little bit more about what are the possibilities here. So maybe again, bringing that back to the list of open issues in the room tracker. And I know folks like Eric was saying that he has some ideas for that. I would love to solicit filling that out a bit more. And I think we can use that for talking, for facilitating discussions, for helping prioritize voting, if you will, on what's important to us. So please reach out either in the slack or privately or email whatever you want to any of us.

**57:55**Nic Jansma\
We can add issues there. Yeah, thanks for everybody joining the participation. And that's a that session. The next call is in two weeks because we got behind by two weeks for this one. So we will be talking about headers and how much we see them in the world and how can we make them more useful for rum vendors and maybe we could have some standards and stuff in those. So looking forward to that in a.

**58:20**Nic Jansma\
Few weeks as well.

**58:23**Cliff Crocker\
Also, I wanted to give a shout out to Carline's Fireflies note taker because it assigned all the action items to not Nick.

**58:29**Nic Jansma\
So wait a second, I did not.

**58:36**Karlijn Lowik\
It accidentally got added, but it's.

**58:40**Nic Jansma\
It.

**58:40**Karlijn Lowik\
It's also quite useful.

**58:44**Nic Jansma\
Wow. Yeah, it did actually assign everything to me. Okay, all right, fine. I'll do it all.

**58:50**Cliff Crocker\
See you in a couple weeks, everybody.

**58:52**Nic Jansma\
Thanks all.

**58:54**Brian Kardell\
Thanks, bye. 
