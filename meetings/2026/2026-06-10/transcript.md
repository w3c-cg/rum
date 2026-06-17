00:00
Nic Jansma
I'll start out with just kind of like an introduction for two or three slides, and I'll hand it over to you for diving into everything else, if that sounds good. Cool. Actually don't have much in the introduction this week. It's just more of talking about the next meeting and such. All right, let's get to, like, three or four minutes afterward. We actually have 18 people already. That's great. We'll get just a few more. We have a few folks from the Cloudflare team here. I've been trying to convince everybody. Ryan and I have been trying to convince everybody to. To join. So Sergey as well. So we also have Tong from Cloudflare team and Joe from Cloudflare team and Chisara from the Cloudflare team. So, yeah.

00:43
Jared Freeze
Yeah.

00:43
Nic Jansma
Good job. Good job team.

00:48
Andy Davies
No, Tim Cadillac from the Cloudflare team, then.

00:52
Nic Jansma
It's hard to get hold of a Tim these days. He's just.

00:55
Ryan Townsend
We don't need him.

00:56
Nic Jansma
He's magical. He flies around. He visits different places.

01:00
Jared Freeze
He's in New York now.

01:02
Nic Jansma
Yeah, he is.

01:06
Sergey Chernyshev
All kinds of games are happening.

01:08
Yoav Weiss
I don't know.

01:10
Karlijn Lowik
You aren't invited.

01:12
Jared Freeze
You're in New York.

01:13
Cliff Crocker
He's like the. He's like the huge spurs wimby fan. Right. So that's. That's probably what's happening. But he'd be in the wrong place tonight.

01:21
Sergey Chernyshev
My secret is that I'm actually in New Jersey, but I pretend to be a New York. New Yorker. Yes.

01:29
Karlijn Lowik
No, we don't care. Everyone thinks we're in Amsterdam. It's fine.

01:34
Nic Jansma
Aren't you.

01:36
Karlijn Lowik
No, thanks.

01:39
Nic Jansma
Close enough.

01:40
Andy Davies
It's only three hours.

01:42
Karlijn Lowik
Two. Two. It's only two hours, which for Dutch people is basically the end of the world. As you know.

01:49
Jared Freeze
It's.

01:49
Nic Jansma
Yeah.

01:50
Karlijn Lowik
Very far away.

01:53
Nic Jansma
All right, I'm going to hit record in a moment and I'm going to bring up some slides just to lead into the intro. And we'll go from there. All right.

02:10
Erwin Hofman
See?

02:11
Nic Jansma
Slideshow. Let me make sure I hit record. Start recording. Everybody's ready. Start recording. Okay. All right. Welcome, Everybody, to the June 10th edition of the Room Community Group. Today we have a fun session talking about Opentelemetry. Otel, as the kids call it these days, by Jared. He'll be leading us through that in a little bit. Logistical slides pretty much the same. I did fix the Google Meet. Meet link was wrong in a couple places, including the slide deck. It was the old one that was causing some confusion based on everybody being here and nobody complaining. In Slack, I think we're okay that we have everybody that wants to be here today. So great job for me to fix the links. Nothing else new there. Next meeting. So next month would be July 8th. Some of the chairs have other plans.

03:14
Nic Jansma
It's the middle of summer. We figured other folks may be on vacations or taking some time off. So we're going to cancel the June, sorry, the July 8 meeting that will be in next month. The following month we are going to aim for August 12th. Wednesday, August 12th, the second Wednesday. We don't have any topics specifically yet. We can always come up with things. But if there's anything that either comes out of this meeting or that we want to follow up from a previous meeting, or if there's any other big topics that people want to talk about, please, please recommend as one of the hardest jobs as chairs is to find good, interesting things for people to talk about every time. And we do appreciate it when people bring things to us. It makes their job easier, of course. So thank you.

03:56
Nic Jansma
Let us know. Maybe we can brainstorm at the end of the session to see if there's any hot things that people want to cover two months from now, just in time to be gone for nice summer vacation and come back and have to think about rum and other things. And with that, we're going to talk about opentelemetry and I'm going to stop sharing mine and hand it over to Jared.

04:24
Jared Freeze
Okay, winded. Okay, here we go. So my name is Jared Freese. I'm a maintainer of the OpenTelemetry Browser Project, which is pretty new. I work with Cliff andy at Embrace. We're relatively new group, so we will go over what we have today, what we're working on, and then hopefully how we can sort of work together. So for those that don't know, opentelemetry is the standards that are the basis of observability in cloud computing. So there's basically within all of the groups, APIs, SDKs, they generate data over a specific protocol and then we all agree on the shared vocabulary, which we call it semantic conventions. It's not the actual backend, it's not the dashboards, it's not stored, anything like that. This is basically the organization around the observability data itself. It's part of Cloud Native Computing foundation, which is the kubernetes project.

05:51
Jared Freeze
That's how it got started from my understanding. I'm relatively new to OTEL just in the last year, some people might have better history on this. But yeah, basically it was you know, all these competing standards, there's basically two groups that were doing different things. They got together, they decided to standardize. So that's where the group came from. OTEL itself just recently graduated to stable. They call it graduated, which means that it is ready for production. Obviously, people have been using it for years. I'm sure you've heard of it. There are tons of languages. So our project is in Typescript. It's instrumented for pretty much every language you can imagine for backend servers. And that actually really is where the focus has been for a long time.

06:47
Jared Freeze
And we do have a lot of contributions coming from pretty much all the major vendors want OTEL in their product, or they want to be compatible or add support, things like that. There's three main pieces of otel. Traces, metrics, logs. So traces you can think of as just something that has a duration. For us, it would be like Fetch, XHR server timing, things that span a period of time. Metrics are the aggregated numbers and then logs are timestamped records, events, things that just fire to collect information. On the web, we do not use metrics. And in the clients Android and SDK, they also do not use metrics. It's not a rule, it's something we kind of landed on because there's only one user.

07:51
Jared Freeze
So metrics make a lot more sense on servers where you have tens of thousands of users and you want to just kind of summarize before you go to the backend. It's to reduce traffic and cardinality, basically.

08:06
Cliff Crocker
Cool.

08:06
Jared Freeze
So I made this wonderful graphic. Okay, so the part that's missing today, so everything from CDN down is kind of a solved problem. So this stuff lives in Node or Python or whatever hotel has been living in those languages for a long time. What we're missing is this browser interaction portion where it's just people are just sort of blind to it, or they use vendors that don't talk to the backend, or they talk to it in a very sort of thin way. And so this is the problem the browser sig is trying to solve. So right now you have an app, you'll instrument an SDK on top of the API that generates otlp, which I'm not an expert here, but basically it's like a big huge hunk of JSON that can be compressed. That's how the web works. The backends also use Protobuf.

09:08
Jared Freeze
You have the option of using encoding with JSON or protobuf. Protobuf doesn't work on the web and so we use JSON. It is gzipped, which is nice, but it's small. Once you have that sort of bundle, it goes to the collector. The collector is parsing otlp and then from there you can sort of send it off wherever you want to go. The way the SDKs work is they have instrumentation that's basically plugins that pick up certain things. I have a list, we have about seven of those. So I already called out like Fetch xhr. There's also web vitals, server timing, user action, which is kind of like collecting clicks. And there's a lot more coming. So that's kind of what we're working on now.

10:02
Jared Freeze
There have been previous instrumentations that could be used on the web, but the history of the JS version of OTEL has been for Node, so it's been for the backend. There's a handful of things that work in the browser, but it's not browser specific. So one of the issues, one of the reasons browser exists is because of this, like, you know, on the back end they don't really care about file size, they don't care about a lot of things, you know, tree shaking, whatever. So there this is, we're going to focus on making this as small as possible. That's actually what influenced not having metrics, is adding the metrics API on top of traces and logs was already getting pretty big. So it was kind of like, hey, we'll figure out some other way to do that. The collector itself, you customize.

10:53
Jared Freeze
So this is where you can do mappings across different versions of your SDK. Potentially you can take out pii, you can sample here, you can also sample at the SDK level if you'd like. And then the goal of course is portability. So it's a standard, it's supposed to be standardized. You can hopefully in your web app just drop in any SDK from any vendor or the OTEL SDK, which doesn't exist yet, which I'll get to. But the idea is that, you know, you can sort of point it anywhere you want to go. You can also point it to different backends simultaneously. So if you want to try out two vendors, you can just pop in the endpoint for that.

11:39
Jared Freeze
And so you can go to three if you'd like, you can have a backup or you can have, you know, a super sampled version that goes to maybe just a server that measures health, something like that. The main conventions are the core of the naming system. So there's basically attributes that get attached. So this is in our world, JSON keys and you just attach values to them. It's a full standards body. So there are proposals. They're basically YAML files. There's also a Weaver portion of the project, which I haven't really delved into yet, but there is a proper registry. There's also just markdown docs that contain all this stuff and we build against those. We would like to add more to the Weaver project. We haven't gotten to that yet.

12:36
Jared Freeze
The browser stick is still pretty small, so we don't have hundreds of keys that we're managing yet. But when we do, we'll make sure to get in line with that. So Trace parent is already supported.

12:47
Yoav Weiss
This is.

12:48
Jared Freeze
I'm not sure exactly how many people are using it, but the meta tag for the W3C trace parent that gets injected into HTML from the backend gets picked up by OTEL browser and that gets inserted into all the traces and logs downstream. We're still working out exactly what this relationship is because not everything on a page potentially belongs to that HTML document microservices. There's all sorts of different constructions that people have. They may not want that it is optional based on how you are constructing your data, but it is already in there. Current state of the browser SIG so it's a special interest group. When I joined Embrace, we started going to the JS meetings, but they're purely backend. We were talking about how we want to support the browser, what the repo might look like.

13:41
Jared Freeze
There's a JS repo, there's a JS contrib repo. The contrib repo is where all the instrumentation lives, mostly for vendors. You'll see things in there for specific, you know, aws, gcp, things like that. Keep an eye on specific servers, however, you know, that might work. People also made a couple instrumentations for the browser. Once we started looking at how it all works together. That repo is mostly common js and that seemed like that's an issue already, right? Because CommonJS doesn't work on the web natively. So if you're bundling everything anyways, there were a lot of issues and so we wanted to focus on the browser specifically. I pitched well, we all got together, pitched a new repo. We were able to do that. So we have our own sig, our own meeting, our own repo, our own Slack.

14:39
Jared Freeze
We sort of created the whole group top to bottom, which is really cool. So we're not just kind of a piece of the JS SIG any longer. There is an instrumentation repo. So we've been doing two things. One is there's a couple vendors that are using Otel. So like Embrace, we're pure Otel top to bottom. That's how the SDK was conceived. And so we are using the node APIs, which works. They're a little, they need some finesse. So we're talking about potentially replacing those with browser specific versions. That is in flight. But today there is instrumentation that is built and compatible. We're actively upstreaming those. There's two other companies that have more mature products that are also upstreaming theirs. We're all working together on these versions.

15:38
Yoav Weiss
Because.

15:41
Jared Freeze
All of us have sort of been making up semantic conventions on our own. Because the browser SEG is so new.

15:47
Nic Jansma
Right.

15:48
Jared Freeze
Nobody had names for things. So like we called it, you know, page URL, node is calling it URL.full. You know, somebody else was calling it something else. So we just got the page URL sort of not like ratified, but we basically have agreed on it. We're pitching it to the Semantic Conventions group and that is browser document URL full. And the reason it's not URL full is because we found in the fetch instrumentation right away that the fetch request itself needs a URL, but there's also the page it lives on. So we needed both. And URL full just means it's basically the entire URL with PII scrubbed. But there's also URL parts as well. I didn't go over that here. If people have questions about that, we can go over it a different time. There is no SDK yet.

16:43
Jared Freeze
This is what is in active development. So, you know, all the vendors have SDKs. This would be the open source version of that is using instrumentation. You will be able to use instrumentation from other vendors in the OTEL SDK and vice versa. That's the goal. Yeah. So it is built on top of all the things the browser gives us. Right. We are instrumenting what is already there. So Hotel itself doesn't actually make any data. Right. It's reading all of these things. So it's built on top of. Right now we're building at embrace the soft nav instrumentation. And so there's some things that we're interested in, like figuring out with soft navs, web vitals, sort of resetting web vitals and having this moving forward, checking out, you know, all the pieces of, you know, what's coming.

17:44
Jared Freeze
You know, we've been looking at the Chrome dev docs and watching how things are changing over time. And, you know, watching PRs against web vitals to sort of figure out, you know, where things are going and try to work with it. So this is what a log record looks like under the hood. This is actually what we send. We also have loaf. We have lots of other goodies. And so browser Web Vital is our recommendation for the event name that this lives in. And so people would be able to build dashboards against Web Vitals using this structure. As you can see, we are using the keys that come out of Web Vitals directly, including navigation, underscore type. The convention in OTEL has been underscores, not Camel Case. And so we initially had like, we just looped through all of the.

18:45
Jared Freeze
The keys that were coming out of it and there were. Camel Case decided to switch to underscores. This is exactly the sort of thing like we want to talk about, you know, if we know, working together between these groups is, you know, do we want to do this is, you know, Camel Case, okay. And sort of this communication back and forth. If you're interested. Resources are kind of interesting. Resources are supposed to be static. So like the service name, like you're on the front end of, you know, E Comm Store or whatever. Like that wouldn't change. There's other things that wouldn't change. We put user agent in here and it turns out user agent does change. So we pulled it out. But these are the sort of things that we think about and consider at otel.

19:29
Jared Freeze
The way the sigs fit together is we have the browser sig, semantic convention sig. And then there's something called a client sig. Client Sig is where browser and mobile meet currently. So this is Android, iOS, the Kotlin SDK developers, people that work on, you know, PVs, things like that. I think there's not anyone from like WebOS, but it's. That's the idea is that all of us working in the visual space get together, talk about things. Clicks are already named. They're not necessarily exactly the way we would call things in the browser. So they're using the word tap. They also prefix everything with app because in the mobile world they're thinking like app is first. We've started to prefix things with browser that make sense, that are truly browser specific. But we try to meet to have, you know, we all have clicks and tabs.

20:27
Jared Freeze
So if we can standardize on that, the idea would be that, you know, the clients themselves, we don't just have a browser namespace where absolutely everything is prefixed because we do Want some interrupt there, you know, to see across parts of, you know, your app that could be mobile. Another thing we've been considering is how to handle web views, because technically that's the web. But if you're using like android SDK, they don't really communicate perfectly yet. But with otel, the dream is that you would be able to send all of that to the same place and it would just sort of go together. So a click in Android and a click in the browser would be collected in the same way. We meet on Thursdays, there's docs that go with it.

21:18
Jared Freeze
We have the CNCF Slack, we have about 10 people showing up, which is cool. We have four or five maintainers, a handful of approvers, active development. Again, a lot of the vendors already have stuff to upstream, so we're doing a lot of that. We're also pulling stuff out of the JS repo into the browser repo to try to get that stuff away from the build pipeline. For node, we're using TS down. We distribute only ESM. It's ES2022. We have instructions and demos and examples. So I haven't talked to the whole group about this. This is kind of my idea of how we might work together. So commenting on semantic conventions I think would be really useful since those names come from here and we are mirroring them.

22:14
Jared Freeze
And basically there are times where we want to collaborate with mobile to try to get together to figure out if there's things that can be shared that maybe don't map exactly to the browser APIs. And then for us, like I was talking about before, there's a lot of things we have to figure out on page exit. So then Beacon started this, obviously now we fetch keep alive. We're having an issue currently with compression streams. I'm not watching the chat, trying to stay focused, but I saw compression streams fly by. I think that was Andy. It is Async and we are unable to compress on the way out because it's not sync. So I have all of the PRs bookmarked talking about compression. It'd be awesome to put it here and there and send Beacon should have a flag and all this stuff.

23:02
Jared Freeze
They're a couple years old. That would be awesome to be able to Async compress gzip on the way out, you know, and then. And I think you guys get what I'm saying. Soft nav. Can't wait for that to be, you know, used more widely. You know, we're going to build a polyfill for that because we basically have to for the next few years. But using what we can would be. Would be fantastic. And like I said before, web vitals coming after a soft nav. You know, what does that timing look like? What is the start time and how does that all work together? If we have instrumentation, can it be generic or does it need to be web vitals for soft nav? You know, these sorts of things to discuss. And that's all I got.

23:58
Nic Jansma
Cool. Great presentation, Jared. Why don't we start with Sergey? Yeah.

24:04
Sergey Chernyshev
I think at Embrace you already drank the Kool Aid of Hotel, so I feel like you don't need that. But can you sell us on why Hotel is better? Why would we want Hotel as our way of reporting things? Because I do feel it. But I want to hear from people who already are in the thing.

24:27
Nic Jansma
Sure.

24:29
Jared Freeze
I can tell you we've seen how vendors report to backend. They're completely proprietary. There's a combination of JSON blobs or very long query strings, or you name it. The transport to the backend is chaos. You know, every vendor has their own way of doing things. So there's no portability. So the idea here is no lock in.

24:55
Cliff Crocker
Right.

24:55
Jared Freeze
And if Kubernetes already solved this, the idea was like, why not leverage this for the browser? You know, why not play nice together? So that way, you know, the idea is you can use the best SDK, you can use the best backend, you can use the best collector, you can do things that you may not be able to do. So something I've seen a lot of is in Europe, there are much stricter rules about what you can collect and not collect. Not every vendor is playing by those rules. Now on the SDK side, you can scrub all the pii that may get collected. So like, we don't collect IP because we want to be really strict about that. That's just something we've decided to do. If I used a different vendor, they may always collect that and you don't have a choice.

25:42
Jared Freeze
So that's kind of the idea is like standardizing on the names helps across platforms, across languages, but also for, you know, the vendor specific stuff. You know, that again, you should be able to swap back ends. Like that's the idea now. Everyone adds value and dresses it up. We have plenty of keys that are Embrace specific. You know, we have, you know, we add a lot that's not in, you know, the hotel, the larger group that is very specific to our dashboards. I think a lot of people are Going to have that. But you know, having fetch and XHR report exactly the same stuff with the same duration, same start time, same spans. Reading those spans and building waterfalls on the dashboard is the standard part. That, that's the idea. No lock in.

26:34
Sergey Chernyshev
Quick follow up on that. Does that mean that stitching different sources is part of the game basically in Autel like if you report backend systems up upstreams for in case of CDNs and sorry origins we call them.

26:54
Jared Freeze
Right.

26:54
Erwin Hofman
Or whatever.

26:55
Sergey Chernyshev
Right. And, and now browser is that part of the parcel? That's basically why this is also beneficial. You didn't, you didn't mention it. So I'm asking. Sorry about that.

27:05
Jared Freeze
Yeah, exactly. Right. We don't track like we don't have backend tools at embrace. But yes, the idea would be that you have a trace parent or trace ID that comes from the backend. Whatever's right. So you're in the browser, you say you have a user logged in. You pass a session ID from the backend to the browser, the SDK picks up that session id, attaches it to all the logs and spans that get reported. You make a request to the backend, it passes that session id, you keep track of it all the way through the back, through the db, all the way down, you bring it all the way back up with the response and then theoretically all of those waterfalls should just go together in the back end. That's the idea. Yeah. Yeov.

28:03
Yoav Weiss
Yeah. So you said, if I understand correctly, the OTEL browser is a specific JavaScript library that reports OTEL to the backend. Does it make sense to have a future where there are OTEL compliant? Like I don't know where you know, Web Vitals JS will report OTEL to like you know, just like report the format in a way that can be consumed by the backend regardless of the client side implementation. Like that should be an implementation detail and the technical choice. But I think there's potentially value in standardizing what from providers emit that can be read by hotel dashboards. Is that like, does that make sense? Because I'm.

29:02
Jared Freeze
Yeah, yeah, I think, I mean the way that's handled today is instrumentation. So the instrumentation for web Vitals that lives in the browser repo is a very thin wrapper on web Vitals. It doesn't really, it doesn't change much. It's not any real transformation. If you were to.

29:24
Yoav Weiss
Yeah.

29:25
Jared Freeze
I mean you could import the API into Web Vitals.

29:34
Yoav Weiss
Let's not like, let's ignore web vitals for now. So Shopify has a JavaScript rum library called Perfkit. If I wanted to, you know, be able to import our RUM data into any random open telemetry dashboard, is there a way for me to make sure that we're uploading our, you know, we're uploading hotel compliant jsons. Is that a thing? Is that a goal?

30:08
Jared Freeze
Yeah, I mean, it's that, like I said, the current way to do that would be to build instrumentation on. On top of. So I mean, yeah.

30:20
Yoav Weiss
Library and extend it rather than make other JavaScript libraries compliant.

30:26
Jared Freeze
Yeah, I mean, I suppose you could. Honestly, it's a little out of my depth. I mean, to generate a tlp, I think is quite complicated and I think you would wind up like reinventing the wheel to export that directly.

30:40
Yoav Weiss
Okay.

30:41
Jared Freeze
To get it ready for the backend. So I think you'd still want to rely directly on the hotel libraries to do that. I suppose you could. I might not be understanding your question exactly, but yeah, it's not just JSON, it happens to be JSON in the browser. I suppose you could get there, but you probably want to use the library that already exists.

31:03
Andy Davies
Okay. Yeah, I think just to jump in, I think, you know, if you've got a library that talks otlp, you can send the data to any back end you want. It's just, you know, that layer exists, but you'd have to conform to OTEL semantic conventions for the back end what you're trying to send the data to. To ingest it.

31:25
Nic Jansma
Yeah, maybe I'm also interpreting more than what you're saying here, but like, there's also this proposal that were looking at for triage the other day about like a standard way of reporting with performance metrics by registering it like in a header or whatever. Are you thinking of like using OTEL with a standard format with a reporting API thing where like basically you just give a URL, then like OTEL goes.

31:55
Yoav Weiss
There's not necessarily like theoretically. Sure. I, I like theoretically we could bake in, you know, the hotel browser into the actual browser and have reporting APIs. That's an OTLP and that seems like a good use of a standard. I was thinking a step before that just have, you know, multiple implementation because, you know, a standard is only a standard, at least in web standards. It's only a standard once you have multiple implementations of the same thing that are interoperable. I'm wondering if there are and if it makes sense to have multiple JavaScript implementations of this, like, standard library. But you know, we could have other providers ship their own library that's conformant to the same standard. Like, it seems like an interesting place to take this. I'm not sure there's actual demand, but it seems interesting.

32:59
Jared Freeze
Yeah, I see what you're saying now. Yeah, I mean, that would be ideal, obviously, is to have the API just generate, you know, compliant OTLP with the semantic conventions, you know, once they're stable. I mean, that's. That would be amazing, right? Having to insert a library. The other issue, of course, is everything happens late. You're loading a script from a CDN or you're waiting on the app to render. So it's amazing that now with the modern APIs, we can look backwards and say, oh, hey, here's what the document's doing. But there's plenty you can't do because Fetch is a great example. We're monkey patching Fetch right now because there's things that the browser doesn't provide. I hate that. And let's say Chrome turns it off, right? We can't modify Fetch any longer. You know, replacing window Fetch is a bad idea on its own.

33:51
Jared Freeze
And it gets worse as, you know, four different vendors on the same page, like, hijack it. So, yeah, if it were, if there were a native API, that would be genius. Yeah, Nick, like, who me says? All of us. Yeah, yeah.

34:08
Yoav Weiss
So I agree it's a bad idea, but I also think, like, monkey patching Fetch isn't going anywhere.

34:15
Jared Freeze
But yeah,.

34:21
Nic Jansma
Sorry, I did have one. One thing before, Sergey, if that's okay. First of all, Jared, like, I really love the fact that you came with description about how to participate as. As well as ideas for how we could coordinate and, you know, help each other out. Like, I think that's a really great way to approach us. So thank you. I don't know much about the CNCF. I just haven't done anything over there in the W3C. For example, to participate in the working group, you have to be a member and pay money. In a community group, you can just join for free as we are. Are there any sort of limitations for participating in this in the hotel area of CNCF stuff? Or can anybody join at any time? Like, is there any limitations there?

35:04
Jared Freeze
No, not at all. Yeah, anyone can join anytime. Honestly, it's. Yeah, it's pretty loose for approving and maintaining, you know, it's really whoever shows up and, you know, we get to know each other and all that. But Slack's open, Google Docs are open. Which is probably not the best idea. You know, it's. Yeah, anyone can come. I can definitely post some links or get links to you and we could distribute that. But yeah, CNCF is pretty easy to get into. You just Google and then you can sign up for Slack. Anyone can do that. And we live in hotel Dash browser, so.

35:39
Nic Jansma
Great.

35:40
Jared Freeze
Okay. All right.

35:42
Nic Jansma
Thanks for those procedural questions being entered. Sergey,.

35:48
Sergey Chernyshev
Slightly touching on the previous conversation. I had that question in the chat earlier, so I imagine it was sidetracked by the download, by the compression conversation. So how chatty is the protocol? Like, because when to send the beacon, how many beacons to send? That's all of the RAM vendors have that question answered in some way, one way or another. Does protocol prescribe that? Is there. Are there best practices for doing that? You mentioned obviously the end of the session, you know, but sometimes some vendors send the metrics or numbers you call the metrics in hotel. I understand this is different.

36:31
Jared Freeze
In this world,.

36:36
Sergey Chernyshev
Sometimes the beacons, let's call them beacons, are sent back multiple times per session, sometimes a lot, sometimes only once. And all that. Is there some control over it? Is there flexibility for this support or anything?

36:51
Jared Freeze
Yeah. So just to dive a little deeper in the layers within the SDK. So you have the SDK, you install the instrumentation. Instrumentation watches the page, then it goes through a processor. In the processor you can do lots of fun stuff. You can stamp attributes. This is where we add the page URL to every single log and span before it goes out the door. Then there's a transport layer in the processor level. There's something called a batch log processor and a batch span processor. That's just a timer. It basically just collects messages. As much as it can build over five seconds, that's configurable. And then it sends the batch. And this is why OTLP is great, is because it understands that array right away. So you can send them as they come. One of the things we do is report exceptions right away.

37:42
Jared Freeze
They actually don't go through the batch processor, just fire off. Not always, but it depends on the severity. But everything else gets batched. So every three to five seconds, depending on how much telemetry you're generating, then it gets sent off. So that's kind of the idea. And we're finding honestly with compression stream and the commitment to like low cardinality, you know, we're not collecting JSON bodies or request bodies. This data is super small because the keys just repeat over and over. They're prime for gzip. So Honestly, we never see bundled over 4k. Like they mostly fit into Send Beacon if you need that we don't use that. We use Keep alive. But yeah, that's the idea.

38:29
Sergey Chernyshev
Yeah. And sorry, the follow up to that, I assume there is some support, like you said, the, sorry, batching, processing, you call it some support for aggregated metrics. Because some vendors aggregate, for example, resource timing before sending, so they do create metrics. Right, like in your terms.

38:51
Jared Freeze
Right.

38:52
Sergey Chernyshev
Or other kinds of aggregations before they send back. Is there kind of an opportunity for that in this technology?

39:01
Jared Freeze
Yeah, it's funny, I mean this actually just came up that people want metrics for certain things. You're like, I just want to know how many images I loaded. I don't need to know every single resource. That's fine. We actually talked about this. So using the actual metrics API, we don't want to include that again because it's a large file. Now having a metrics API and sending a log is what is kind of coming out of these conversations where yeah, you can just hit it with like, hey, I'm counting images, you know, and at a certain point, like, you know, lcp, I'm going to send them or whatever. Right. That is, that is something that has come up already. So yeah, I mean there's no reason that you can't have metrics. It just won't be officially a metric in the way that OTEL defines it.

39:50
Jared Freeze
So that is sort of tbd. But yeah, you're not the first person to ask for that.

39:57
Sergey Chernyshev
And obviously volume on individual connection is not a problem. It's the aggregate that might be more problematic, especially at some large scales that we have to deal with.

40:11
Jared Freeze
Yeah, absolutely. I see. You could make a processor that it batches, but it just absolutely waits till the last second. You don't actually send anything until page exit. But again then we run into the issues with page exit that we all know about, including iOS. Not doing anything sometimes at the end.

40:37
Nic Jansma
Any other thoughts or questions?

40:44
Jared Freeze
Cool. Thanks everybody.

40:46
Nic Jansma
Yeah, thank you, Jared. We had good, you know, given the full hour. Just I didn't know how long this would. The conversations would happen, but really appreciate you guiding us through this. I didn't know much about opentelemetry.

40:57
Yoav Weiss
I have an extra question. So you mentioned the context, like the tracing context and it being communicated to the client. Many years ago we talked to the relevant working group about doing that part in server timing and being able to then coordinate client side and server side entries. How is that happening? Today, like what's the coordination mechanism for sending that context to the client?

41:35
Jared Freeze
It's the trace parent meta tag. That's, that's how it works. Today also we're seeing people deliver IT headers in like a config request, something like that. Not ideal. The meta tag is the official way.

41:54
Yoav Weiss
Okay, so a meta tag in the HTML that then is read by the JavaScript.

41:58
Cliff Crocker
Okay, yeah.

42:00
Andy Davies
Having the trace ID web exposed would be nice. The trace ID header web exposed would be nice. Yeah, because lots of people don't put it in a server timing header.

42:16
Nic Jansma
So you'd be able to read it from a meta tag, but you wouldn't be able to read it if it was a HTTP header because there's no way. Yeah, okay.

42:22
Andy Davies
Unless you're hacking fetch, then it only applies to some requests. It doesn't apply to the original navigation HTML.

42:30
Nic Jansma
Yeah, and getting it into the meta is slightly more complicated because you actually have to modify the HTML then potentially depending on who's inserting it, etc.

42:40
Karlijn Lowik
Okay,.

42:43
Nic Jansma
Interesting.

42:48
Sergey Chernyshev
I do have a non technical question.

42:53
Jared Freeze
As well.

42:55
Sergey Chernyshev
So, and it probably is for everyone, not just Jared, but is this new language or protocol a way to bridge the two communities of people who are, who live on the front end like rum people and people who live on the back end like all the ops. And sorry if I'm labeling people wrong, but you know what I'm talking about basically bridging the gap that I think exists today in observability world, if we want to call it that way, but I don't like the word personally, but that's probably part of the problem. So is this something that can help here live?

43:41
Cliff Crocker
I was just going to pile on to that and see in Magnus's comment like this is what we're seeing a lot of is that organizations are going all in on hotel on the back end and they want to maintain their own components, composable observability stack and standardize on something and the front end risks being left behind a bit or dealing with a proprietary locked in solution through one of the larger observability providers that maybe they don't want to use. So I think that's part of why this gets to be a bit more interesting as well as just kind of having standardizations and one source of truth when you are working between the SREs and the front ends to kind of know, fix issues.

44:21
Cliff Crocker
So I don't know if that answers or if I'm just commenting on generally why, you know, I would say I'm starting to drink the Kool Aid. It was very confusing to me at first of, why are we doing this? Are we reinventing the wheel on the front end? Are we, like, why do we need two different standards? Like, why aren't these two people, like, groups talking together? And then, you know, Jared calmed me down quite a bit. Got me understanding a little bit more about the goals here and how. I don't think it's really that far removed from, like, how we think about the world in terms of, like, yes, we're all different vendors, but we're all trying to standardize so we can make it easier for people to adopt Drum. So,.

45:05
Jared Freeze
Yeah, I see you posted the Trace Contacts link.

45:07
Sergey Chernyshev
Exactly.

45:10
Nic Jansma
I guess, yeah. Like, this session has helped educate me a lot on opentelemetry and some of the challenges. Is there, like, is there a good description or enumeration somewhere of, like, specific things that would help bridge in. Bridge this stuff into rom? Like, surfacing Trace context is maybe one of those things. Like, is there other commonly, like, oh, we got to do this, but nobody has taken it up yet.

45:34
Jared Freeze
Like, yeah. So the biggest one. I don't know if everybody here knows what Zone JS is. Zone js, I don't know where it came from exactly, but it's Async context, which is something Node has. The browser doesn't have this. The context right now is like the page, which is not really sufficient. You don't know what call, what click goes with what call. You can work backwards from timestamps. That's not great. You don't really know. I click this button. I got this modal. It fired off five requests. I can sort of work out it went with that click. But real context would be amazing. That, I think is something only the browser can do. Zone JS is massive. I believe it is abandoned. And it has to. I think you need. You got to compile it way down for whatever reason. There's.

46:26
Jared Freeze
There's something going on there. But I think it hacks through what Async compiles down to at in ES5, I believe there's. There's some insane requirement where it's actually digging into the Async calls themselves, which is just wild. So that. That is the biggest problem I think right now. If you want any other scope, you know, lower than the page, you don't really get it. So you just sort of collect everything and, you know, tie it to the backend requests and, like, call it good. But yeah, especially for, you know, we had a customer ask about is it micro front ends.

47:11
Jared Freeze
It's like basically where you have like all the apps, you have dashboards and like each app is like a department and they all want to run their own like session id and they also want to have context for just their little area, you know, on this thing. That's not really possible at this point unless it's in the path or something. You know, they're all hitting different backends, something like that. But even that you're doing it yourself, like that's not great. So, yeah,.

47:39
Yoav Weiss
So basic Context is a JavaScript proposal, like a, you know, a TC39 proposal. I don't remember what stage they have been. I would have loved for them to move things along faster than they have. Chromium has infrastructure that essentially does the same things called task attribution. That's sitting like, that's the infrastructure behind soft navigation support. Because soft navigations have the same problem where you need to know, okay, promise did a thing. How do I find, you know, what the thing is on the other end of that promise and be able to make that link? So I don't know when and if Async context is coming. That's, you know, those are things that other people have worked on. I think like Michael would have had more context on those conversations if they're still ongoing.

48:50
Yoav Weiss
Like, yeah, on the Chrome side, I would talk to like Michael Mockney, Scott Hayley about whether there has been any progress on that front.

49:03
Andy Davies
Yeah.

49:04
Yoav Weiss
But I, I totally. So from your perspective, like what exactly are you trying to trade? Like, what are you trying to trace? What resources were triggered by what micro front end and things along those lines. What's the.

49:21
Jared Freeze
Yeah, like even if you don't have a micro front end, just knowing, like with certainty, that fetch request, you know, fired another fetch request. Right. Just at its core, just that, you know, just to see, you know, if you're, you know, you start a request and then it starts four more, you're like, okay, you know, I want to keep track of this.

49:45
Yoav Weiss
Yep, yep, makes perfect sense.

49:47
Jared Freeze
And yeah, I did want to add one more thing. So our syntax is committed to baseline widely available. So anything we build today, we are like web vitals obviously has stuff in it that is not baseline widely available, but we use as much as we can. That's the, that's the practical. That's what's happening practically because we want as much as we can and you know, browser share in certain places, it has really good coverage. It's not baseline widely available. So if you guys do start to look at docs, it will say, hey, we're super strict about this. But then we go look at the code. It's all gated on what people really want. So we're still working on that. But the again, the syntax itself is baseline widely available, so we're trying to keep track of that.

50:35
Jared Freeze
So like I ran into something with abort, I guess abort, that timeout is not quite ready, things like that. So there are certain things that we keep an eye on very specifically, but we're trying to have really broad coverage. You know, we don't want to leave anybody out, we don't have to. So like this off nav Polyfill is still working out how to do that. That's absolutely something we could use help with.

51:15
Cliff Crocker
If we are done with questions first. Thanks again, Jerry. That was awesome. But I just had one recommendation for just more housekeeping. But the next time, is there any more questions around the topic for today? Cool, awesome. This is really helpful for me and I've been waiting for a while to see how we cross the streams between these two conversations. So this was great. Nick Ryan, Sergey, others from Cloudflare Lots of great discussion yesterday in our company and just around the web around some of what Cloudflare exposed about bot traffic and AI agents and the percentage of that traffic that's now coming from bots made me think a lot about the conversation we had a couple weeks ago. The information that Philip shared from some of the Akamai findings.

52:10
Cliff Crocker
Just curious if that's something that we might be able to dig a little bit deeper on. I did look at the radar stuff and seeing where requests coming into HTML have increased, but maybe other things like JavaScript or others have not as much. Is there any efforts going on within Cloudflare to start to expose a little bit more like what we learned about Akamai, about how a lot of the times we're just not seeing the agents because of the inability to execute JavaScript or any discussions happening internally in your world?

52:43
Nic Jansma
I would say there's a lot of things being discussed. I. I don't know that I can feel confident enough in knowing if we have additional things that we can share at the moment, but I would love to get to that point at some point soon. I don't know if Ryan or Sergey, if you. If there's any more discussions before even I joined about kind of, you know, surfacing some of our rumors crossed by that data a bit more.

53:10
Ryan Townsend
Yeah, I'm not sure to be honest I know obviously it's an ongoing thing within the company and you know, everyone's looking at this stuff, but I don't know how much we can share or anything like that.

53:23
Cliff Crocker
Yeah, makes sense.

53:26
Nic Jansma
And before everyone goes, I'll say, you know, we do have two months before the next call, so there could be some, you know, R and D time for any one of us between now and then. That could be a good topic for least touch for half of the next session or something. Just kind of keep that conversation going. I feel like when we did have the AI, when I think it was two months ago, because last time was browser updates. I think we had a really good lively discussion that we, I think wanted more time almost of. Yeah, the ABCs, the AI bots and crawlers and yeah, so I would love to just kind of keep that going and see if there's anything new that we as a community can share.

54:02
Nic Jansma
So, yeah, as Ryan's saying, we can do some digging internally and maybe I'll surface whether we have something useful to share for the two month timeline.

54:11
Cliff Crocker
Don't get yourselves in any trouble. But you know, just.

54:14
Nic Jansma
We're always going to get in trouble. It's great. Ask forgiveness, not permission.

54:23
Erwin Hofman
Yeah. So we've been fighting bots as well and we are using quite a lot of Amazon cloudfront rules to block the common bots, et cetera, known bots, verified bots. And even then we're seeing a lot of, well, we started trying to identify like runtime signals, does their viewport stuff add up, et cetera, are they lying about their user agents but not supporting or actually supporting unexpected APIs. And yeah, we are seeing a lot of automated traffic, playwright, web driver, etc. That I guess cannot really be detected server side. So yeah, which is the reason that we are seeing it and still seeing that in rum, despite all the firewall rules that we have configured in Amazon. So I suspect the same applies to Cloudflare as well.

55:21
Nic Jansma
An interesting thing too, obviously, like our companies are different, we have different things. I think it may be even a bigger challenge for a, a vanilla rum provider, if you will, like a company that's just providing rum versus a CDN that also provides rum, because we do have more signals that we can gather from the actual page load and stuff like that too. So I suspect it's probably even harder on your end to detect and, or block that kind of undesired beacon stuff. So yeah, it could be a really interesting discussion to talk about some of that more.

55:54
Cliff Crocker
Yeah, just seems like it's going to continue to just grow in terms of our discussions around it.

55:59
Jared Freeze
So would love to sort of keep.

56:01
Cliff Crocker
That as a evergreen topic. Yeah, certainly.

56:06
Andy Davies
Fastly's London conference this morning, they said they'd seen a six times the amount of AI traffic compared to human traffic.

56:14
Jared Freeze
Over the last year.

56:15
Nic Jansma
Well, isn't that wonderful?

56:20
Sergey Chernyshev
Numbers are impressive, that's for sure.

56:24
Andy Davies
Are they impressive or frightening?

56:27
Ryan Townsend
It depends whether the human traffic's going down. That's the concern to me is like, if, right, if AI traffic's going 6x, fine, go nuts. But if human traffic is, you know, downward trending, then that's the. That's more of the concern because, you know, well, that's the future of the web, isn't it?

56:48
Sergey Chernyshev
There is a human somewhere on the other side. The question is, it becomes more opaque and thicker path between what we measure and what actually happens in users. Frustration level. They're now not looking at spinners or whatever, they're looking at chatbot being combo lady or whatever the chatbots do.

57:10
Nic Jansma
Well, I've penciled in for the August meeting again, we're not going to meet in July. I penciled in at least revisiting the ABC topic and I could probably commit to at least the Cloudflare team internally looking into it, see if we see anything interesting that we could share before then. And maybe we circle back, you know, a month from now to see if people still want to do that topic, if there's other things that we're. Does that sound right?

57:35
Karlijn Lowik
Yeah. And last thing, guys and girls, we are doing the ram. RAM again. For everyone who is joining us at Perth now, please sign up and if you have any ideas on what we could discuss that day, also please let us know. We're excited. Just. Brian, just follow the link in the Slack channel and you'll find an event. Right. Or DM me and I'll send it to you.

58:05
Cliff Crocker
We can probably throw it in the notes too, from today's call, just as a resource to have.

58:09
Karlijn Lowik
Yeah, yeah, good idea.

58:13
Sergey Chernyshev
Yeah. I hear Caroline is making T shirts.

58:17
Karlijn Lowik
Yes. Join our socks club.

58:25
Nic Jansma
Love it. All right, that buttons us up right to the hour. So thank you everybody for joining today. See you not next month, but in August.

58:39
Karlijn Lowik
Happy holidays to those who have them.