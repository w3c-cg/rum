**00:00**
Barry Pollard
Yeah.

**00:13**
Nic Jansma
Good to see everybody this Friday. Anybody have fun summer plans coming up at all? Sitting at home board.

**00:45**
Karlijn Lowik
Made it.

**00:48**
Nic Jansma
Just in time.

**00:51**
Karlijn Lowik
Yeah, I was trying to connect my earplugs. They did not. Yeah. But I actually my holiday plans are right now so appreciate me stepping out of my holiday guys.

**01:09**
Nic Jansma
Thank you for joining.

**01:12**
Nic Jansma
All right, the slide deck going.

**01:19**
Nic Jansma
Let me start in a minute or two. Got 16 people start.

**01:41**
Karlijn Lowik
Actually before we start I just wanted to take a quick moment to do a shout out to CLIFF Because Cliff's 50th birthday was last week.

**01:51**
Nic Jansma
Happy birthday to Cliff.

**01:54**
Barry Pollard
Oh my gosh.

**01:55**
Karlijn Lowik
Happy birthday to Cliff.

**01:58**
Barry Pollard
Doesn't look a day over 49.

**02:02**
Cliff Crocker
Thanks guys. Appreciate it. I actually got to turn 50 in the Moab Desert so that was pretty great.

**02:14**
Nic Jansma
Nice.

**02:16**
Nic Jansma
And you came back to us.

**02:18**
Barry Pollard
I did.

**02:19**
Barry Pollard
I was just kind of thinking I.

**02:20**
Cliff Crocker
Might just keep walking.

**02:23**
Karlijn Lowik
Off a cliff.

**02:26**
Nic Jansma
Were you hiking? Were you just camping? What were you doing there?

**02:31**
Cliff Crocker
So we caught overlanding here in Colorado. Yeah, just like just camping from spot to spot and doing some four wheel drive and stuff and that's great.

**02:40**
Nic Jansma
Awesome.

**02:40**
Cliff Crocker
Pretty cool area. Lucky bum I've never heard of. Under landing. Isaac.

**02:50**
Michal Mocny
Not sure.

**02:54**
Nic Jansma
All right, we've got somewhat of a packed house and we've got a lot of things that we would like to.

**03:00**
Nic Jansma
Chat about today day.

**03:03**
Nic Jansma
Welcome everybody to the Friday June 20th edition of this. Let me make sure we are recording.

**03:13**
Nic Jansma
Share some slides although we don't have.

**03:15**
Nic Jansma
A lot of content on them but it's good just to chat about them.

**03:22**
Nic Jansma
Agenda for today we've got a bunch.

**03:24**
Nic Jansma
Of smaller topics to talk about so we're going to hand it over to the Chrome team for a couple updates either from Barry and or Michael, some things that they may want to talk about.

**03:39**
Nic Jansma
Nazim from Mozilla is here to talk about some updates from Firefox.

**03:44**
Nic Jansma
And then there was a really good discussion in one of the Slack channels for web performance from Isaac where he was talking about some of the challenges or things that they're trying to measure at Slack around unresponsive crash reports and how to self profile and stuff like that. I thought it'd be a good discussion to bring here, maybe brainstorm a little bit as well.

**04:05**
Nic Jansma
Looking forward to all those.

**04:09**
Nic Jansma
Not a lot new from the logistical point of view this week. We still are putting some things into the GitHub issue tracker that we've been talking about the last few meetings.

**04:23**
Michal Mocny
And.

**04:23**
Nic Jansma
I think that's the only newest thing we for from a logistical point of view. So this is June. We try to meet every month. We are going to skip July just because some of us will be gone and we figure it's a high vacation month. That may be true as well in August. So I guess we'll see what kind of attendance we get in August. But our goal right now is to meet again, skipping July, meeting again in August. We talked about a couple things in our agenda document has a list of various things that folks want to potentially talk about. One of the things on there we've been discussing is maybe talking about implementation best practices, for example when to fire the beacon, how to deliver it, single page app support. And that might be a nice follow.

**05:19**
Nic Jansma
Up to some of the topics that.

**05:20**
Nic Jansma
We have today as well. So that's one of the things that we're thinking about. There's a couple more here.

**05:25**
Nic Jansma
Feel free to vote with your thumbs.

**05:27**
Nic Jansma
Up in this document if you would like to help raise the awareness of.

**05:30**
Nic Jansma
Any of these or suggest your own.

**05:34**
Nic Jansma
And I think that's all I have for today. So I will send out a council for the July meeting and then figure out the exact date of the August meeting after today. So with that I guess why don't we head down the agenda in order. Barry, did you have updates that you wanted to give before Michael talked about spa things?

**06:02**
Nic Jansma
Excellent.

**06:06**
Barry Pollard
And it will help if I'm off mute. Yes, I've got a couple of things to talk about quickly before the main topic which will be Michael talking about Soft Navs. One is I still haven't come up with a better logo, so if anyone is graphically minded, let me know. There's a few things I wanted to cover today on from updates from the Google side.

**06:26**
Barry Pollard
One is Soft Navs.

**06:27**
Barry Pollard
As I say, Michael's going to be doing the dedicated stuff on that, so I'm going to skip that completely.

**06:31**
Barry Pollard
Two is Fetch later encoders.

**06:33**
Barry Pollard
I've been meaning to talk to this group about this for a while, but I've been away or you've been away or things haven't worked. So we launched Fex later, earlier this year and there's some fun stuff to know about quotas, particularly for ROM vendors. So we'll talk about that there. Now Web Vitals V5 was released and.

**06:52**
Barry Pollard
I know a lot of you use.

**06:53**
Barry Pollard
That as your underlying core Web Vitals library, so I thought I'd give you some background on that and also within that some of the stuff that we did in Loath and how we're using it in movitals V5 which hopefully be.

**07:05**
Barry Pollard
Interested to people using it but also.

**07:07**
Barry Pollard
Potentially other run providers that aren't using it give them food for thought about how they might use it. I've got quite a few speculation rules updates and I want to talk about why that's important for you guys and somebody on compression dictionary transport. So to get fired in Fetch later is a new API. I think it's very useful for runfighter.

**07:29**
Barry Pollard
So you can sit there and set.

**07:30**
Barry Pollard
Up a beacon and then update it throughout the thing and send it later. Run Vision did a good implementation of.

**07:38**
Barry Pollard
It and a very good blog post.

**07:39**
Barry Pollard
On it saying how much it saved them beacons and stuff like that.

**07:43**
Barry Pollard
But they were one of the people.

**07:44**
Barry Pollard
Who ran into this issue.

**07:46**
Barry Pollard
There are some very strict quotas on what you can set up for Fetch later. It isn't just send this beacon and.

**07:52**
Barry Pollard
Send it whenever you want, it's queue.

**07:54**
Barry Pollard
Up this beacon if the page is still under quota. And it's actually quite a complicated system that it uses to understand whether you're.

**08:03**
Barry Pollard
Under quota or not. And it depends on where you're running.

**08:07**
Barry Pollard
Is it in the mainframe or one of the iframes?

**08:09**
Barry Pollard
You have less quotas if you're on.

**08:11**
Barry Pollard
The iframes, and also who else is.

**08:12**
Barry Pollard
Running it and stuff like that.

**08:13**
Barry Pollard
So that can hit us in unexpected ways. And Erwin from One Vision was one.

**08:18**
Barry Pollard
Of the ones who find this bug.

**08:19**
Barry Pollard
And it is a bug in Chrome.

**08:20**
Barry Pollard
And I checked it today and was disappointed to see it hadn't been updated.

**08:24**
Barry Pollard
Where someone else was. I think it's a Shopify site, they.

**08:29**
Barry Pollard
Use a lot of anonymous iframes and.

**08:31**
Barry Pollard
That was basically sucking up all the.

**08:33**
Barry Pollard
Quota which left no quota left over to actually begin back the rum data.

**08:40**
Barry Pollard
One thing I really want to get across to this group is whenever you send or queue up a beacon, you'll be told whether it's successfully queued or not.

**08:48**
Barry Pollard
One of the main things you can get is your out of quota. It hasn't worked.

**08:52**
Barry Pollard
So that point you need to fall back. I mean, most of you should be using this with a fallback anyway because it's only supported in Chrome. So you'll need to basically switch to.

**08:59**
Barry Pollard
That fallback mode if there's no quota. And there's, as I say, lots of reasons for doing that.

**09:04**
Barry Pollard
There is quite good docs in this, says he who wrote them. But yeah, I say it's quite a complicated thing.

**09:11**
Barry Pollard
So read the docs on this and they're on mdn. I coupled together all the stuff from the explainer and my learnings from it and Irwin's learnings and stuff like that. So do read that if you spot anything wrong with it by the way, let me know.

**09:24**
Barry Pollard
But yeah, if you are looking to.

**09:25**
Barry Pollard
Use this beacon and things good and.

**09:26**
Barry Pollard
I do think it's good despite this, but it's just an extra wrinkle and.

**09:30**
Barry Pollard
Complication that you need to know about that.

**09:33**
Barry Pollard
So yeah, reach out if you get.

**09:34**
Barry Pollard
To spot anything else with it or come and present at this group if you get all sorts of fun findings moving on.

**09:43**
Barry Pollard
By the way, feel free to interrupt if you've got any questions or ask.

**09:45**
Barry Pollard
Me at the end.

**09:45**
Barry Pollard
Either way, it's Me Web Vitals V5 had a number of changes, so the most important one is this will be the only maintained branch going forward, so we don't maintain a V4 and a.

**09:56**
Barry Pollard
V5 and backwards port.

**09:58**
Barry Pollard
Any issues, even security issues and stuff like that. If you want updates and you're using Web Vitals V5 and using Web Vitals you have to upgrade to V5. It is a major version change, so there is quite a few breaking changes. One we've removed on fid so I.

**10:14**
Barry Pollard
Think most of you given up on.

**10:15**
Barry Pollard
FID a while ago, so hopefully that's not a breaking thing, but you might.

**10:18**
Barry Pollard
Still be collecting it and you just need to remove it before you can upgrade.

**10:21**
Barry Pollard
We are also using Baseline widely available for our coding and also for the pre built builds that we store on.

**10:30**
Barry Pollard
Package and that sort of thing.

**10:32**
Barry Pollard
If you are still supporting IE11 then one I'm sorry for you. You may need to either wrap this in a script module or backwards compile.

**10:44**
Barry Pollard
Or polyfill or whatever where you do that.

**10:47**
Barry Pollard
Previously were quite cautious about that.

**10:49**
Barry Pollard
We've now decided to live in the modern world and move on. So if you're not living in the modern world, as I say sorry but for you and you'll need to make.

**10:58**
Barry Pollard
Sure if you're using this build that we don't break your whole run script.

**11:01**
Barry Pollard
Because some script that doesn't use that.

**11:04**
Barry Pollard
There is some improved loaf attribution that.

**11:07**
Barry Pollard
I'm going to talk about in a minute, so we'll skip back a minute.

**11:10**
Barry Pollard
There's also options for we save the element targets. Quite often we get it, particularly with SVAs. You click on something, the target goes away, we report RMP at the end of the page lifecycle, the target's no.

**11:23**
Barry Pollard
Longer in the DOM and you get missing elements.

**11:25**
Barry Pollard
We now try and save it whenever the performance observer fires off and even if we report it later, there's still quite a big opportunity for missing elements with that in that example, you click.

**11:36**
Barry Pollard
It, it might remove it from the DOM immediately.

**11:39**
Barry Pollard
Even by the time the form is observer fires, it's gone anyway. So it's not an ideal solution, not perfect solution, but it should capture the.

**11:47**
Barry Pollard
Element more often than it has in the past.

**11:50**
Barry Pollard
And that was done for LCP and we saw some good improvements in V4.

**11:54**
Barry Pollard
We've now done it for RNP and COS as well.

**11:57**
Barry Pollard
So we tried to capture a good.

**11:58**
Barry Pollard
Bit more of those.

**12:00**
Barry Pollard
We also often because we're doing that at the time, we're not passing the node back anymore. So we also offer the feature of if you don't like the selector that we do.

**12:11**
Barry Pollard
So we give like a CSS style.

**12:13**
Barry Pollard
Selector to try and tell you which element it was. If you've got your own one or you've got, I don't know, data attributes on the page that are much more useful to you, then you can override that and pass that to each of.

**12:22**
Barry Pollard
Things and we'll run that at the time.

**12:24**
Barry Pollard
And there's lots of memory and event.

**12:26**
Barry Pollard
Handler improvements, including small ones more recently 5.0.3. So yeah, that's another good reason to upgrade.

**12:36**
Barry Pollard
Improved low off attribution. When you do a trace you get lots of information. You get the flame chart, you get maybe a summary and you get this interactions track with your whiskers going on at the minute. Web vitals V5 and a lot of run providers only really provide that kind of interaction track view. So we give the three breakdowns of your input delay, your processing time duration.

**12:59**
Barry Pollard
And your presentation delay, which is partially.

**13:05**
Barry Pollard
Useful, not as good as a full trace.

**13:07**
Barry Pollard
And I guess we'll come talk about that in the last talk of today.

**13:10**
Barry Pollard
And how much useful that is.

**13:13**
Barry Pollard
The waf, it kind of help can help improve that, but it does contain.

**13:18**
Barry Pollard
An awful lot of data you can.

**13:20**
Barry Pollard
Begin at all and if you do, by the way, Speed Curve did a.

**13:23**
Barry Pollard
Fantastic implementation of this and there's great.

**13:25**
Barry Pollard
Docs Cliff and more details on L written by Andy.

**13:29**
Barry Pollard
So do have a read of that.

**13:30**
Barry Pollard
If you're considering that. But that is an awful lot of data. I don't know if Cliff can talk later about how much or any problems.

**13:36**
Barry Pollard
It is or whether they sample it or anything like that. But yeah, you can, particularly on a.

**13:40**
Barry Pollard
Very busy page, end up beaconing back a huge amount of data.

**13:43**
Barry Pollard
The other option is to only do it on X percent of your users.

**13:47**
Barry Pollard
And beacon everything, but then you can miss stuff and do that on page.

**13:50**
Barry Pollard
And then the third option you can do, you can Beacon only some of it.

**13:54**
Michal Mocny
So.

**13:54**
Barry Pollard
So you could say pick the longest script and beacon that back. And I think Romvision and a few others do that.

**14:02**
Barry Pollard
So for V5 we want to look.

**14:03**
Barry Pollard
More at the last one.

**14:04**
Barry Pollard
So we in V4 exposed INP LUAPs, but we also want to see what else could we do. So web vitals in the attribution build.

**14:15**
Barry Pollard
It takes quite an opinionated view on.

**14:18**
Barry Pollard
Things that you should collect and we want to have an opinion here.

**14:23**
Nic Jansma
To.

**14:23**
Barry Pollard
Explain what we did there.

**14:24**
Barry Pollard
And I think some of you have seen this before, but I don't think I presented this group. Apologies if I'm repeating myself.

**14:28**
Barry Pollard
And I have. Whenever you hit inp, you get an INP value, which is the whole time.

**14:34**
Barry Pollard
And that's aggregated over the whole page. P98 and all that sort of stuff. Not going to talk about that.

**14:39**
Barry Pollard
As I say, that kind of is split into three sections. You get your input, delay, process and duration, which is when the click is actually processed. And that can be further split into. You might have a on pointer down.

**14:50**
Barry Pollard
On pointer up on click or whatever. You might have various event handlers in there. And then you have a presentation delay afterwards.

**14:58**
Barry Pollard
That can have long animation frames spanning it. Some of them can start before the.

**15:03**
Barry Pollard
Click happens, some of them can happen.

**15:06**
Barry Pollard
After, but we'll ignore those.

**15:07**
Barry Pollard
And some of them can. You know, you might just get one luauth that kind of does the whole thing.

**15:12**
Barry Pollard
Within a long animation frame you get lots more details. So you've got. You can get script attribution, so which scripts are running.

**15:19**
Barry Pollard
Then you get various timings on how.

**15:21**
Barry Pollard
Much for style and layout was running in each script. You also get when does the actual end of frame style and layout start and end.

**15:28**
Barry Pollard
And you can also calculate based on the presentation time if you join it up with your ip, as to how much off main thread sort of paint and composite type actions were happening.

**15:41**
Barry Pollard
And again, this is kind of getting close to a flame chart.

**15:43**
Barry Pollard
We only get the top level stuff.

**15:44**
Barry Pollard
Rather than each thing. But it's a hell of a lot cheaper to.

**15:48**
Barry Pollard
To calculate and to gather in the real world rather than doing a full JS profile.

**15:55**
Barry Pollard
What we can do then is bucket those into the types of the yellow for script, purple for style and layout.

**16:03**
Barry Pollard
And green for the off main thread style layout.

**16:06**
Barry Pollard
And then there's always gaps in there as well. So we've got gray for kind of.

**16:09**
Barry Pollard
Unattributed stuff in there.

**16:12**
Barry Pollard
There is a bit of overlap between luafs in that the end of the loaf will Result in the frame presentation, which as I say, is off main thread. So you probably particularly care about it. So we ignore it whenever we bucket it. We also had an opinion here as to the four star and layout. Should that just be measured in scripts or should it be done measured as.

**16:33**
Barry Pollard
Part of style and layout?

**16:35**
Barry Pollard
What we decided there was to measure.

**16:39**
Barry Pollard
That as actually style and layout.

**16:41**
Barry Pollard
So we're bucketing it in this way. And the other thing is that you would we ignore the bits of loaf.

**16:47**
Barry Pollard
That happened before the input and the.

**16:49**
Barry Pollard
Bits of script as much as possible.

**16:50**
Barry Pollard
That happened before the script, before the interaction.

**16:55**
Barry Pollard
Which leads us to these buckets. Say we've got a script bucket, a paint bucket, a style layout bucket and unattributed bucket. We're seeing these as kind of gives a bit more detail.

**17:06**
Barry Pollard
Sorry, before I go that, if I.

**17:08**
Barry Pollard
Go back to the very beginning, it's like that summary panel that you get.

**17:12**
Barry Pollard
In Dev Tools where you get a.

**17:14**
Barry Pollard
Bit more information as to what the length of time was spent in there. It's still not the full flame chart, but a bit more information. And it's also in addition to the three phases or subparts that we do that. So we're not advising this as a replacement. It's just a different view on that. Was it a lot of script time?

**17:32**
Barry Pollard
Was it a lot of style and layout time? And that can help you debug and look at things.

**17:38**
Barry Pollard
The other interesting thing is that the longest script, whenever you look at it in this view, may not be the longest overlapping script. So in this case, script one started well before the interaction and went on. Is that the longest script? If you're just doing a very naive.

**17:52**
Barry Pollard
Thing, then you might have grabbed that.

**17:53**
Barry Pollard
But it might not be the longest script after you chop off the bit that happened before it. If you remove four style layout, then it might be even shorter scripts. So you could say script one is the longest script, the bit of script one that's overlapping is the longest script. Or and maybe in this case script 2 is the longest script, depending which way you look at it. What we've done is we've gone from that middle option where we're saying the longest intersecting script is what we report as a separate thing, including the four.

**18:20**
Barry Pollard
Star and layout start.

**18:21**
Barry Pollard
So that's the bit that we're advising you to concentrate on if you're wanting to knock down a long list of issues. Oh yeah, this was saying. So with that we have the longest inspecting script and also the buckets, which gives you an extra view kind of closer to devtools of the now you.

**18:39**
Barry Pollard
Get this summary view available in Web Vitals.

**18:43**
Barry Pollard
This is what it looks like. So after all that explanation, it's basically one object and four numbers available in the attribution model. So you get the script which you.

**18:53**
Barry Pollard
Can do whatever you like with beacon script back beacon, the vocal tag or.

**18:56**
Barry Pollard
Whatever and also the four total numbers.

**19:00**
Barry Pollard
Which say gives you that breakdown.

**19:05**
Barry Pollard
Moving on again, speculation rules. Okay, some big platform rollouts going on at the moment. WordPress 6.8 which latest one has speculation rules on by default. It is a very conservative prefetch, so not massive gains. But it also makes it available as an API so plugin owners and stuff.

**19:24**
Barry Pollard
Like that can go choose a bigger.

**19:29**
Barry Pollard
You know, a less conservative eagerness and very easy and they've got lots of rules. But then WordPress runs 30 to 45% of the web depending who you listen to. Personally I think it's closer to 30.

**19:41**
Barry Pollard
But they like to use other stats.

**19:42**
Barry Pollard
That say 45 because it looks better for them. But either way it's a big chunk of the web.

**19:47**
Barry Pollard
Shopify and I saw some people from.

**19:50**
Barry Pollard
Shopify here, they've also rolled out on by default and last I heard it.

**19:54**
Barry Pollard
Was on by default for 100% and they didn't have to roll it back.

**19:57**
Barry Pollard
So so fingers crossed that's still the case. They are by my calculations about 5% of the web. So another big chunk of the web is all using it. Again, they're going with the conservative prefetch. They are as I understand it, looking to roll out less conservative, probably still prefetch.

**20:13**
Barry Pollard
Whenever we do a couple of changes I'm going to talk about cloudflare, one.

**20:16**
Barry Pollard
Of the first big providers to do it. They currently in my understanding got it off still but they are looking to re enable it in the next month.

**20:23**
Barry Pollard
Or two and they are yeah again.

**20:26**
Barry Pollard
This is lies down lies and statistics. Cloudflare for homepages are about 10% of the web. They're much bigger if you look at anyone using Cloudflare because loads of people.

**20:34**
Barry Pollard
Load like libraries from Cloudflare and stuff like that. So I think they're 20 or 30%.

**20:38**
Barry Pollard
If you look at everything there. But main thing we care about is home pages. So yes Isaac, there is an awful lot of overlap between all of those. Some people are on Cloudflare and WordPress and or Shopify also uses Cloudflare so.

**20:53**
Barry Pollard
Don'T add these up and do that.

**20:59**
Barry Pollard
Next thing is we've lots of new features so there's lots of active development going on. So in Chrome 136 released a tag field that allows you to detect the server side. So people like Cloudflare ask for that. So they could say if it's Cloudflare and it's not cached at the edge, block it. Because we don't want to overload the origin and we're turning this on by default. If it is the user's own script speculation rules and they've chosen to do.

**21:21**
Barry Pollard
That, let it pass through and that sort of thing.

**21:24**
Barry Pollard
There's a target hint field if you're opening things in new tabs. Very exciting in the next version is.

**21:30**
Barry Pollard
Target hint was earlier than that, I think, Sorry.

**21:32**
Barry Pollard
Clear site data which allows you to say, I don't know, you've speculated a page in Shopify. You then add to baskets that API call to add to basket can then say clear the speculations that are no.

**21:42**
Barry Pollard
Longer valid and do that. So that's quite a good one.

**21:46**
Barry Pollard
Service worker currently wasn't supported by Prefetch.

**21:48**
Barry Pollard
But we're getting there.

**21:50**
Barry Pollard
We're rolling out slowly. We're 50%, last I heard. Then there's also Viewport here. So at the minute, the hover thing that a lot of people use is only really useful on desktop because mobile doesn't have a hover. So we've been experimenting with. As you scroll into the viewport for moderate, it'll be very clean. You need to be at the center of the viewport, you need to stop scrolling, you need to be. The link needs to be x large x percent of the screen or whatever.

**22:16**
Barry Pollard
And that sort of thing. And hopefully that's going to do it anyway.

**22:18**
Barry Pollard
I can get a lot more details in here, but the point is there's lots of active development going on here. And then the second point that I really shouldn't talk about because I can't talk to other vendors.

**22:28**
Barry Pollard
Sorry, Andrew, but I hear there's more browser support coming.

**22:33**
Barry Pollard
Shopify did a thing and apparently Mozilla are working, actively working on a prefix.

**22:39**
Barry Pollard
It could come very soon to Firefox, which would be exciting.

**22:44**
Barry Pollard
UAF recently got Safari to give a positive on at least the Prefects for same origin. Whether that means they implement it or UAUF rolls up their sleeves, I don't know. But there could certainly be more browser support coming. All of this is leading to a much greater adoption than this. So you can see the impact of WordPress on the chart on the right with the number of sites doing it. The number of navigations that we see.

**23:08**
Barry Pollard
In Chrome using it is huge.

**23:11**
Barry Pollard
This is all great and I love it. What the hell's it got to do with rom? My biggest thing is make sure you're measuring it and making sure that you're able to segment it for your customers. There was an interesting case study here by Sandar where they didn't see the gains. They saw the gains in the performance metrics, but not so much in their business metrics. I think that's anomaly and they said that was a fast site and I think in most cases you will see the gains. But this is where you guys can help and actually be able to measure your speculated traffic versus your non speculated traffic. And if you're not measuring that then.

**23:44**
Barry Pollard
You'Re really kind of guessing.

**23:46**
Barry Pollard
So I think a lot of you are measuring it in your own products. Are you able to segment it by.

**23:51**
Barry Pollard
That and that sort of thing?

**23:52**
Barry Pollard
So that's why I'm presenting it to the ROMCG group.

**23:55**
Barry Pollard
Talk about there.

**23:57**
Barry Pollard
This is how you can measure it. It's all in the docs. So client size probably mostly what you care about. So you can put it in. There's a delivery type on the performance timing entry. You can check whether it's set to prefetch. Annoyingly pre render doesn't have that but you can check for a positive activation.

**24:11**
Barry Pollard
Start and then do that. So yeah, if you're not measuring it.

**24:16**
Barry Pollard
You can also do it server side. That's probably less interesting but many of you are running server sides kind of.

**24:22**
Barry Pollard
Analytics type things and you can do that.

**24:26**
Barry Pollard
And finally and then I'll give Michael a little bit of time compression. Dictionary transport is another big new thing that I think very similar could shoot off. So there it's been heavily used by Google so ads and doubleclick which like it or not are you by huge mics of the Internet already use this. Google search uses this.

**24:44**
Barry Pollard
I published a case study on it.

**24:46**
Barry Pollard
So this basically allows you to compress across resources. So rather than just G's it or broadly compress our resource, you can say hey, use the page that you just tabbed because the header and footer are 90% the same and just do the other content. I know several companies looking at this. I expect usage of this to grow increasingly and again you can detect client side. So as rum providers again it will be useful to be able to segment your traffic and see are people using this? Do we see better metrics from this?

**25:19**
Barry Pollard
Can we correlate it with business metrics and stuff like that?

**25:21**
Barry Pollard
I also Andrew can again probably talk about this but I Heard Mozilla were quite keen and maybe looking at it already.

**25:29**
Barry Pollard
So that's another implementation that might be coming as well at some point in the future.

**25:33**
Barry Pollard
Cool. And that's all I had. Feel free to reach out with any of that sort of stuff like my email or whatever. And I hope that was helpful. And any questions? Oh, Robin, are there signals from other browsers and compression to exchanges?

**25:49**
Barry Pollard
Well, we got a thumbs up from Andrew, so I think we'll. We'll maybe not hold him to any.

**25:53**
Barry Pollard
More than that unless he wants to.

**25:54**
Barry Pollard
Talk, but I think it's going. Yeah, no, that is active development. I won't give a timeline for speculation rules, but that is in development as well.

**26:07**
Barry Pollard
Semin, Thanks. I would like to ask if you.

**26:10**
Nazım Can Altınova
Would consider web vitals V5 as stable enough so that we can use it.

**26:14**
Barry Pollard
Now in our run tools. Absolutely.

**26:17**
Barry Pollard
I rolled it out to all of Google.

**26:21**
Barry Pollard
So YouTube are using this and stuff like that.

**26:23**
Barry Pollard
I would not do that unless I considered it stable.

**26:26**
Barry Pollard
So it is used by large parts.

**26:28**
Barry Pollard
Of the web already just by that alone.

**26:31**
Barry Pollard
Cool, thanks. Cool. I will let Michael take over then I'll say feel free to ping me.

**26:40**
Barry Pollard
Unless anyone else has any questions, but ping me offline if you're too shy to do it in front of the group.

**26:46**
Michal Mocny
Should we switch the order and let Mozilla folks go first? I kind of injected myself and then I can eat up the rest of the time just because we're a bit short on time, I think.

**26:55**
Nic Jansma
Yes. And we also had a section that were going to have for Isaac talking about things as well. So why don't we hand it over to Nazim first and we'll see where time's at after. After that. That sounds good.

**27:11**
Nazım Can Altınova
Michael and Isaac sounds good. Yeah. Hopefully I won't take too much time. So I have a small presentation. So mostly for my like thoughts and so I don't forget stuff. But let me start the presentation.

**27:25**
Nic Jansma
Okay, great.

**27:27**
Nazım Can Altınova
So, hi, I'm Nazim. Nazim John and I'm from the Firefox Profiler and Performance tools from Mozilla. This year I've been mostly working on Performance API and I wanted to give you a bit more information about the interaction ID and Interrupt and Core Web Vitals and the status of that. So yeah, first let me talk about the Core Web vitals and interrupt 2025. As you know, Core Web Vitals are the subset of. It is a part of Interrupt 2025 and were working on that already. And so to give you an idea. So this is the Start or this is the release version of Firefox. So previously core web vitals portion was 59% or around 59% and then we started working on the rest. What were they? We had event timing and largest contentful paint part of the interrupt 2025.

**28:30**
Nazım Can Altınova
So event timing was around 65% at start and LCP was around 53%. And so it means that. What does it mean? What is missing? Exactly. So for the event type API, again initial spec was implemented already. But Interaction ID and interaction counts, they were the missing parts because they were added after the initial implementation. And for like yeah, we have Michael here too, so that's great. So please correct me if I'm wrong as well. But for the lcp, again initial spec was implemented, but there are two things. The first one was the paint timing mixing. As far as I remember that was added last year. The second bucket is more like some spec changes along the way. After the initial implementation there were some issues there. Let me start with the interaction id.

**29:31**
Nazım Can Altınova
When I first looked at the spec, it was very self contained, it was very readable and I was super hyped up about it. I was super excited. I went in and started implementing it. The first implementation was very straightforward like I said. Then I run the web platform test with the changes that I had and lots of things were still failing and I didn't. There were a few things that were passing but I was confused. So I looked into Chromium source code and the spec and tried to compare between those and I realized that we actually have some gaps in the spec and they're not really matching 100%. Then I filed some spec issues and thanks to Michael. Great that you're here. He was super responsive and super helpful with the spec issues. Now we actually have plans for each of the issues.

**30:39**
Nazım Can Altınova
We have some great path towards fixing spec issues themselves. After changing some of the spec issues as well as some of the like, the parts that we have in Firefox now we have a working interaction ID and it is currently enabled in Nightly. So while we had a Nightly, we also found some spec issues as well as some issues inside Firefox. So we fixed them up and now again we are closer to Chromium's implementation than the spec, but hopefully we're going to close that gap as well. You can start testing it on Nightly and probably in your RAM data. You're going to get some information or some data from Firefox if you're curious about it. You can actually test it in release and beta channels as well, but they don't have all the fixes yet. So there's this pref here, but I wouldn't recommend.

**31:47**
Nazım Can Altınova
So if you really want to test it, Nightly is recommended. And also there's a big difference still that I would like to mention here. So Chrome actually uses the presentation time in the duration or in every timing values. And as opposed to that, Firefox actually uses paint time still. So what that means is Chrome uses the timing where everything is painted in the screen and everything is presented versus in Firefox it's right before that. So probably you might see that the amp values coming from Firefox are actually lower than Chrome right now. That's because of the paint time and mixing. We would like to implement paint timing mixing in Firefox and in the spec as well. The next plans are to collaborate more with Michael, update the spec and ship the interaction ID that we have in Firefox.

**32:57**
Nazım Can Altınova
The targets for that is Firefox 144, but hopefully we can do that sooner than that. So right now we're. I think the current nightly is 141 and next week is going to be. It's going to be 142. So yeah, after we fix the paint time and mix in, you're going to get more similar results compared to Chrome. And let me talk a little bit about the LCP and the work there as well. So like I said, we had paint time in mixin missing. So that's actually like the paint timing mixing without the presentation time is landed and it is shipping in Firefox 140 next week. So at least you're going to be able to see the paint time or you're going to be able to differentiate if it's a presentation time or paint time. We will implement the presentation time hopefully soon as well.

**34:06**
Nazım Can Altınova
There are other correction fixes, so special thanks to Sean Feng and Justin Link who worked on those issues. Like I said, the second bucket was some of the correction issues that we had in fcp. So most of them are fixed as well now. And let's compare before and after this work. So previously we had around 59% interrupt score for core web vitals. Now it's around 97% and hopefully it's going to be higher after a few more small fixes. So yeah, I guess learning from this work so far for me was that interrupt is very important and it's also very important to have multiple browsers implementing a spec as well, because that's how we learn and we figure out rediscover issues and make it better for the following browser engines too. So yeah, that's it from my side.

**35:07**
Nazım Can Altınova
Thanks a lot for listening and here's how you can find me. You can find me in Slack or Matrix. Mozilla uses Matrix. So yeah, thank you.

**35:23**
Nic Jansma
Awesome Nazin.

**35:24**
Nic Jansma
Thank you. All of these presentations so far have been just packed with really interesting, amazing updates. So I appreciate everybody bringing stuff. Any questions on this stuff?

**35:37**
Cliff Crocker
Just a reminder, if you're like me and you're sitting here trying to screenshot everything, we will share the slides afterwards.

**35:42**
Nic Jansma
So you don't have to. I just keep forgetting along those lines. Barry had opened up the slide deck for him and I put it into the realm CG deck and I can either link to or copy these slides in permission into this as well. So we can all have them in one place in case you want to review everything later because there's lots of information packed in here. Amazing. Okay Michael, I had a really quick question. How much time were you thinking for your spa updates?

**36:13**
Michal Mocny
Probably 15 minutes. But I'm also, I'm not hard pressed on schedule. If we run later if you want to do a recording, I don't know what others folks are alike. Then you just stay.

**36:24**
Nic Jansma
Okay. I'm trying to figure out. So we had wanted to talk a little bit with Isaac about some of the updates from Slack and stuff there. Isaac, would you want to try to talk about that for 10 minutes or so possibly and then we can finish with the discussion Michael is going to have on sva.

**36:50**
Issac Gerges
That's fine. Or we could just push me till next time. There's not like a huge rush on my end so it's your call.

**36:57**
Nic Jansma
Okay. I don't have a strong preference.

**37:01**
Cliff Crocker
Why don't we do that? I know that I feel like I don't want to cut anybody's vote, you know and if someone's fine to go next time. I don't know. I want selfishly kind of wanted to hear Michael's update and maybe.

**37:14**
Karlijn Lowik
Yeah I kind of as well also.

**37:17**
Cliff Crocker
Because in the next meeting we're going to start talking about implementation best practices. It'd be good to have some context for that. That's just personal opinion though.

**37:26**
Michal Mocny
Sounds good. I think it's also pretty timely to talk about it now. Thanks Isaac. I'm fine to have this recorded. I also just shared the slides in the deck and I'm going to talk about this a lot more so it doesn't need to get recorded. Is it already? It is. It is currently being beautiful It's a different process. It's fine. All right, soft navigations v2, it's happening. So this is a boring screenshot that is exciting if you know, this is the performance timeline reporting soft navigations as well as soft LCP type things. Anyway, behind the scenes is where all the magic is, but it's coming. So this is yet another screenshot of actually showing highlighting of the active element and that sort of thing. All the same stuff we normally expect.

**38:21**
Michal Mocny
I picked this one in particular because this was a site that was not working with the previous version and it is now working. And so there's a bunch of these types of examples. So again, for those of us who've been iterating, this is nice to see. Okay, so tiny bit of background, although I'm expecting that a lot of folks in the room have it already. The goals here are to detect soft navigations. The first thing you need to do this is to establish a new time origin. So soft navigation happened here. Everything before this was the previous navigation, everything after this is the new navigation. And that is not as easy as it sounds because there is often a period of time where you're transitioning or loading or whatever from a route to a new incoming route and things in the middle.

**39:11**
Michal Mocny
You know, as I've learned, some events that happen in that middle area might logically be part of the previous route versus the incoming route. You know, like if you're initiating network fetch requests and you have resource timings that will end up influencing the incoming route. Yeah. The second thing you want to do is use this data to slice up the performance timeline. And one very important use case for that is just to slice imp and cls. Right now we have this problem where the whole page measures all its interactions and layout shifts and the whole page gets a single score. But if you go to YouTube.com and then open a video watch page and then expand the comments section and then interact and you get a slow interaction. It's not YouTube.com that had a slow interaction.

**39:56**
Michal Mocny
You'd really like to know that you were on this like specific view or route. And then of course the big one is reporting loading metrics, a new stream of contentful paints, so called soft lcp. To actually understand how fast are these navigations. There are a lot of sites, you know, going from a multi page architecture to single page architecture, some even going backwards, adopting frameworks to do single page and then going back to multi page stage. And it's kind of, you know, grasping at straws is this Faster is this slower? Of course the eventual goals are to expose this data to crux, eventually integrate into core web Vitals program. But first we have to make the sausage and we have to make sure it tastes good. There is a new goal.

**40:42**
Michal Mocny
It's a bit greedy on my end, but as we build this, we built so much that thing. I would like also to use the tools that we're using to implement soft navigation detection to build an even better responsiveness metric. So an extension of inp. We'll talk more about that. What's the status? Well first of all, try it yourself on Chrome Canary. The previous milestone 138hot swapped the soft navigation performance entry that you would have been using last origin trial with a brand new implementation and I'll talk about the details and then 139 which hasn't branched yet but is in the nightlies or canaries, hot swap the soft LCP performance entry for the new implementation.

**41:30**
Michal Mocny
So as of several weeks the quality of the Canary data has really improved and every week more stuff's landing, possibly before the cut for 139, possibly in the next milestone there will be some follow up changes and there will be a stream of improvements beyond that. But this the big ones are behind us now, so I'm quite happy I linked to a snippet that I like to use. But Web Vitals JS Bari's been keeping up to date. There's a soft nav branch that also works and before things reach stable we'll have lots of documentation updates to follow. The goal is to restart origin trial in this139 branch. I would like to ship a few API changes in that so there's less churn throughout the origin trial. But if we don't make it there might be a little bit of churn after one milestone.

**42:20**
Michal Mocny
So early adopters in 139 might get something different than 140. We'll see. So this is the current timing what's changed? So this is getting a little bit in the weeds, but it might be interesting to some folks. So the previous version used interactions and task attribution to figure out when an interaction modifies the DOM and when it updates the URL. But it really stored everything as part of global state. There was like a single sticky bit on each node, there was a bunch of global singleton classes that tracked everything. So like the page was soft navigating due to interactions and you would build this. This growing record of history of these interactions collectively just updated more and more parts of the page and they stuck around forever. And so things would start to bleed across.

**43:13**
Michal Mocny
It might have been pretty good when you first loaded a page and interacted and had a first navigation and you tested it and it worked pretty well. But over time things got more and more messy. So now we have per interaction attribution properly done. Everything moves into the interaction context. And there was a big reworking of how that works under the hood. We also would reuse the existing paint timings and LCP calculator. We used to just go in there, you know, LCP would start measuring loading of a page, then your first interaction or squirrel would turn it off. And then later we'd say, okay, now reset everything from scratch. Pretend you're a brand new page load and you know, with a little bit of tweaking and let's hope for the best.

**43:54**
Michal Mocny
And it worked reasonably well sometimes, and it also worked not reasonably well often. So now we have evolved the pain timing detectors to actually explicitly support this use case. And so we also had as a consequence of the previous one, there was like really a two phase LCP algorithm before, so you interact and before the URL changes, before the soft navigation entry, we did a different type of LCP attribution. And then after the soft nav entry we switched to sort of good old fashioned LCP attribution. So you get different data depending on like when the URL changed and depending on how the site was built. And now we have a single consistent heuristic throw which is a bit easier and it's better for attribution. We used to only do per node paint attribution. So what does that mean?

**44:44**
Michal Mocny
It means like if you build up a DOM with, you know, div dot create element and then append child and then to that one append child and whatever you're like slowly appending individual nodes, then we would be able to mark all of those as modified. But if you tried to like template clone or do inner HTML or do detach document streaming or do any of the fancy stuff that modern frameworks try to do to be efficient, things started to fall apart and now we use a container timing in air quotes, not the literal Bloomberg container timing API, the container timing concept. So the way it now works is like this part of the page changed and anything within that part of the page will count. This other part of the page changed, anything within that part changed.

**45:30**
Michal Mocny
So the whole like pain timing mechanisms needed to be upgraded to support this. That might be useful beyond just this feature, but for now it only powers this one feature and then just lots of improvements. Right. So what else is new? We are replacing soft fp, fcp, lcp. We used to just re expose those old entries under the same names and the same attributes and this caused issues because any site that was listening to first content full pane LCP would not expect to get a soft one. So we had like a soft mode and you would opt into soft measurements. But there's like risks of leaks both for JavaScript observers but as well as internal implementation. So we are creating new entry types dedicated for these things.

**46:17**
Michal Mocny
We already had a soft navigation entry, but it was really like a navigation timing and it only exposed a single time for the time origin. This is becoming a paint timing. So the soft navigation entry is also the first contentful paint of the soft navigation. So you don't need a first paint or first contentful paint. You have everything all in one adding paint timing, mix in and then LCP is being replaced with a new thing called Interaction Contentful Paint. We could bike shed the name. There's going to be lots of room to discuss and evolve. This simplifies the semantic differences between how these things work. But there's also a more significant difference which is you will get these timings as soon as you interact and as soon as the page starts updating, even for not soft navigations.

**47:10**
Michal Mocny
And this is why this could be useful for responsiveness in general. Like if I interact and I update a bunch of stuff on the page, I'm going to get a bunch of new paints, I'm going to be able to track the largest content I might be able to track visually complete for that interaction through time. And if it does update the URL you've navigated. If it doesn't update the URL you just interacted, the metric doesn't care or the performance entry doesn't care. Your interpretation of the data is all that matters. So there was this include soft navigation observations option in order to opt into soft FCP and soft lcp and now we don't have those anymore. So we have an explicit new entry type that you're listening to, or several of them.

**47:57**
Michal Mocny
So we don't need this option technically, but there is value potentially in having something like this, like saying I'm interested in slicing the performance timeline based on these navigation IDs. They're not strictly necessary. We could remove navigation ID, remove this option and just have a bunch of timings and we will. You know, you'd have to organize things by timestamps and do your own slicing and Dicing. But there have been folks who really want just a nice convenient way to say I want the performance timeline grouped by navigation and do it for me. So this option might be useful to say I'm opting into this different perspective. And you know, we could in theory evolve the whole API of the performance timeline to better support this use case, but we're not quite sure how this will shake out yet.

**48:44**
Michal Mocny
This will be useful to think through. I'm sure we'll have lots of working group discussions on it then. Also, previously you would just get navigation data and I'd like to map it back to the interaction this navigation happened. Here's the first Contentful paint. But it happened because of this interaction. Here's this interaction, Contentful Paint. It happened. The largest content was over here, but it happened because of this interaction. For attribution, I think it'll be useful to just map back. So you're going to have the event timings, the navigation timing if there is a navigation and interaction. Contentful paints if there are paint updates. Okay, so under the hood, the two most important bits to understand are there's like some work we do up front. We observe certain types of interactions, but only certain types of interactions.

**49:39**
Michal Mocny
So if you test a site and it's not working for you, it might be using an interaction that we don't handle. So none of the other stuff matters. We're not even trying to track this interaction. A good example of this is like if you swipe up to go to like the next route on like a TikTok type thing, we don't bother. We don't think swipes are worth tracking yet. We might in the future we can open it up, but that's just not. We're not even trying, so it's not going to get detected, it's just not going to happen, etc. Etc. So is the interaction tracked? Would be the first thing to check. The second is the task attribution and scheduling stuff. So you know, if you do a set timeout or other scheduler type stuff, you're going to track that context across scheduling hops.

**50:22**
Michal Mocny
But if you do something like add.

**50:25**
Nic Jansma
A.

**50:28**
Michal Mocny
Style sheet to the page and wait for it to unload and then in the onload event handler do the route transition, which is a common pattern that's increasing. We just currently don't support that use case. It there's a feature in flight, but there are. They're going to be gaps. So there's this whole section of what kind of things are we choosing to observe what kind of things can we follow and what effects will on the page? So, like, what types of DOM modifications will we observe? This is working pretty well, much better than it used to, but there are still gaps. So if you do your own testing and you find it doesn't work, let's try to see if this is the one reason for it.

**51:06**
Michal Mocny
The second big category is this whole new implementation of LCP or like this interaction Contentful paint, which uses this new concept of container timing. There's been a lot of iteration here. I'm sure we'll do a lot more. So one example of a failure that we are aware of right now, if I click a route and it renders the page, I get a nice set of metrics. But then I hit the back button, it might be that the page just shows the old dom that was already painted, content that it was already recorded. And so we, even though we see the back button, even though we see the change to the page, we don't see any new paints because it's old paints. And at the moment those just don't get reported again.

**51:49**
Michal Mocny
So we might make some changes here, but it's kind of hard to differentiate old paints that we want to record again from old paints that we don't want to record again. So there needs to be some improvement. So there are some like, subtle things here. So. So how will we know if things aren't working, which types of issues are there? Well, I mean, there's a lot of tracing updates that we added as well. For anybody that wants to dig deep, we now have like full life cycle of the soft navigation heuristics. Context. A lot of this might evolve to just like interaction context under the hood. And then you see everything that happened along the way. There was some task scheduling that happened. These were the events that fired. Here's all the parts of the DOM that were updated.

**52:31**
Michal Mocny
Here are all the paints that were recorded. And then eventually we saw enough data that we emitted a navigation or eventually we just gave up and we exhausted this thing. So it's pretty cool to see the whole story, but this is pretty deep into the weeds and I hope we collectively learn to read this type of data, do debugging, do nice reports. But very recently, Annie's also had this old tool that we used to use for LCP analysis that she upgraded to support soft navigation analysis. So this is like an independent, lightweight DevTools type screenshot viewer that takes that trace data and just like annotates inside. And Paul Irish was nice enough to Update Trace Cafe.

**53:13**
Michal Mocny
So today Dev tools Traces, like if you go to canary and use DevTools and just do a normal recording in DevTools, you don't have to reach for profeto. Save that JSON and go to Trace Cafe and load it. There's a button in the top right called Soft Nav. You just click that button and you'll get a stream of screenshots and it extracts all the data and it'll nicely highlight. It's not perfect, it's evolving, but it's quite, it might be quite useful in terms of sharing reports. Here's my session that didn't work. Loaded in Trace Cafe. File a report, Larry, you go. And it'll be easy for us to collectively look at. All right, so there's a lot over the next month or two we're really close to branching 139 and that'll be what goes out for the initial origin trial.

**53:55**
Michal Mocny
That's when we'll do a lot of documentation updates and we'll be reaching out. But for now, go play with canaries and tell me what I should fix. Go ahead. Awesome.

**54:16**
Nic Jansma
I have one question Michael. If there's nobody else awesome to see. Well, I guess a statement is just awesome to see that there's work being picked up on here and I'm really excited to experiment with it. The metrics that were that you guys are focusing on right now are still the kind of visual interaction stuff like lcpc, you know, the resurface of those. We still have a lot of our customers that are really interested in like a page load style metric for soft navs and we do all this kind of fancy DOM monitoring stuff and moving is that kind of. Because now that you're stitching together like all this kind of causes effect stuff from Soft Nav is thinking towards that something kind of in your team's long.

**55:03**
Nic Jansma
Term vision of it at all still.

**55:05**
Nic Jansma
Or.

**55:07**
Michal Mocny
When you say load, do you mean like resource timing type stuff?

**55:13**
Nic Jansma
Yeah, like so we have these heuristics that basically looks at outstanding network requests that cause visual changes, etc. And like so we come up with synthetic software.

**55:24**
Michal Mocny
The short answer is at the moment our team has done no effort in that direction. On the other hand, there's a separate project that GUI from Microsoft is pushing to do to use task attribution to track resource timing initiators. There is a desire like one day to consolidate all these related efforts and others as well. So you would have one context. So if an interaction establishes a context that ends up leading to resources getting initiated that would be exposed. And then you could probably build a separate metric out of that. Like basically say, yeah, everything would be perhaps attributed back to the interaction and so you.

**56:08**
Nic Jansma
Yeah, that'd be. That'd be nice to think about that long term. And then one other thought around along those lines, I know that we would be getting these performance observer entries for the soft navs calculated from y' all for us to do this kind of heuristic where we try to determine the soft navigation page load. We want to start measurement measuring things as soon as the soft navigation starts.

**56:36**
Nic Jansma
Right.

**56:37**
Nic Jansma
There's often a delay between like a performance observer entry getting delivered and when the actual event happened. How like does Chrome know right away that a soft navigation has happened or does it like have to like see a series of events and like, oh, you know, 30 milliseconds ago was actually when it happened. I'll queue up a performance or deliver entry and my question is, can we get a line more towards the beginning of that timeline rather than when the performance observer is delivered so that we can start our measurements closer to when y' all think it started? If that makes sense.

**57:11**
Michal Mocny
If you want to synchronously observe the start, I think there are synchronous events for like, there's the new navigation API, there's the existing pop state APIs, there's a bunch of things that you could do. Right. So I think that the performance timeline is not ever going to be able to report synchronously before start and in particular we've taken extra effort to make sure we delay until after we have all of the criteria observed and measure the next paint in order to get.

**57:43**
Nic Jansma
Things so and so with us we are doing that. We're listening to PopState, Nav and Clicks and XHRS and we are finding that with the old soft nav origin trial our timestamp was like slightly different than the soft navs opinionated and it would be nice to like get us a little more aligned. Right, Right. So understand everything that you said. Like it would be interesting to maybe get smaller point brainstorm. Is there a way for us to better align with when you all think our things are starting or whatever, just so that we're not reporting on different things. I'll hand it over to but on.

**58:19**
Barry Pollard
That like any interaction can result in a paint and a URL update. So every click is.

**58:30**
Nic Jansma
We have, we have some heuristics around. We use Mutation observer to see if the DOM changed a lot. We pay attention to see if the networking triggered some of these navs and stuff like that. So it's not perfect. What we do is a heuristic but it depends like if the URL changed, if network requests happened, if the DOM updated and some combination of those.

**58:51**
Barry Pollard
Yeah, because the problem is it can be click and yes, that might kick off a network fetch and until that comes back, the URL doesn't update and the DOM doesn't update or we kind.

**59:01**
Nic Jansma
Of do some back attribution for that. Like we pay attention to all the clicks, we pay attention to the network, we pay attention to DOM changes and we look to see like a little bit does it go backwards. So it's again, we're not perfect. Would better to be nicely aligned with some of the more internal stuff that y' all are doing for.

**59:17**
Barry Pollard
I think Michael can show you.

**59:18**
Barry Pollard
But yeah, we basically that's why we.

**59:20**
Barry Pollard
Have to go back in time. It's only once we've got all the.

**59:25**
Barry Pollard
You're.

**59:25**
Michal Mocny
Because you're building it the same way we are of course with different implementation. You get insights from the first bit of evidence. Like you start gather. That's the way I like to think about it. Like you're starting to gather evidence. So I, I don't think we would have new types of observers or whatever that like there are existing events in the like the web platform that you can. Which you're already doing and it's somewhere in the middle here. Like maybe this green arrow, this chevron that we gathered enough evidence and this is when you become informed. So you've missed your opportunity, this leading thing. But if you really want to have from start to end insights then you just got to build it yourself.

01:00:07
Nic Jansma
Yeah.

01:00:07
Michal Mocny
And like you know, maybe we could build a library collectively to try and do something like that. But you have already. The goal here is just to have performance timeline after the fact. Nice easy summaries.

01:00:21
Nic Jansma
I'll hand over to Sergey for one last slot before we wrap up.

01:00:25
Sergey Chernyshev
Yeah, I feel based on the conversation we just had, if we ever want to have any resemblance of parity between vendors on what soft navigation is, we.

01:00:40
Michal Mocny
Need to.

01:00:43
Sergey Chernyshev
As this group at least provide an opinion on what. What is nav vs UI change because otherwise it will be, you know, heuristics of the team that implements this.

01:00:59
Michal Mocny
Right.

01:01:00
Sergey Chernyshev
And I understand when that individual browser vendors might not necessarily want to create an opinion or anyway I think we need an opinion in RAM vendors side and maybe it needs to be standardized or.

01:01:19
Nic Jansma
Yeah.

01:01:21
Michal Mocny
Can I follow up? So that is A very good thing. So one thing we learned last time is there was a lot of concern about heuristics. That term heuristics. Heuristics. How many heuristics are there? What we've now done is you have an interaction which updates the page with any mechanism for updating the page that leads to contentful paints using container timing. And then the way that we observe that we have to use async context. Async context is a whole train of effort around it that's going to be a collective standard with a lot of wide buy in. Container timing is a whole collective train with a bunch of buy in around it. Interactions are a whole like we are now hooking onto existing concepts. The remaining heuristics are like the URL changes but again the navigation API is part of interrupt.

01:02:13
Michal Mocny
Like that's a whole consolidated effort and thing. There's so few remaining heuristics. A few things like where exactly do you mark the time? Origin. We should discuss that like that. I agree there needs to be consolidation and that'll be during the origin trial. We could iterate on those things. Those are tiny things. So I really like how this shook out in terms of at least pushing those decisions into common conversations. And there's not going to be a custom answer for this project versus stuff we're already interested in doing for perf timeline.

01:02:46
Nic Jansma
And I will say that heuristics coming from the browser are better than heuristics coming from the rum vendors.

01:02:51
Nic Jansma
Right?

01:02:51
Nic Jansma
Because we can hook into all ROM vendors could hook into the heuristics from the browser rather than us all coming up with it with our own. I know that we are beyond time. One last thing I want to mention. The W3C puts on the annual TPACK conference.

01:03:07
Nic Jansma
Some of us may be there this.

01:03:09
Nic Jansma
Year later in the year. This is in Kobe, Japan in November. Many of us won't be. I know that I will be there for the web perf stuff. If there is interest for anybody on this call that will be at TPAC.

01:03:20
Nic Jansma
This year that wants to have a.

01:03:21
Nic Jansma
Separate rum community group small breakout where we can talk about things and maybe bring it back to this audience later. Think about that. Let me know offline. I know some of us will be there for various other things. So this topic for example, could be an interesting one for us to talk about a little bit more during that. So and with that we'll close it out. We are not meeting in July. I'll send the cancellation for that. We will meet again in August, ideally, and really amazing. And thank you, Isaac, for considering pushing yours to next time. Really, really fun to hear all these other topics. So thanks to everybody for the updates today. Okay, thanks, everybody. Thanks, y' all. Bye.
