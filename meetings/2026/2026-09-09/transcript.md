00:00
Karlijn Lowik
Yeah.

00:00
Magnus Dahl
Okay.

00:00
Karlijn Lowik
Awesome.

00:01
Magnus Dahl
There we go.

00:04
Nic Jansma
And the correct firefly this time.

00:08
Karlijn Lowik
Yes.  That was so awesome.

00:10
Nic Jansma
It was helpful because we still.  We were able to get the summary from Henri's version, which was fine, but did you ever see.

00:17
Cliff Crocker
It was hilarious because he just like,.

00:21
Karlijn Lowik
He had no idea that he even had it.  He was like, what are you talking about?

00:30
Cliff Crocker
Like, you're missing an important meeting and Henri, I'm gonna.  I'm gonna record it for you.

00:34
Karlijn Lowik
Yeah, yeah, that's okay.  But just nice and stare.  Yeah.

00:42
Nic Jansma
Let's give folks a few minutes before we start.  Anybody have any fun summer holiday adventures that they went on that they would like to share?  Show and tell with the group though.  I wish I did.

00:55
Ryan Townsend
Oh,.

00:58
Karlijn Lowik
We had like a little.  Basically a leprechaun cottage in Belgium.  So it's very small.  Quite near Robin Marx, though geologically, geographically, but yeah, but.  And also very hot.  So we wanted to go to Italy and were like, no, if Belgium was already this hot, we're just staying here.

01:21
Cliff Crocker
Yeah.

01:22
Nic Jansma
That's awesome.

01:24
Sergey Chernyshev
My vacation is in November in Netherlands.

01:27
Ivailo Hristov
That's.

01:27
Sergey Chernyshev
That's how we roll.

01:29
Karlijn Lowik
Well, it's nice that you're there.  I can recommend a lot of things, but the weather is probably not your friend.

01:38
Nic Jansma
It's something we put up with.

01:41
Karlijn Lowik
I. I actually once proposed, like, can't we do the performance now?  Somewhere tropical like in Gran Canaria or something?  Everyone still has trouble.  We might as well get some sun.

01:55
Nic Jansma
I like that idea.

01:56
Cliff Crocker
You need to start pushing on pbk.

01:59
Karlijn Lowik
Yeah.  I mean, we're already moving venues.  We might go abroad.

02:06
Cliff Crocker
Baby steps.  Couple blocks at a time.

02:10
Magnus Dahl
Yeah.

02:11
Karlijn Lowik
Yeah.  I did propose it to Tim a couple of years ago.  Like even the second version of it was just like a nice tropical sucks on the beach kind of vibes.

02:24
Nic Jansma
Like it?

02:26
Karlijn Lowik
Yeah.

02:26
Sergey Chernyshev
If we are moving, keep moving in that direction, we'll be on North Pole soon.  So that's the only change.

02:35
Cliff Crocker
Icelands would be cool.

02:36
Nic Jansma
Won't we all.

02:37
Karlijn Lowik
Reykjavan, Iceland would be cool.  Very expensive though.

02:45
Nic Jansma
All right, rounding out a few minutes after the top of the hour.  Why don't we get started?  Maybe some other folks will join us in a little bit.  Let me.  Otherwise recording this call is being recorded.  Otherwise everybody's okay with that.  Let me share the screen as is traditional.  Okay, so we have our September 9th edition of the RUM Community Group.  Man, we're almost coming up on two years of the group.  Or maybe we are at the two year mark.  I feel like we started in September, October of a few years ago.  Yeah, Something like That, yes.  Couple things on the agenda for today.  We did not have time last week to talk about Agentic browsers.  I have a short deck kind of for brainstorming and Sergey as well for brainstorming around us.  If we have time after that, be lovely to talk about Interop and things that may be interesting to us as.

03:52
Sergey Chernyshev
A group.

03:54
Nic Jansma
And we'll go from there.  Same logistics as always.  We are going to be meeting Next in October 14, couple weeks before W3C TPAC, for what it's worth.  So if there's anything that we want to as a group, encourage the TPAC attendees to also talk about.  That would be a good meeting to think about that a little bit.  I think some of us may be.

04:24
Karlijn Lowik
There.

04:26
Nic Jansma
As far as other topics.  Don't have anything on the agenda at the moment.  As always, we'll find something.  But if you have anything you would like, please let us know.  Let's see, is that a okay invite?  Allow somebody else in Shoom.  And yeah, today I think we'll talk about Agentic browser rum.  Is there anything else from a logistics point of view that people would like to chat about first or are we good?  Okay, so I put together a deck after doing a bit of research on Agentic browsers.  I think it's a topic that could be interesting to this group.  Maybe we care about it, maybe we don't.  I figured it'd be good to just chat about a little bit and see if anybody has experience kind of understanding what these browsers are doing on websites that we're monitoring.  So I'm going to talk about what are agentic browsers and what can they do?  Can we detect them and do we care?  And this is meant to be like the start of a brainstorming session.  I am certainly not an expert in any of this.  I've done some research on my own and there's probably folks on the call that will know more than me.  So please, please speak up if you want to add on to anything here.  So what does Agentic mean for a browser?  For a web browser?  I'm thinking about Agentic browsers in two different ways.  There's AI browsers, so browsers that add AI features.  All browsers essentially at this point have started to add AI features.  These are things like highlighting text and getting a summary from your favorite LLM.  Maybe help in writing things, generating text for you.  Maybe a chat sidebar to help interpret the page.  On top of that you may have an Agentic browser.  So think about this as being something that where the LLM can actually control the browser.  It can navigate, it can click, it can fill out forms, can go to multiple different pages.  An example here, a classic example might be go book me a flight to Iceland and then just hoping for the best and letting the browser decide all of that for you.  There's different subcategories of ejected browsers and some AI helped me kind of research some of these.  So hopefully this is all correct.  I have not used all of these, but we have consumer browsers like ChatGPT Atlas, which I think is now retired and maybe merged into ChatGPT's desktop.  Perplexity is Comet Opera's got a Neon browser fellow.  I think those are like full featured Chromium based, usually browsers that purport to do a lot of things for you through like an LLM interface.  And that's a lot of what I want to talk about today.  So it's first category.  The second category is browser features for extensions that'll be doing the same thing.  So there's Chrome, Autobot, Browse, Microsoft Edge, Browse with Copilot, et cetera, et cetera, Cloud for Chrome, things like this, things that you know, you can install an extension and it can do things for you, kind of like an AI feature.  And those are usually where humans are doing things, right?  On the flip side, there's also agentic browsers that humans may not even be seeing or may kick off with automation or in test cases.  And then the browser does stuff and then reports back.  These are things like developer frameworks, things to kick off your testing or verifications, either that you run on your local machine or that there's some sort of cloud infrastructure to do this as well.  Maybe it's also similar to scraping in some ways or crawling.  They kind of.  These things kind of overlap a little bit.  So the all these different things kind of run in different places, right?  Like some of these will run on your local machine.  Like you'll actually kick it off, you'll see an application.  It looks like Chromium does different things or maybe it's built on some type of something else.  I think most of these are built in Chromium, other ones are built on the cloud, they run from the cloud.  And because I care about understanding and detecting these, I wanted to know like how can you detect this versus a real human doing all the driving, right?  And I think things that start from a local machine, like a Chromium based browser, like let's use Atlas as an example, even though it's retired, those are going to be the hardest to detect because it looks like just a chromium browser.  It's coming from a residential ip, it's using Director Chrome TLS stack versus you might be able to easier detect a headless browser coming from a data center network maybe using its own stack or something like that.  Right?  Yes.

09:30
Cliff Crocker
I'm just curious where, I mean when cloud or chat like just is doing like a page fetch or something like that isn't actually like instantiating browsers and doing that.  Like, like where do we classify that?  Because it seems like that's the.  Where a lot of the action is in terms of like you know, needing for developers need to build pages that are readable by these autonomous like just page fetches.

09:55
Nic Jansma
Yeah.

09:56
Cliff Crocker
Where do we, where do we classify those?

09:59
Nic Jansma
I think it depends on also where you're interacting with these things.  Like I think if you're in like ChatGPT and you're asking it to go do research and it does web search like the web search tool.

10:10
Cliff Crocker
Yeah.

10:10
Nic Jansma
I think it's doing it through its cloud.

10:12
Magnus Dahl
Right.

10:13
Nic Jansma
It's not, it's not spawning a browser on your local machine to do this.  Right, right.  You, if you know you're running this in like a lab environment, like I know like in my home lab, I have it an actual like docker container that has like a headless browser that my local LLM can kick off and do a web search and a web extract.  And those are two different things too.  There's web search is like you know, gathering all your search results and then web extract is also sending a browser or a curl or something to the page, getting a markdown ish thing out of it for the LLM to use.  Yeah, but yeah, and each of those like I think are like slightly different as far as like where they're running and how we would detect them too.

10:50
Cliff Crocker
Yeah.  It just seems like that's where a lot of the traffic comes from.  And I'm just curious if there's any way or any thoughts about, well, how we would classify that.  Do we care?  Is that considered, you know.  Yeah, you know, autonomous ROM or whatever we're calling it.

11:07
Nic Jansma
But yeah, go ahead Ryan.

11:11
Ryan Townsend
Yeah, I've been looking into this exact thing and basically what it boiled down to was, you know, are you serving like markdown or just a text based format?  So it's kind of like web performance almost just goes out of the window or browser performance goes out the window because you don't care anymore.  It's just some text.  You know, we're back to the old kind of time to first bite days in some respects from a kind of performance point of view.  Whereas obviously this stuff where it is via a browser is where the more challenging pieces come in from kind of more of the ROM perspective I suppose, at least that's you know, what I found.

11:54
Nic Jansma
Yeah.  In researching this a little bit tried to figure out like how are they behaving?  Right.  So, and this isn't complete picture of things, but some of these use a real browser and the way that they, the AI understands the page is through the dom like accessibility tree.  Like it's inspecting the page, like the HTML or the JavaScript or the DOM or an object model that it can crawl through.  And this can be very precise because it has the exact same kind of representation of the text and the right tree structure that is used to visual display to a human.  It does leave some traces.  Like in some ways some of this accessibility tree crawling can be detected maybe not through JavaScript but through other methods.  Other browsers are doing screenshots and then image interpolation.  Interpretation, interpretation.  So they're, you know, they're analyzing the screen for various things and then maybe they're doing that with both.  Like they're using the screenshot for some things and they're using the DOM tree to go fix things.  And those may be able to be detected in different ways too.  Right?  Like kind of like the cadence of these accesses may help indicate which is what is happening.  I think another thing here is like, you know, you could certainly have an LLM drive like Curl or like an HTTP fetcher that is just getting the HTML and interpreting it, you know, like converting that HTML directly to markdown without actually launching a browser.  And that will leave different traces, fingerprints and to be honest with you, I have no idea how like if you're doing it in chat gbt, what exactly it's doing, I don't know, maybe somebody else does.  But if we talk about what they can do, then we'll talk about how we can detect them a little bit more.  You know, high level clicking, scrolling, typing, switching tabs.  You know, it can look like a human, it can fill up forms, you know, search forms, government forms, which is a great idea.  Job applications.  I see a lot of people talking about using their agents to go fill out thousands of job applications, shopping, comparing prices, booking new things maybe and you know, things like data conversion and extraction from pages.  So, you know, very helpful things frankly.  And I'm sure more people will be doing these things over time.  I think from my perspective as somebody.  Yes, yes, glitch filling out job applications because AI just took the job.  Touche.  As a purveyor of fine rum, I am always concerned about how we can detect things and how we can present this type of data to our customers, our visitors, our friends, our websites, whatever we care about.  And so look through a bunch of different methods for detection.  First thing, user agent.  Most of these browsers do not make any modifications of the UA string.  They pretend to be Chrome or at least Chromium.  They do not add their own token like I am a UA AI agent token in it like they should in my opinion.  Some like the Chat GPT browser would send a token just to its own domain.  So it sends ChatGPT browser to chatgpt.com, but nowhere else.

15:28
Magnus Dahl
Yay.

15:30
Nic Jansma
There are some exceptions.  Google Agent and Manus AI both add their own token to the UA string, but pretty much nothing else does.  Everything else wants to look like it is just a human without any special AI intervening.  There is a specification called Web Auth and it's somewhat complicated but it's kind of like a public key thing where a bot can assert that it is from a specific site or domain or company and then you can verify that authority based on some math and you know different browsers and CDNs support various levels of this.  I think it's starting to be a little more popular.  It's a little more for crawling I think is the intended use case than agentic browsers, but I'm not sure if it's may eventually be interesting to be used for browsers.  Some of these agents change the refer like perplexity in some cases Comet changes if you're browsing from it to Perplexity which is helpful but not all do.  You might be able to detect them by what they do within the page.  A lot of them have built in ad blockers but that doesn't necessarily mean it's an agentic browser.  Maybe it's just a more privacy focused browser like Opera or something.  Right?  Lower level stuff.  JavaScript APIs.  There's not really a good one here.  There's not like a is agentic browser API even if they're being driven by WebDriver.  They often disable the exposure of Navigator WebDriver to the DOM or the headless chrome and the UA string or the CPP APIs so that you can't detect it is being driven by a web driver like thing.  You might be able to do behavioral based detection.  This is from public research on the topic, not any particular experience, but you can see how quickly the mouse is moving or the scrolling patterns or what the DOM is doing, et cetera.  Sometimes there's inconsistencies with headers, like they may stop, they may not send client hints even though it's a chromium based browser recently, or the ordering of headers.  Again, these are all kind of fingerprinting things along with what network you're on, what IP address you're on, what your TLS handshake looks like, that kind of stuff.  So at least what public research has shown that some people were doing to try to look into this.  I'm not sure if anybody else has any ideas for that, but those are the ones I came up with.  And my big question that when I was doing research on this was like, how much traffic is agentic browsers?  And I could not find a single stat or public shared thing about this at all.  Like, I don't think people know, you know, the companies that have these browsers probably know a little bit about their usage, but as far as I can tell, nobody is sharing stats on that.  The fact that the Comet browser was discontinued may indicate something.  Maybe it wasn't used as much as they wanted, or maybe they just folded a lot of that into their desktop thing.  And so like, okay, so we don't know that.  At least there's no public research put out there about this.  But do we care?  Do, does a rum vendor care?  Do any of us care?  And some of my thoughts around this.

19:01
Cliff Crocker
Were.

19:03
Nic Jansma
Many of these agentic browsers are blocking ads and related things.  And that means that our scripts, our injections, will be getting less visibility.  So again, it's kind of just like.

19:15
Barry Pollard
A,.

19:18
Nic Jansma
An invisible spot that we can't see.  The traffic is happening, but we can't see it because they're intentionally trying to block us.  Same thing with ad blockers, right?  Some browsers are underreported as far as statistics because they are blocking more ads and analytics scripts.  And so their market share looks maybe less than it should be, right?  I think that'll be the same thing here.  Do we or our customers care how long it takes to load a webpage for agents if there is not a human eyeball staring at it?  Or maybe there is, but if there's not a human eyeball driving it or not staring at it, or maybe they've asked an LLM to go do a thing and then they step off for a coffee.  Do they care about performance?  Do they care about the user experience?  Do they Care about layout shifts?  I don't know, you know, like there's not a good study on this.  I, you know, I hope so.  Do they care more as various.  Maybe, yeah.  Do the agents care more?  Will the agents start becoming sentient and getting grumpy with performance and not go to certain pages because they want to spend less CPU time, you know, for their masters anyway?  Yeah.  Are they more or less tolerant of page loads, delays, web vitals than a human?  I think it's a really interesting question.  And does web auth play a part here?  Again, I think it's a little more suitable for crawlers, not so much for agents.  There is no JavaScript API to detect any of this stuff and so my question for the group is what should the rum community do?  Should we care or not?  Should we advocate for anything?  Should we advocate for agents to self identify through some JavaScript API to some user agent token to some client hint header?  To me any of these would be acceptable.  UA token and client header are probably a little bit easier because then servers can get to them, not just JavaScript.  I don't know.  Again, this is all very, very brainstorming things.  I'm sure other people have really good ideas around this, but those are my thoughts.  So that is what I wanted to initiate the conversation about.  I was going to ask Sergey, do you want to pause here and have a discussion before we jump into your topic or do you want to continue with a follow up topic on this?

21:51
Sergey Chernyshev
I would say let's discuss this topic first because mine is connected but not exactly the same.

21:59
Nic Jansma
Yep, okay.  All right, that's what I got.  Any thoughts, any ideas?

22:08
Cliff Crocker
That's depressing.

22:13
Nic Jansma
All right,.

22:15
Cliff Crocker
I'm as far as like the question of like do they care or do they care more or less or whatever.  I think it's certainly, you know, we have to take a pretty honest look at things like core web vitals and just you know, think about is there, does that matter anymore or is it like, you know, DOM content loaded now matters more than that or something like that.  Or I did hear a lot about like when the agents are actually going through looking at a site like if you know, you've got slow JavaScript or whatever and prices are being populated after the fact, you're going to be penalized more.  So I think there's still some principles and best practices.  It's hard to know which one of those is most important and has longevity.

23:03
Nic Jansma
Let's start with.

23:07
Sergey Chernyshev
I have more things to say in my part of the presentation, but specifically on here on detectability, I have a feeling that similar to how we could have hard time detecting other crawling bots pre EI crawling bots, right.  We might have the same problem here because incentives just don't align, right?  Like usually this is a desire to circumvent the regular ui, right.  Like the whole point of for user not to click around, right.  Not to search, not to be advertised to and all that.  Whatever the incentives are like.  And unless there is a counter incentive like maybe paper crawl or whatever other incentives are to block AI, right.  And that web.  Sorry, is it called crawl?

24:02
Mateusz Krzeszowiak
Auth.

24:02
Sergey Chernyshev
Sorry, I forgot.

24:05
Nic Jansma
Web buy off, web bot off.

24:07
Karlijn Lowik
That's right.

24:08
Sergey Chernyshev
Unless that incentivizes the.  And creates strong enough block that these companies would do it.  I, I highly doubt it will be basically the same as the bot fight, right?  Like they invent their methods, we invent our methods and so on, so on, right.  Like so I'm not particularly optimistic about this.  I don't know if everyone agrees or there is a better history of more optimistic history here.

24:47
Karlijn Lowik
Is that the reason is.  It's a reason not to do it.  Like if we're never going to speak up, were never gonna publish anything.  If we're never gonna say look guys, you should identify yourself and there's just nothing from the community.  Would that actually not be worse?  Like we just gave up before we even got started.  This is very naive of me.

25:16
Sergey Chernyshev
I mean, I agree that without speaking up we, yeah, we give up to the power of whatever that power is.

25:27
Karlijn Lowik
Yeah.  Okay, Go with all the hands now.

25:30
Nic Jansma
We have quite a lineup here.  Let's start with Magnus, please.

25:34
Magnus Dahl
Yeah, so from an, from a retailer perspective, I mean looking at people around me, they have stopped Googling, they.  They only do chatgpt or something similar.  And even if you Google, I mean there are stats now on how many searches in Google that never ends up in a click because you got the AI answer.  So.  So if people, if we want people to find our products, we have to make sure that the agents can both search and understand our websites.  And if we want them to understand our website, we better understand what they do on our website.  So I would argue it would be really great if we could understand that they are actually.  What they are actually doing and how it works, how the site works for them.

26:43
Nic Jansma
So that.

26:44
Magnus Dahl
That would be super great.  I'm not sure that it is the same KPIs that we have been using for users that are important anymore.  I mean, yeah, someone mentioned JavaScript fetching data.  Yeah, if I try to get Chat GPT to find me three white shares on Ikea, it will probably find them on the wrong countryside and they might not be even be sold in Sweden and maybe they are white but Chat GPT will not know the price on them because that's too hard to fetch.  So it.  Yeah, I mean we have spent so much money making sure that the googlebot search index can understand the site but right now we're fumbling because we don't know how to make.  Well, we have some theories, but we're fumbling on Agentic definitely.  So if we could know who they are and what they do step in the right direction Now I'm not going to ramble anymore but just a really.

27:58
Nic Jansma
Quick follow up on that.  Magnus, like we don't need to like brainstorm solutions here but like is, do you have like a gut check on like how you would want to detect this?  Like an API, a header?  Like is there like something that just speaks to you right away?

28:11
Magnus Dahl
Does it doesn't really matter.

28:15
Nic Jansma
Yeah, I think that's fair.

28:17
Magnus Dahl
UA header would be enough.  I mean it doesn't really matter if we just know what they, who they are and what they do.

28:23
Nic Jansma
Yeah, makes sense.  Okay, thank you.  Really great feedback from point of view of retail website, Ryan.

28:35
Ryan Townsend
Yeah.  On the whole, you know, agents wanting to kind of hide their intent kind of thing and not identify themselves.  I think that when it comes to this kind of co browsing situation where you've got, you know, you've got like the Chat GPT app, you know, and it opens a browser and it's controlling the browser for you.  To me there's no reason for it to not identify itself in those situations because that's the same as a user, like a human being, you know, operating that website.  It's not someone doing a crawl or something like that, you know, it's someone actively interacting with your website and you know, it might be picking up things like webmcp and things like that and that might be a vector to actually, you know, be able to, you know, it's one way we can go.  Yes, this is probably an AI interacting, you know, if it's interacting with a web MCP callbacks and things like that.  But you know, you don't want, as a publisher, you don't want to block that traffic because that is someone trying to interact with your website.  So you know, counter to, you know, I, I get the whole kind of scraping argument and things like that, but I don't see why the ones that are doing this kind of co browsing thing, whether that be like you know, someone using the AI in Chrome or in Firefox or in Safari or whatever, you know, the major browser vendors or whether that be like a webview version where it's you know, Claude desktop or Cap GPT and it's opening a web view with a browser inside and interacting with it.  I don't personally see why they should be against identifying themselves in those circumstances.  And yeah, from a kind of API point of view I'll be interested to have something that we can kind of Detect maybe via JavaScript events and things like that because I think the term is, that seems to be getting adopted as actuation where you're switching between like a human being might click around a little bit and then it might, the AI might take over or vice versa.  You know, you might say hey, find me, you know, some a new nice T shirt on Shopify or whatever and it's going to go away and it's going to do some things, maybe search behind the scenes via like a regular mcp.  Then it's going to open a browser, you know, and start, you know, building you a cart or something like that.  And then you go, okay, I want to take over from here.  I want to browse around myself.  I want to learn more about this company or whatever it might be.  So it's that kind of handoff process.  Obviously we could track you know like navigations via headers and things like that, but be interesting to see.  Okay, well this one page was half an agent and then half a human being kind of interacting with it.  And I suppose from that kind of perspective to a degree that you know, the same things that apply to human based web performance apply to agent based there as well.  In that, you know, you still need the web page to load fast.  Ultimately if a, you know, if a site is being, you know, if it's, even if it's just a web fetch, it's still.  That's just time to first byte basically.  And in that instance it's like well LCP covers that or you can just measure time to first byte as one of the web vitals Anyway, you know, we're all very used to that but so I think there'll be a lot of overlap with these things.  Like Cliff said, I agree with the whole like DOM thing as well like DOM interactive and things like that out on content Loaded.  You know, if they are reading the accessibility tree and things like that, which seems to be an approach that Most of them are taking.  So anyway, I'm going to shut up now because I've talked for too long, Cliff.

32:22
Cliff Crocker
I just wanted to throw out there and I don't know if this is a stupid thought or not, so bear with me.  But like, is this somewhere where, in terms of like, agents not executing JavaScript and losing our ability to actually measure for in some of these cases, is this more of a support for Declarative Performance observer?  Something like that, where we're not executing JavaScript in the browser, but we're still actually setting telemetry back to an endpoint?  Is there a use case there that we haven't really discussed in detail, or is that one of the proposed use cases?  I forget.

33:05
Nic Jansma
Yeah, the Declarative Performance Observer.  I don't, I don't think there's anything related to this in its proposed use cases, but it certainly could be.  Maybe we could even open a ticket on that repo to brainstorm some thoughts around it too.  Yeah, good thought,.

33:26
Barry Pollard
Mateusz.

33:29
Mateusz Krzeszowiak
Yeah, thanks.  I don't want to be like super pessimistic here, but I think there are a few things to this.  So first of all, I think just looking at the data that we are getting and the complaints from merchants and stuff, they are seeing their own ROM data and if it's overwhelmed by bots, then it's really not that actionable.  But I think I don't see any reason why we would be advocating for additional things because I'm not sure what we could infer from those on top of what we can already infer from the user agent.  Basically, if the bot wants to be identified, they'll just adopt a custom user agent and we'll know.  And if they don't want to be found, then they'll just be like, they are doing a really good job trying to simulate a lot of things that the user may do, including like mouse jitter, like wild things, basically.  It's a really tough problem.  I think anything that we would introduce in here either won't be followed or will only be followed by the good guys.  And I don't think the good guys are the problem.  And for the bad guys, well, Apple has, I think, the private access tokens, which, like, you can ask for and it tells you whether this is like a real device, but they are a vendor.  I guess that would be a question of like, would we want more vendors like Google to like provide us a proof that this is something like this is an actual person, this is an actual user.  This would first of all introduce a lot of Privacy issues.  And second of all, that would be like additional responsibility of the vendor to look at the signals that they are getting and filter them out.  Because I envy the crux data.  Because right now I don't think any bot allows to share diagnostics data.  That's why crux data is still so trustworthy.

35:55
Cliff Crocker
But.

35:57
Mateusz Krzeszowiak
The first time the crux data signals will start contributing to bot signals that we can access.  I can guarantee you bots will just start sending the crux data and crux data will become useless.  So it's like we need to be careful what we ask for because like anything will just be spoofed and cheated by the bad guys.  And we are seeing this in our own data.  I know it's a bit depressing, but it is what it is.

36:31
Magnus Dahl
Ari?

36:33
Barry Pollard
Yeah, I have lots of thoughts.  And are all my thoughts not Google's, by the way?  Like, I think there is different categories.  There is the co browsing, where you're surfing the web is normal and then the agent jumps in and does something for you.  And I'm not sure 100% agree with Ryan's point of view that there's the agent should identify itself as an agent there.  Like in a way, it's kind of just assistive technology.  It's almost like a accessibility type thing where it's just you're doing something, it's a.  Like an extension.  We don't identify extensions.  So that seems to me that it's you browsing and then they're just jumping in for a little bit.  And at what point you can detect screen readers and people get very pissed off about that and think we shouldn't be able to because we treat disabled people differently and you can only detect them to a certain degree.  There's.  Anyway, we're not getting to that whole topic, but.  And also, I mean, it's messy there.  Like if you're 90 of it is you and 10 is the agent, what do you report back there?  There was an agent activity, Therefore it fences 100 agent.  There was 90 user, therefore it counts as 0% agents.  I don't know, it gets tricky.  Anyway, there's different categories.  There's co browsing, there's agents crawling and serving things up.  Like to Magnus's point of people are using chat GBT rather than Google search.  And to me that's less of a rum issue.  I mean, it'll be good to know and measure and see how much to do it, but it's more of a backend issue rather than a run thing.  It's more a SEO type issue of how do we get on there, how do we actually get values, whether that's a click or a purchase or whatever out of that versus them just scraping it and us getting nothing out of it.  Us being site owners rather than us being Google, by the way.  Yeah, and I think that we're following a lot of the SEO story there of you have to help it.  It doesn't read JavaScript, you have to put lots of tags.  You can fake it by black hat SEO and this stuff like that.  Until you get to the point now where you don't really need to do anything and Google anyway is smart enough that it will find all your stuff anyway, even if you don't do all the SEO tips and tricks.  Or it won't because it only serves the things.  Anyway, went through this evolution and it seems that we're at the beginning of that evolution where a lot of the crawlers are more like micro browsers and they literally just grab the HTML and if you're not in there, then you don't have any visibility.  But as I say, that's to me slightly separate from rum, other than we should measure how much of our traffic is coming from there.  And then finally there's a whole agent acting completely in the background.  So I don't know, you're on chat GBT or OpenGL or whatever and you say, go buy me this shirt from Ikea and it goes and opens a website without even showing it to you and buys it.  I think that seems like a bad way of doing it at the minute.  And there's lots of ways and can't remember if it was ChatGPT, I think partnered with Shopify and looked at some APIs to actually just serve up in there rather than having to fake it in the background.  By opening the website and doing that, I can see that happening a lot more rather than going and faking it and doing that.  And sites that don't sign up to these APIs or aren't invited to these APIs may just drop out of visibility from these tools because those are the better ones.  I don't know.  My point is I don't know if you can treat them all as just one thing and see them separately saying that there is other tools like those APIs.  I was talking about WebMCP, the new one that's potentially coming along.  And if something makes a web MCP call, I think you can quite see if we say that's an agent, so that's one way of measuring it.  And then my final rambling Thought is whatever we decide here and APIs we create and stuff like that.  One is will anyone create them and use them or will they all just mask it to quite a few of you said it or not implement it?  And two, will they have a nine month life span and this time next year it's something completely different.  And it's not agent, it's little green men from Mars or whatever.  It's changing so much at the minute that who knows what it is.  And half of me says we can't do anything.  We just got to sit here and wait and see where it settles.  The other half of me is like if you don't do something then you've lost your missed your chance.  So anyway, no answers, but rambling thoughts, sir.

40:59
Nic Jansma
That's all very fair, very.  One short thought and then why don't we finish with thoughts from Sergey and Chubam and then switch to Sergey's presentation.  Just follow up from Mateusz's thought about good actors and bad actors and whether agents would actually do this or not.  I think it comes down to identify or not.  I think it comes down to like, are there incentives for identifying?  So like as an example, like one incentive could be around reporting, right?  Like maybe some browsers would be incentivized to be on the top of the agentic browsing charts because they are reporting that they're doing it and you know, they can compare it to others and say hey, we have the most people using ours, come use ours.  Clearly that's not a big incentive right now because not many of these browsers are doing it, but maybe some would be motivated by that.  And then on the flip side, are there other functional ways reasons that this could incentivize some browsers, like brainstorming, like if the browser identifies it's an agent, maybe the website changes behavior intentionally, maybe it does less things, like it doesn't do as much flashy animations and that saves both the browser and the website bandwidth and CPU because the agent doesn't care that it looks all spicy and you know, so the website shouldn't do it.

42:17
Sergey Chernyshev
I don't know.

42:18
Nic Jansma
Again, to Barry's point, like, you know, that does change the behavior of things and maybe not everybody wants that, but maybe there are things like the website would serve in, you know, a markdown sidecar that the agent could use rather than having to parse the HTML.  I don't know.  So maybe there are some incentives for self identifying.  I haven't really thought through all of them, but maybe some actors may choose to do that.  If we, if we had some mechanism, I'm going to hand over to Sergey and then we'll wrap up with Shubham and then we'll get back to Sergey for his presentation.

42:52
Sergey Chernyshev
Yeah, quick thought that before web perform, fun fact, before web performance, I. I did something else Web, which was Semantic web and the whole premise was that it's not a web of pages, but rather the web of data and there will be agents acting on behalf of users on that data.  So UI will not necessarily be dictated by the owner of data.

43:19
Magnus Dahl
Right.

43:20
Sergey Chernyshev
UI will be dictated by the user.  And this seems very similar effectively.  This evolution reminds me of that.

43:27
Magnus Dahl
Right.

43:28
Sergey Chernyshev
Like WebMCP is a way of doing data, but there were other technologies like that.  So maybe that, like maybe our.  We need to start thinking differently about it and not try to move it into the browser based user experience that were creating all these years as the main method of consumption.  But I will talk a little bit about it in my talk.  But.  But I just wanted to bring up Semantic Web specifically as kind of a model that can be far enough so gives you a little bit more abstraction.

44:08
Nic Jansma
Shubham, for your thoughts?

44:11
Shubham Gupta
Yeah.  Hi.  I have a theory.  Kind of like I use this Step counter app back like quite a while ago.  So when I started at Step counter app and when I sat in a car it gave me a pop up like you are running like more than the speed.  So if we have something like similar that if a site is getting hit more than like human behavior, so maybe site can prompt that it's a bot or something AI agent.  Or maybe we can have a API that is provided by the website so they can limit that after a certain request or after this number of requests you can limit.  So that's my analogy to that part.

45:04
Nic Jansma
Yeah, I think that makes sense.  Okay, let me stop sharing.  I know Sergey has shared.  Thank you all for that really good discussion and ideas and brainstorms.  Sergey wanted to kind of add on to it with speed of the user experience.

45:21
Sergey Chernyshev
Yeah, a little preamble.  The RUM Community Group is called Real User Measurement Community Group and not web browser Web Performance Community Group.  Just give it the thought a little bit.  I know that we are all web performance people here.  We came from that space and we love that space.  And that's why even before AI, I was leaning towards this framing of the problem called speed of user experience.  And I think here it actually might be one of the answers for us to go for.  So first and foremost I want to.  Well, not.  I want to give you this pictorial history and help you kind of get to where we are through it.

46:08
Ryan Townsend
And.

46:10
Sergey Chernyshev
It's not to scale, it's not accurate, but I hope to still drive my message for you, right?  So when we all started this, whatever very young or more recently, we did not really care about technology itself, right?  We just knew that this medium of Internet will allow us to do something that other people, users will be able to see with their eyes through the ether of the Internet and have some experiences in their brain.  And we wanted that to happen, right?  Like were very ambitious.  We wanted this to share our stuff with the world for whatever motivation we had with that.  That's a whole different reason, right?  And over the years, we spend a lot of time building a lot of technology, right?  From web servers, network like CDNs of the world, browsers for that matter, right?  All of these browsers were not the first browsers, right?  Like we actually built better browsers, made them available.  We built websites, things that, you know, the actual experiences, frameworks, technologies like that.

47:25
Karlijn Lowik
And.

47:28
Sergey Chernyshev
About two decades ago, Steve Sars came to us and said that the feeling that we had this in the back of our head, that when things are slow is a valid feeling and it's making us sad, right?  And we should think about it, right?  And he called it web performance, right?  And were all, yes, thank you for validating our us.  We like, we.  You found, you found our worry that is creeping up somewhere in the back.

48:03
Nic Jansma
Of our head, right?

48:04
Sergey Chernyshev
And we started building more better technology like on the servers, better serving technology on CDNs.  We instrumented the browsers, right?  Like we like Web Performance Group was formed like browsers started adding more MPIs, which led us to do a lot of, well, basically creating RUM eventually as well, right?  Like we started reporting that, collecting data from every user rather than just doing it synthetically like we did before.  And basically that's how we measured the user experience through these technologies.  And then about 15 years ago, bots came, right?  Like they kind of started giving us trouble.  Because I remember like it was yesterday at Bed Bath and Beyond.  We were like, oh my God, the traffic of bots is about 40, right?  It's a, it's for those of you who are not in the US it's.  It was a retailer who had online presence as well and we as rum community group or back then there was no real community group, or rather not formal realm community group.  It's the same people, just without the organization.  We were wondering what do we do here?  What do we do with this traffic?  We are getting some Signal again, probably not using JavaScript because bots at the very beginning didn't use JavaScript.  But then suddenly they started.

49:37
Cliff Crocker
The good.

49:37
Sergey Chernyshev
News that for us it aligned very well with our motto, right?  We wanted actual real users.  So the decision for us was very simple.  We just dropped the data, right?  We were like, okay, we don't care.  Like yes, security people might care, maybe our abused people would care.  But we as people who wanted to know what our users experience didn't care because there is no user in this picture future, right?  Like basically the bots cut it off somewhere early in the game and we're like, yes, sure, we will concentrate on the availability part of it.  Yes, we concentrate on security part, but we will not care about run.  So the decision was easy and we kind of moved on.  I mean we still, Sorry, it is easy, right?  Detecting bot vs not bot became a problem that we just constantly deal with.  But ultimately the decision was easy.  And then slightly later, SEO people, well, first of all, Google came up with the core web vitals which ignited SEO commotion.  SEO people realized through their incentive that speed is important.  And suddenly bots became part of it as well, right?  Not necessarily the way we're discussing it today, but effectively we started to care, right again.  And we had the resurgence of web performance world.  We got better metrics and things like that are geared towards measuring user experience.  Thank you everybody on the call who is at Google, you know, who pushed those forward in there, right?  And thank you everybody for like we got ourselves a good measurement of metrics, right?  Interestingly enough, somewhere around that time, maybe even a little earlier, well, quite a.

51:31
Cliff Crocker
Bit earlier,.

51:33
Sergey Chernyshev
A lot of experience coming not from a desktop computer, but from mobile device, right?  Like you all remember that world, right?  Where we obviously the UI has changed, but also like how experiences, the performance profile of it changed and stuff like that.  So we started thinking about responsiveness, started thinking about touch, CPU consumption, things like that, right?  Like basically everywhere where we are today.  And then AI came much more recently.  Much more recently, right?  And users started doing this agentic browsers, right?  Notice that the rest of it is kind of the same, but like it's just that program that runs on your computer is different on the user's computer, I'm sorry, is different.  And ultimately the experience is the same.  It's still us.  We want to give user the experience, the product, whatever.  We want to give the user in there.  And it's just the software running on their devices has changed, right?  For whatever it's worth, right?  Like I, I, I Don't know any better than you all do, like what that means for us.  But I just want to say that this like a little piece of software has changed.  And now it's also agentic browsers, right?  Or at least today we're discussing agentic browsers.  Before that it was just chat, right?  Like the experience of like instead of using the browser or searching on Google, it was a chat and now it's like, okay, maybe it's close to the actually being merged with a computer, with a browser.  Sorry, right, like, and we are like, oh, maybe we can actually I hear in this conversation, I seen your faces, you want to like use that existing technology that we built for web browsing or browsing experience by the use directly by the user.  We want to detect that in how AI behaves and we want to like, hey, maybe we can deduce some knowledge out of it, right?  Like because they kind of look like users maybe, right?

53:58
Mateusz Krzeszowiak
And.

54:02
Sergey Chernyshev
I understand why we want to do that, but I don't know if that's reasonable because frankly this software can change.  Somebody already said like, yeah, it's in nine months.  Well, I think Barry said that, right?  In six months it will be something else, right?  Green people from another planet or whatever.  Tamagochi.  Tamagotchi.  Tamagochi.  Experience or whatever, whatever the experience would be, right?  And in the end, what all I want to say that there is some software that users will use.  There will be having some technology that through this distribution of the Internet interconnectivity that we got, they will be having some experience that we, as this little Bert Simpson will be creating for them, right?  We might not have the same amount of control, but there will be software that's running in there and there will be experience.  I want to point out actually something that we didn't talk about almost at all in here, which is native apps, right?  It's the same problem, just different side of the same problem.  And I want to point at Khalif and SpeedCurve team who recently published some new stuff recently, right?  Like even though native apps are like 15 years old or 10 years old or whatever the reality of them is, right, it is software running on users devices that creating the experience.  Yes, it's not always browser, even though webview is there, but it is using the very same web or Internet for the data that we want to provide, right?

55:47
Ivailo Hristov
So.

55:51
Sergey Chernyshev
I want to say that this ability to measure real user experience and to improve speed of that user experience is what we are after.  Here we got into large chunk of it when it was the major chunk, which is web browsing experience.  But maybe that's not the only way.  And maybe we should be abstracting away from specific delivery technology, specific use, specific UI technology and coming back to measuring user experience.  And I want to kind of make this a call for.  Maybe it's not web performance that we are doing here.  Maybe it's speed of user experience or UX speed or how Caroline wants to call it, site speed, user experience.  Right.  When it's slow, it sucks.  That's the message.  So maybe we need to have the measurement or methodology of measuring impact on users.  Let's call them KPIs in a business speak, right.  Like on users desire to perform the action we want them to perform.  Let's abstract it away from the actual level of technology.  Again, we'll probably do a lot of web part of it but we as web browser being the main method, losing the share.

57:26
Ivailo Hristov
Right.

57:26
Sergey Chernyshev
There is definitely a lot of native.  There is now agentic.  Maybe we should not just cling to our sun not sinking ship, I don't think it will sink.  But we should not just narrow our experience, our attention not get it narrow and narrow just because that's only one side of it.  That's kind of it.  It's a message, I don't know, very pictorial, a lot of Bart Simpsons, but I don't know if it resonates.  You tell.

58:04
Nic Jansma
Thank you, Sergey.  Any thoughts on that prior to us wrapping up for the day?

58:14
Ivailo Hristov
Go ahead.  Yep.  Hi everyone.  So as you said, just a thought but I think that like measuring the experience, even for agents is still going to be a thing.  And I think we should start by figuring out a way how to first detect what is when an agent is browsing and what they're doing.  Because even for the existing metrics that we have.  Let's take the cls.  Most agents need a stable browser in order to be able to kind of hit the correct button.  Correct.  And so that's a valid metric.  And we want to know, we want to still be able to measure it.  And also I think for agents we also want to measure speed maybe in a different way, but maybe in the same way we are also doing because historically in computing we always want to be able to do things faster.  And with newer technologies like users are more tolerant on slower experiences.  But as this becomes a commodity, people want to get the job done faster.  For example, now we have coding agents or just agents that do stuff for us.  I think all of us, they we just Want them to complete faster.  Correct.  We don't want to sit around and wait for them to finish their task.  So that's why like we aim for faster inference.  That's why we for more efficient ways for the agents to interact with what they interact with the system, with everything.  So I think user experience still matter and measuring it still matters and we still want to be able to make things faster.  And the first step would be to first identify, be able to identify when an agent is browsing.  Then we will be able to attribute their success rate.  Like when the site is faster, does an agent get more successful in let's say completing their task?  Does an agent like do they complete a checkout more often or whatever.  So I think we should start with being able to identify these things.  Things.  And maybe this should come as something from the browser.  I don't know.  But I think this is the first step and it does make sense for us to be able to measure these things.  Yeah.  Just a random thought, thanks.

01:01:00
Nic Jansma
Yeah, thanks for your thoughts.  Sergey, last moment before we.

01:01:03
Ivailo Hristov
Yep.

01:01:04
Sergey Chernyshev
I just wanted to say in the end, speed is just a proxy for good user experience.  We know that making it faster will make better user experience.  That's why we are doing it.  In the end, user experience converts into KPIs, like conversions, purchase, whatever the driver for your business is.  Right.  And that's what the business incentive is.  But we just want better user experience in the end.  And whatever we instrument the browser or we instrument the agent itself by, I don't know, plugins for all of those agents.  Whatever.  It's, it's just the method of delivery in measurement.

01:01:51
Ivailo Hristov
Yes.  And there are so many implementations on how agents interact with the website.  If we are able to measure this, maybe we can rank them who does a better job.  Maybe a metric could be how many actions does an agent take before it can complete the task.  I would assume that fewer actions is better and leads to quicker end result.  So if we can be, if we can measure these things, then we'll be able to improve on them and see how they affect the end result and the business metrics.  But in the user experience.  But I think we should a way to be able to first identify when an agent is browsing.

01:02:37
Nic Jansma
Step one.

01:02:39
Ivailo Hristov
Okay.

01:02:40
Nic Jansma
All right, thank you everybody.  Wonderful discussion today.  We'll be meeting again October 14th in a month.  Thanks all for joining.  Appreciate it.

01:02:53
Ivailo Hristov
Cheers.  Thanks everyone.

01:02:56
Nic Jansma
Bye.
