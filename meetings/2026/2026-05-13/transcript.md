00:00
Nic Jansma
Everybody, I really apologies for that, everyone. I am joining from a new account and that account did not have permissions to let people into the room yet.

00:12
Cliff Crocker
It's okay.

00:13
Nic Jansma
Oh, now that we've wasted a good 10 minutes of everybody's lives. Apologies for that.

00:21
Barry Pollard
Job, by the way.

00:23
Nic Jansma
What was that?

00:24
Barry Pollard
Congrats on the new job, by the way. Even if that's one small downside.

00:29
Nic Jansma
Yes. Trying to figure out permissions for everything is a chore. Okay. And we do have fireflies in here now as well. Okay, let's get this started. I will kind of jump to things pretty quickly as to not waste our time. Welcome, welcome. Yada yada. Rump Community group for Wednesday, May 13th today we're going to focus on kind of a browser outreach session. So we have Andrew from Mozilla and Barry from Chrome both being able to share some updates on things that they care about. We'll get into that in just a moment. The logistics of everything is listed here. It does not list the fact that we will stumble over joining this meeting for 10 minutes. So apologies. Next meeting will be June 10th, second Wednesday of June. As always, we're looking for topics to discuss. Oh, I should actually make sure one thing.

01:26
Nic Jansma
Make sure that this is getting recorded. Is it getting recording? Yes, it is recording.

01:32
Barry Pollard
Okay, cool.

01:32
Nic Jansma
Just want to make sure I'm not. We were thinking possibly talking about the crossover with RUM and opentelemetry. Cliff and folks over there might have some good things to share. Is that still kind of the thoughts there, Cliff?

01:49
Cliff Crocker
Yeah, it is actually, and I'll. I'll put him on the spot because he joined today. Jared Freeze joined the RUM Community Group here a few weeks back. He's the primary maintainer of the web SDK for Open Telemetry and someone that Andy and I get the opportunity to work closely with. So I think Jared said that he'd be up for a talk. I haven't really. We. We haven't discussed more details than that, but I think that probably just some education around opentelemetry period, and then how that relates to the browser was what were thinking. Certainly there's different ways of doing things in terms of measurement and we're trying to close a lot of those gaps. So thought it would be worth some good community discussion to get some feedback, but also a chance to be educated on this by Jared.

02:38
Nic Jansma
That sounds awesome. Looking forward to that. If there's any other topics that people want to queue up for that session or afterward, please obviously reach out to us. Might want to circle back on The AI bots and crawlers topic as well that we started last time, I think we had some good discussions there. But there could be a follow up after this on that. Yeah, let's jump into it. First we in the slide deck order, we have Barry from Google and Barry's Bites. A very welcome segment. Barry, do you want to share your own screen? Do you want me to walk through these slides for you?

03:16
Barry Pollard
You're muted,.

03:21
Barry Pollard
Happy to share this screen. If you can make me the presenter,.

03:23
Barry Pollard
I could go left and right, otherwise I'll just show.

03:34
Barry Pollard
Oh, sorry, do you mean.

03:36
Barry Pollard
I meant make me presenter of that shareable deck.

03:38
Barry Pollard
Never. Right, okay, cool.

03:39
Nic Jansma
I didn't know how to do that. Sorry, I fumbled.

03:52
Barry Pollard
Hold on a second.

03:54
Barry Pollard
Come on.

03:56
Barry Pollard
For those new to this, we're normally much better and more organized here. Oh, the drags over there.

04:04
Cliff Crocker
Barry, don't you work at Google?

04:11
Barry Pollard
Right, hold on. I will share my amazing not AI generated rubbish there. Why is that not sharing? Oh, there we go.

04:27
Barry Pollard
Okay, can you all see that?

04:28
Barry Pollard
Yep.

04:29
Nic Jansma
Yes.

04:31
Barry Pollard
I really need to work on a better AI model.

04:34
Barry Pollard
Right. We haven't met in a little while, so I thought I'd race through some things that have changed in Chrome this year. And then I've got some more stuff that I want to go into a lot more detail and typically the soft nav stuff, but in Chrome 145, we're on 148 now, so this was three months ago. We added the presentation time for performance entries. So to remind people here, Chrome actually presents things like LCP slightly later than Firefox and Safari. We give what we call the presentation.

05:10
Barry Pollard
Time, which is after it's finished the main thread and compositor and stuff like that, and pass the pixels on. We give it time slightly later than that.

05:21
Barry Pollard
Safari and Firefox do the slightly earlier.

05:24
Barry Pollard
Paint time whenever the. In effect, whenever the pixels have been generated and sent rather than whenever they actually been presented on the screen.

05:32
Barry Pollard
So I mean these are milliseconds of difference, even that.

05:37
Barry Pollard
So hopefully there won't be huge differences. But we now, to encourage interop, we now give both. And I think Firefox far evolves given both, but I think it's got a null presentation time or an Azure presentation time.

05:50
Barry Pollard
So if you ever want to compare.

05:51
Barry Pollard
Like for like you now can. And that paint time will be the same across all three and presentation time will only be available in Chrome and the LCP time will be the later of those two, whichever one exists. Yeah.

06:09
Barry Pollard
So those have been launched and now should be available. They're not there for inp. There's still some spec work going on about that, but they are there for.

06:15
Barry Pollard
Most of the other hint times. Lcp, fcp, think Loaf has got them and that sort of thing.

06:21
Barry Pollard
Oh, I missed our LCP here. 146 Changed again a very technical change.

06:26
Barry Pollard
But we changed something for how LCP candidates are admitted in effect basically if we knew there was an image coming up we didn't bother that was quite large. We didn't bother emitting an LCP for the text. Whereas now even if that happened like a frame earlier or something like that, now we do. So you might notice a couple more LCP entries. Mostly you'll be taking the final one anyway so you maybe probably haven't even noticed this but just if you noticed a number of new LCP candidates before the final one, that's why and again it kind of matches the spec of the other two browsers there.

06:57
Barry Pollard
We have a couple of origin trials.

06:58
Barry Pollard
That's what OT means. There's speculation rules form submission, not necessarily rum related but you might notice some people using it and they're going faster.

07:07
Barry Pollard
147 Which was originally supposed to be.

07:10
Barry Pollard
146 But we had to delay this.

07:11
Barry Pollard
For one milestone and the device memory API limits were changed. So those of you that are measuring.

07:16
Barry Pollard
It in ROM it used to be capped at 8 gigabytes. It's now going including 16 and 32 gigabytes. So you might notice higher memory suddenly start to trickle in from desktop devices in particular.

07:30
Barry Pollard
And we've also just the lower cap.

07:32
Barry Pollard
So the half a gig quarter of a gig ones that you could measure through the device memory API no longer exist on modern Chrome. You will still have older Chrome so don't be surprised if you still see older values coming in there.

07:46
Barry Pollard
And that's basically just devices got better.

07:48
Barry Pollard
So we want to shift it along. It's actually getting more of a privacy issue because the few people who had those lower devices were suddenly, you know, very small numbers of people. But yeah, if you correlate your performance with device memory then you should see better stuff there.

08:03
Barry Pollard
There's another Origin trial 147 about cross pre rendering cross origin iframes again not.

08:08
Barry Pollard
Necessarily run related but if people are interested in that you might suddenly notice that different performance characteristics there's a bit.

08:15
Barry Pollard
Niche I think there's a couple of.

08:18
Barry Pollard
Partners of ours who have in effect same origin ones that got like www.example.com and iframe.example.com so now you can treat those by opting in to say whenever you pre render. We normally don't pre render cross origin iframes, but we can say hey this one's okay to pre render and go ahead and do it.

08:38
Barry Pollard
A weird one in resource timing I was just looking through some docs and I just noticed content type, which is.

08:44
Barry Pollard
Whether it's an image or an HTML document or a font or whatever, was.

08:50
Barry Pollard
Added to Chrome about a year ago.

08:52
Barry Pollard
And someone forgot to enable it. So we got all the information, we launched it and we forgot to enable it and it was hey, we're showing is not supporting that and other browsers were supporting it. So I went in and changed one line of code and claimed all the credit for releasing this stuff even though the person who did it over a year ago did most of the work. So something might have extra information in your resource bank.

09:14
Barry Pollard
We also have extended lifetime shared workers, so actually there's an interesting stuff I.

09:19
Barry Pollard
Was having checking this.

09:20
Barry Pollard
So basically shared workers typically end when the document ends. So if you've got two documents from the same origin you can have a shared worker and both of them could talk to that.

09:30
Barry Pollard
If you close both tabs they will vanish.

09:32
Barry Pollard
If you've got another third tab open, then it won't vanish.

09:34
Barry Pollard
If it's using that extended lifetime shared workers as the name suggests, allows it to live on for a little bit afterwards.

09:42
Barry Pollard
I think it's 5 seconds in Chrome.

09:44
Barry Pollard
Up to 30 seconds by spec, but I think we only do 5 seconds.

09:47
Barry Pollard
So if you do want to do any cleanup or sending run beacons, then that's an option. Now there is some other work where if you're navigating from example.com page one to example.com page two, it may or.

10:00
Barry Pollard
May not keep it around during that navigation gets tricky. I expect it can keep it around,.

10:05
Barry Pollard
But basically if it's BF cache eligible it will and if it's not, then it won't in no free browser.

10:11
Barry Pollard
So it gets messy.

10:12
Barry Pollard
This is more an explicit signal.

10:13
Barry Pollard
I don't care what that's going on. I won't stay wrong even if you're going cross Origin, even if you're doing that Chrome only at the moment, but something worth considering if you want. If you have to do any heavy work of, I don't know, calculating some stuff before you want to be it back.

10:28
Barry Pollard
Lazy loading for video and audio has come in. I'll talk to that in a minute. Particular timing as well. I'll talk to a bit more Loaf style.

10:36
Barry Pollard
Sorry, not Luaf dash style but loaf.

10:39
Barry Pollard
Style Duration of an origin trial. So it's come from the OAuth. He wants a little bit more style.

10:43
Barry Pollard
Information to explain why INP's being slow or whatever. So that's an origin trial at the minute. He's got more details that I'm not going to go through that in any GTO exit today.

10:57
Barry Pollard
This one's very quickly. I saw Helmut was on who implemented.

11:01
Barry Pollard
This, so thank you, Helmut.

11:03
Barry Pollard
So this is now available in Chrome. The loading equals lazy attribute that we.

11:07
Barry Pollard
All know and love from images and.

11:08
Barry Pollard
Iframes is now available in videos and audio. There's some intricacies that you've got to understand with this one because there's also.

11:15
Barry Pollard
A preload attribute which can say don't preload anything until the person puts play in the video.

11:21
Barry Pollard
But you will have a poster image in that case.

11:23
Barry Pollard
Or you can preload the metadata which works Cross browser is interesting. Lots of browsers download the whole thing. I think Chrome's one of them no matter what you say there.

11:32
Barry Pollard
So yeah, I've updated the MDN docs.

11:35
Barry Pollard
To explain exactly how these work because that confused me a bit at the beginning. But basically things like the poster image won't download or the metadata won't download until it scrolls near the interview.

11:46
Barry Pollard
It's kind of obvious when you think about it, but it takes a little.

11:48
Barry Pollard
Bit of thinking before you do it.

11:50
Barry Pollard
So yeah, if you've got any clients who got lots of video stuff and particularly if it's off screen stuff, then.

11:55
Barry Pollard
Definitely consider adding this and what's your performance metrics on all magically improve.

12:00
Barry Pollard
This was contributed by.

12:02
Barry Pollard
There's quite a lot by the way this month that was not contributed by Google. So I'm taking a lot of credit here for external contributions. So this was Scott Gel and the team at Squarespace, thank you very much for them.

12:13
Barry Pollard
So I'm going to try and cover a lot of stuff that landed in.

12:15
Barry Pollard
Chromium whether it was Google or not. So please don't take it that I am taking credit. That was only a joke earlier. Yeah, I'm just trying to keep you informed of what's changing here.

12:26
Barry Pollard
That's great that's landed soft Nav. So I want to spend a good.

12:30
Barry Pollard
Bit of time on here.

12:32
Barry Pollard
We have got and I've committed to this with the final in the name.

12:35
Barry Pollard
Hopefully final soft navigation API origin trial. We know we've had a few of.

12:39
Barry Pollard
These, changed the API shape a little bit and we talked about whether we.

12:44
Barry Pollard
Should just launch it or whether we should give everyone another chance to go and have a look at it. And we decided to give everyone another chance quickly.

12:51
Barry Pollard
We've kept it short, so it's only.

12:52
Barry Pollard
For three origins, 147, 148 and 149.

12:56
Barry Pollard
And then hopefully launching it 150. We'll see.

12:59
Barry Pollard
We'll talk about that next.

13:01
Barry Pollard
The most important things in this are those that have been keeping up to date with it.

13:06
Barry Pollard
It's basically two APIs now, not one.

13:10
Barry Pollard
So there is an interaction Contentful Paint API and that emits, I'm calling them LCP like entries.

13:16
Barry Pollard
So for every interaction, so you click.

13:17
Barry Pollard
On something and if you got paint,.

13:19
Barry Pollard
We'll emit an icp.

13:21
Barry Pollard
If you've got another one, we'll emit.

13:22
Barry Pollard
An ICP and got another one, omit an ICP.

13:25
Barry Pollard
I want to be 100% clear here.

13:26
Barry Pollard
I'm calling it ICP there.

13:27
Barry Pollard
But it is not a metric, so.

13:29
Barry Pollard
It will not be an LCP or a CLS level thing. It's a performance measure.

13:34
Barry Pollard
But it can be used then to measure soft lcp.

13:37
Barry Pollard
So the LCP for those soft navigations,.

13:40
Barry Pollard
I think there's quite a lot of.

13:41
Barry Pollard
Scope to this and I think it can go much beyond even soft navigation. So if people are interested of.

13:46
Barry Pollard
I clicked a button and I saw.

13:48
Barry Pollard
A loader spinning and then some content came in and then some other content came in and then something else happened. You, you can now measure it with.

13:54
Barry Pollard
This at the minute, only if each one is bigger.

13:57
Barry Pollard
So because it's LCP like, it's only measuring bigger paints for that interaction and.

14:01
Barry Pollard
Some of those interactions will then lead.

14:03
Barry Pollard
To a soft navigation. So the URL will update and you'll be on a new page as far as the user's concerned.

14:10
Barry Pollard
So we have a separate soft navigation performance entry because some of those interaction connectivity may have happened before that.

14:18
Barry Pollard
So you may click on the link, it does a couple of updates, then updates the URL and then it does a couple more updates.

14:24
Barry Pollard
So rather than you having to track all the older ones in case they.

14:28
Barry Pollard
Potentially turned into a soft navigation, we're.

14:31
Barry Pollard
Going to give you the largest one.

14:32
Barry Pollard
In that soft navigation entry. So you can then just track forward that you do with LCP going there.

14:39
Barry Pollard
Otherwise you would have to track every single one.

14:41
Barry Pollard
After a while decide, hey, it's not a soft navigation and discard it. Which can be quite complicated.

14:46
Barry Pollard
And as someone who implements the Web.

14:49
Barry Pollard
Vitals ROM library, I was definitely pushing Michael for this. So thank you very much, Michael, for that.

14:54
Barry Pollard
It just makes it a little bit.

14:55
Barry Pollard
Easier Keeping track of stuff.

14:57
Barry Pollard
So when you see the self navigation.

14:58
Barry Pollard
You can reset your INP and CLS measures and start measuring them again. You can look at that. The largest interaction potential object on the self navigation entry, that would be your initial lcp. If some more else ICTS come in for that if interaction then you can increase it, increase it and then report soft LCP as and when you see fit.

15:22
Barry Pollard
Does it stop being a fit time 5 seconds from no, like LCP it doesn't stop. If you see more stuff coming in, it will keep going on forever unlike lcp.

15:33
Barry Pollard
And Michael, correct me if I'm wrong but I know he's traveling so I.

15:36
Barry Pollard
Might not be able to. I don't think it's stocks on interaction because it's based on the previous interactions.

15:43
Barry Pollard
Yeah.

15:43
Barry Pollard
So the minute if you click somewhere.

15:45
Barry Pollard
LCP stops whereas if you click somewhere here and another ICP comes in because of that first click that caused the navigation, you'll still get those.

15:54
Barry Pollard
So we're talking about whether it makes.

15:56
Barry Pollard
Sense to stop an LCP on interaction in such a way as. Well, I'm not 100% sure on that but I'll check on the details of that one.

16:07
Barry Pollard
There are some being a couple of talks. So Blinkon is the annual chromium get together for all the people that contribute to Chromium. That's obviously Google, but there's also Microsoft.

16:17
Barry Pollard
Edge, Galia, loads of people go along and go there and individuals like Helmut that I mentioned earlier and stuff like that.

16:24
Barry Pollard
So there's a couple of talks on this. Michael Mockney talked on the soft navigation.

16:28
Barry Pollard
Apis2 that I've just covered.

16:30
Barry Pollard
We can share these slides afterwards.

16:31
Barry Pollard
There's link to the slides and the video.

16:34
Barry Pollard
Annie Sullivan talked about the data that.

16:35
Barry Pollard
We're seeing from the internal collection of this. So we're already collecting this data and having a look at it even if we haven't released public APIs.

16:43
Barry Pollard
And I think these are really worth going through. So I'm going to spend some time.

16:46
Barry Pollard
Going through Annie's stuff today if you don't mind.

16:50
Barry Pollard
There are also lots of other interesting talks. I think the keynote in particular is very good.

16:54
Barry Pollard
So yeah, I've included links to those other ones. Even beyond soft navigation, I think anyone's interested in what's going on in Chrome either already has landed or the direction we're going in the future. Have a look at those.

17:05
Barry Pollard
So these slides are all stolen from.

17:07
Barry Pollard
Annie except for one I'm going to abuse in the next slide.

17:11
Barry Pollard
But this is some data that we've seen from soft navigation, which I'm sure.

17:14
Barry Pollard
You'll all be interested from, if you haven't seen this.

17:17
Barry Pollard
To remind everyone, by the way, if.

17:18
Barry Pollard
You aren't aware of what soft navigation is. So in spa, core web articles at the minute are measured only on hard navigations or web pages.

17:26
Barry Pollard
So you click somewhere, the first one's typically the slowest.

17:29
Barry Pollard
You've got to connect to the server, you've got to do SSL negotiation, you've got to download all the assets. So let's say that takes four seconds. After that, when you click around the site, it's typically faster. You've got a lot of the common style sheets, you've got the logo you've already connected to the server and that sort of thing. So you might see three seconds for each of those. So if you click around five other navigations, then whenever. What CRUX sees is it will aggregate those across millions of navigations, by the way, not just one, but let's just say it's only these ones and it'll say, okay, the Average crux is 3.17 seconds. And we're using average vaguely here. Obviously we Normally measure the 75th percentile and stuff like that, but let's just go with average here.

18:07
Barry Pollard
So these subsequent navigations, which are typically faster, help reduce the overall LCT in.

18:17
Barry Pollard
This case from that initial add four seconds. So you get kind of a lower.

18:21
Barry Pollard
Average on a single page application. We only measure whenever you do a navigation.

18:25
Barry Pollard
And the other soft navigations aren't real navigations. Chrome doesn't see that.

18:29
Barry Pollard
So again, you get that 4 second.

18:30
Barry Pollard
Initial landing that's loading everything, blah, blah.

18:33
Barry Pollard
But then typically, at least on a,.

18:35
Barry Pollard
Well, sda, whenever you click around those, it doesn't have to discard the whole page, it's just updating some content. You get typically much faster lcps, for want of a better word, in those.

18:46
Barry Pollard
So we should be reporting like a 1.5 second LCP in this example, but we're only seeing that first one, so.

18:52
Barry Pollard
We're reporting a 4 second LCP.

18:55
Barry Pollard
So they're actually getting worse. It's not like they're getting the same,.

18:58
Barry Pollard
Not getting the benefit. They're actually getting a negative benefit, a negative whatever. And they're reporting much higher than it is.

19:07
Barry Pollard
Now we can all argue about the spa.

19:10
Barry Pollard
I would argue that the first navigation is often quite costly and maybe isn't 4 seconds and it's 6 seconds and whether the intermediate ones are really as fast as 1 second compared to a 3 second hard nav. I don't know. I think there's lots of examples of bad SBAs web.dev that we host a lot of our docs on, being one of them. But anyway, I'm embarrassed about that. But anyway, the point still stands. We're not measuring it properly and we don't have the data to measure it properly, whereas hopefully now we do.

19:36
Barry Pollard
So how big of a problem is this? Spas are surprisingly few.

19:43
Barry Pollard
They're definitely a minority in the web.

19:45
Barry Pollard
So they get a lot of social media cover and Twitter this and Blue.

19:49
Barry Pollard
Sky that and stuff like that, and everyone's only developing in reaction.

19:53
Barry Pollard
But the vast majority is not SDAs.

19:56
Barry Pollard
Or old sites or WordPress sites that are just websites and that sort of thing.

20:00
Barry Pollard
So what we're seeing is.

20:02
Barry Pollard
Or they're react apps that have been.

20:05
Barry Pollard
Created there and people go read one.

20:06
Barry Pollard
Article and then leave. So you're not getting any benefit of sva, you're just getting all the negatives of that first initial silver load.

20:13
Barry Pollard
So what we're seeing is that 4 to 8% of origins are more than.

20:17
Barry Pollard
Half of the soft navigations that we're seeing.

20:19
Barry Pollard
So there's some highly used.

20:23
Barry Pollard
Places on.

20:23
Barry Pollard
The web, such as YouTube, Gmail. Looking beyond Google ones, we've got Facebook,.

20:32
Barry Pollard
Twitter, a lot of social media websites.

20:35
Barry Pollard
So a lot of those ones that people go to a lot are. You are for the last.

20:39
Barry Pollard
I mean, almost half of the soft navigation, stuff like that, whereas everyone else, kind of much slower.

20:47
Barry Pollard
And if maybe what's here? Oh, yes, popular sites. So if we look at the top 1000 websites, they've got a lot, you.

21:01
Barry Pollard
Know, nearly half of SBAs, whereas the rest of the website, much smaller.

21:05
Barry Pollard
So again, it's the really popular sites,.

21:07
Barry Pollard
The YouTubes, the Facebooks and so on that are really heavily impacted by this.

21:12
Barry Pollard
Most of the rest of the web.

21:14
Barry Pollard
Aren't impacted by this.

21:16
Barry Pollard
So if we release this tomorrow and if we retreated every soft nav the same as a hard nav, what would.

21:22
Barry Pollard
That do to core web vitals? Pass rates?

21:25
Barry Pollard
What we're seeing is that sites that are, you know, 75% to 100% of soft navs, so that is you are going to a hard nav and then you're doing at least three, four soft.

21:38
Barry Pollard
Navigations,.

21:40
Barry Pollard
They're going to see a massive.

21:41
Barry Pollard
Jump up in LCP of improvement rates. So pass rates go from 20% up to nearly 99% or whatever that is on that graph. Can't see the exact numbers.

21:51
Barry Pollard
However, other sites only get a few and that's 0.9% of sites on Android,.

21:56
Barry Pollard
So it's very small minority those ones.

21:57
Barry Pollard
I talked about because some sites that get quite a few self navigations they're definitely going to see an increase.

22:02
Barry Pollard
So again from 40% to read that.

22:06
Barry Pollard
Maybe 70%, 75% and then you get dwindling tail.

22:10
Barry Pollard
For the vast majority of the sites there's going to be no change at all.

22:15
Barry Pollard
And personally I'm quite glad that we're.

22:17
Barry Pollard
A little bit nervous about seeing these numbers and saying okay, if they all.

22:21
Barry Pollard
Show the core web vitals was rubbish.

22:22
Barry Pollard
For the last five years, this isn't going to look great. I think it's definitely going to be an improvement for some sites, but most sites are not going to see any.

22:31
Barry Pollard
Change whatsoever and that's how it's got us thinking. We still haven't fully decided what we're thinking.

22:35
Barry Pollard
Probably in crux we'll probably just go one for one measurement and that sort of thing. So again those talk about should a soft nav count as half a real nav and this, that and the other, we're thinking yeah, maybe more. One seems fine here.

22:51
Barry Pollard
IMP similar but slightly different story. So IMP definitely improves. Say most of These are heavy JavaScript.

22:58
Barry Pollard
Frameworks, so there are costs there. If you can amortize that cost over subsequent page views, you'd expect it to.

23:04
Barry Pollard
Go up and it does, but not quite as much as LCP. So we're going from a 20% pass.

23:10
Barry Pollard
Rate to a 40% pass rate on those heavy sites. So there's still a heavy cost for using a heavy JavaScript framework, which again I think is not unexpected and did see that.

23:21
Barry Pollard
It's not somebody saying yay, go and.

23:23
Barry Pollard
Put as much JavaScript on your website as you like.

23:26
Barry Pollard
And again, the vast majority of the.

23:28
Barry Pollard
Website won't even see a movement at all if we move this.

23:33
Barry Pollard
And CLS similar again, those are lots of SBAs I've seen improvement. A lot of CLS is low CLS.

23:39
Barry Pollard
And now we're only going through that full load once and after that you're getting the better load again, it's not jumping up to 100% but it is a significant improvement for heavy SBA websites.

23:50
Barry Pollard
But for most SBA websites, whether one.

23:53
Barry Pollard
Or two less improvement there, but still some improvement.

23:59
Barry Pollard
Finally soft navs, finally for this section, by the way, I'm still going to bore you with some other stuff next. Is this what will ship? So we want to say the final.

24:08
Barry Pollard
Soft nav origin trial. Give people a look at it and then Launch it.

24:14
Barry Pollard
There may be a few more tweaks. So if you're implementing in ROM based on what's in there, silently be aware of this. One thing we're talking about is, so I mentioned earlier, ICP measures all interactions and all paints for interaction, but the minute only measures larger paints. So you click on a button, it.

24:34
Barry Pollard
Draws something, it draws something bigger, it draws something smaller that won't be measured, draw something bigger again, that will be measured.

24:39
Barry Pollard
So maybe it would be useful again, looking beyond soft navigations to measure all.

24:44
Barry Pollard
Paints for an interaction. People might be interested in that for whatever reason.

24:49
Barry Pollard
So if we did that and people depended on these ICP entries coming in only being bigger, that might break things. ROM providers wouldn't be happy with us.

24:56
Barry Pollard
And that sort of thing.

24:57
Barry Pollard
So we're wondering maybe we should nest.

24:59
Barry Pollard
These paint times inside a largest object or largest contentful paint object or something like that.

25:04
Barry Pollard
So here where you see paint time,.

25:05
Barry Pollard
Presentation, written time, should they be under a largest thing and then should we have a latest thing or something like.

25:10
Barry Pollard
That, so that if you're only looking at the largest one, another one comes.

25:13
Barry Pollard
In and those values don't change, you still report the largest one. That will just make it easier for later on to report any additional paints that we want and stuff like that.

25:23
Barry Pollard
Or container timing, if we want to.

25:25
Barry Pollard
Paint those sorts of things in there.

25:27
Barry Pollard
So that's a small tweak and we.

25:28
Barry Pollard
Probably won't run an origin trial, another origin trial for that. I think you're all bored of origin.

25:32
Barry Pollard
Trials, but just be aware that we.

25:34
Barry Pollard
Might be tweaking the API slightly before.

25:39
Barry Pollard
We ship this, but I promise we're.

25:41
Barry Pollard
Pretty close here and we'll see.

25:45
Barry Pollard
Okay, talking of which, container timing launched again wasn't done by Chrome, this was done by Bloomberg and Agalia.

25:53
Barry Pollard
So thank you very much for those ones.

25:54
Barry Pollard
But it's an exciting API that I.

25:56
Barry Pollard
Think run providers should keep you aware of.

25:58
Barry Pollard
So in this example, you click on.

26:00
Barry Pollard
It, it draws a card, it's got.

26:03
Barry Pollard
An image LCP there.

26:05
Barry Pollard
Container timing originally starts as LCP, so it's got 908 milliseconds here. But as new content comes in, it updates. LCP doesn't because it's not necessarily bigger, but you're measuring any paint in the container.

26:17
Barry Pollard
A couple of things that we can see in this demo. So the card size doesn't change and.

26:20
Barry Pollard
The container is the card size, but.

26:23
Barry Pollard
We only measure contentful paints within those.

26:26
Barry Pollard
So initially it's the heading, then it's the heading and the post, the headline image here and then it's the text.

26:33
Barry Pollard
So you'll notice the container size is.

26:35
Barry Pollard
Changing each time so you don't get the overall container size that contains the white non contentful stuff you only get whenever it's got contentual size there.

26:44
Barry Pollard
But it's a very interesting API for.

26:46
Barry Pollard
People that want to know when a component is fully rendered rather than just when the largest component in the page or whatever.

26:52
Barry Pollard
Bloomberg Lots of screens with lots of components.

26:54
Barry Pollard
They're obviously very interested in this which is why they sponsored it and implement it and inspect it out and stuff like that. So that's available in origin trial and you can go and check it out except if you're run provider because I don't know if some of you might have noticed.

27:08
Barry Pollard
It's fun. We delayed it a bit for Chrome.

27:12
Barry Pollard
148 To allow third party origin trials to work and I ran into this yesterday and Irwin ran into earlier today. Origin Third party origin trials are a bit of a pain because they have.

27:25
Barry Pollard
To be entered by a script from.

27:27
Barry Pollard
The origin of the third party that was registered and there you're all responsible rum providers, so you're probably loading your rum scripts late on in the page load in a non blocking fashion because you're all good people.

27:39
Barry Pollard
But by that point all those containers.

27:42
Barry Pollard
That you want to measure have already started painting and even if they haven't started painting, they've been processed by the parser. The container attribute has been ignored because that wasn't turned on at that point. So it's actually quite annoying to actually measure this from a third party run provider script point of view. So our recommendation at the minute is.

28:00
Barry Pollard
To use a first party origin trial,.

28:02
Barry Pollard
Get them to put it in the head. It's a bit more hassle, you can't turn it on for a lot of your customers in Hongo, but that's just one of the negatives about using a third party origin trial for something that's already happened before you inject it in the page. Once this launches for good. Without an origin trial this won't be an issue, but it's just the way that we activate the thing most performance.

28:24
Barry Pollard
Entries you're used to.

28:25
Barry Pollard
You can just go and ask for the buffered ones and get all the old ones, but that depends on the feature having been activated to buffer them in the first place, which in this case doesn't happen until the origin trial token's done in there.

28:36
Barry Pollard
So that's something to be aware of.

28:37
Barry Pollard
Quite annoying, but Anyway, yeah, have a play with it other than that and see what you think. And I'm sure Jason from Bloomberg would love to hear feedback.

28:48
Barry Pollard
There's also two, actually three I was reminded one earlier proposals for measuring speculations. These are very early stage, so just keep an eye on it. I'll talk about the bottom one first.

28:58
Barry Pollard
I should have put these in other order.

28:59
Barry Pollard
So this is from yo myself. Whereas we're proposed a couple of JavaScript.

29:04
Barry Pollard
APIs that you can call at the end of the page whenever you're doing page hide or whatever and say hey, how many speculations did I do?

29:11
Barry Pollard
How many preloads did I do? So it's not just for speculation rules, it's beyond that.

29:15
Barry Pollard
And I know UAV has talked about.

29:17
Barry Pollard
Extending it even further for early hints or something like that. I can't remember what his other one was, but anyway, yeah, it's now landed in code. It's available in Chrome 150, very early.

29:29
Barry Pollard
Preview version, so I'm sure you'll find bugs and things like that.

29:33
Barry Pollard
But you can start playing that on Chrome Canary now. An origin trial I presume.

29:37
Barry Pollard
It's going to come later and you have a look. There's lots of details on that page.

29:41
Barry Pollard
And then this morning I only discovered this. There's a prefect activation beacon that's basically an HTTP header where you can say okay, our speculate page, this one is.

29:52
Barry Pollard
Only for speculation rules.

29:54
Barry Pollard
So speculate page 2 HTML it will.

29:56
Barry Pollard
Send back a header saying.

29:59
Barry Pollard
Whenever you start going with me, send a beacon. It's basically, it's quite niche, it's for beaconing early.

30:07
Barry Pollard
So rather than waiting until the page loads and your ROM provider loads and you can go and check the delivery type and see if it was prefecture, check the activation start time and see if it was pre render it's saying.

30:17
Barry Pollard
Just fire that off near the beginning.

30:19
Barry Pollard
Because you'll know activation whenever it happened. So most of you will be fine waiting until later 1. So I'm not sure how useful this one is there later. There's a couple of niche cases where you click on the page and before you run providers loaded you click to another page and then you would miss that and you kind of get that with this one here. But you don't have any opportunity to change it, to shape it like you can with the other API and beacon back. What you want to be come back.

30:48
Barry Pollard
Is just like here's one thing, whether.

30:50
Barry Pollard
You like it or not, gone in the format that it's sending it.

30:57
Barry Pollard
I think that's me. So Andrew Hopefully I've left you enough time to talk.

31:00
Barry Pollard
I'll blame this starting late, if not.

31:02
Andrew Creskey
No, this is great. I just have a few things that I wanted to share and thanks everyone for giving me the chance to show.

31:09
Andrew Creskey
Off some fun stuff that's in Firefox.

31:11
Andrew Creskey
I'm at a hotel, so I am.

31:13
Andrew Creskey
Very, very bandwidth limited. And if I do drop, it's. It's not because I don't want to hang out with you folks. Let's see.

31:22
Andrew Creskey
But yeah. So I'm Andrew. I have been on Firefox engineering for.

31:25
Andrew Creskey
About eight years now, and if I.

31:29
Andrew Creskey
Could ask for the next slide, I.

31:30
Andrew Creskey
Want to show off what we've been working on. And Barry, if you're presenting, if you wouldn't mind just advancing at one. Lovely. Oh, excellent. Okay.

31:46
Andrew Creskey
Yeah. So first thing, we announced in our dev platform, intent to prototype Novari Search, the HTTP caching extension. Yeah, I'm really happy to see this as well. If folks aren't familiar with it in Firefox right now, those two URLs would.

32:03
Andrew Creskey
End up as being separate cache entries, but now the server can replace Apply with the response header. Just saying, basically, don't worry about the ref and that'll join those two cache entries. So that's actually already passing web platform tests, so I'm expecting to see that in Nightly shortly. And next slide, please.

32:27
Barry Pollard
And before I move on, I've got a question. There's been a spec change with the params. So you could say params without anything means that all params, whereas now it's params equals open bracket, close bracket. I presume you went with the new.

32:41
Barry Pollard
Spec and we haven't updated yet.

32:43
Andrew Creskey
So that is a good question that I'm going to make note of and.

32:47
Barry Pollard
Ask the let's chat upline afterwards.

32:50
Barry Pollard
But there might be one inconsistency that we have to deal with.

32:53
Andrew Creskey
Yeah, absolutely.

32:57
Andrew Creskey
Okay, there we go. And one of the reasons that we did this is that I'm told it's.

33:01
Andrew Creskey
Used very heavily by speculation rules, so.

33:05
Andrew Creskey
Well, I'm really happy to see that response. I will pass that on to all the engineers involved.

33:11
Andrew Creskey
This is a collaboration between the DOM team, the NECO team, which is our networking team, Dev tools, and the performance team.

33:19
Andrew Creskey
We are starting off with same origin prefetch.

33:23
Andrew Creskey
And if folks aren't familiar with it's a way. It's a web API to provide JSON to prefetch other resources. There's our dev platform announcement and there's the metabug. If you want to follow along.

33:39
Andrew Creskey
I know folks have a lot of questions. Barry has some good ones for me this morning. I would say a lot of the specifics in terms of eagerness. We're going to start experimenting with it, see how it behaves, run field trials.

33:56
Andrew Creskey
And make some, make our decisions from there. But if there's any specific questions, happy to answer them in the text chat or after. Okay.

34:09
Andrew Creskey
And then otherwise.

34:10
Andrew Creskey
Next.

34:10
Andrew Creskey
Next slide. Yeah, so this is a small one that a contributor landed Resource timing level three, the interim response timestamps. Yeah, I really like these. I wish I had them when.

34:20
Andrew Creskey
We landed early hints two years ago. But that's one of the good uses for that. So you can get the timing of the interim response and then also for the final response. And there's debug in that. That's landed in Firefox 152 so that should be in release in two months.

34:40
Barry Pollard
Which makes it baseline newly available.

34:43
Barry Pollard
Now every browser has these metrics.

34:46
Andrew Creskey
Wonderful, wonderful.

34:48
Andrew Creskey
Next slide please. And yes, we announced Happy Eyeballs V3. If folks aren't familiar with this is an IETF draft called Better Connectivity using Concurrency. In Firefox, our connection establishment logic was sort of spread over quite a few places. We now have a singular rust based crate. A state machine can collect all the information in one spot and also.

35:22
Andrew Creskey
Race different mechanisms to establish the best connection. So that could be IPv4, IPv6 in some cases racing quic against the TCP for HTTP 2 and 3, provided that we have evidence that the server supports HTTP 3.

35:43
Andrew Creskey
I'm particularly interested in this because I've had a chance to play with it.

35:46
Andrew Creskey
And I know that Firefox can connect cold to the first nav of a site over HTTP 3 much more frequently than it could before. And in all of our timings and from our ROM data, that usually means a much faster time to first byte effectively.

36:05
Andrew Creskey
So I'm expecting we still have to make sure this works and run experiments,.

36:09
Andrew Creskey
But hopefully we'll be seeing, and everyone here will be seeing through the ROM data that Firefox clients will be connecting over H3 more frequently and with better response times. And there's the announcement and there's the.

36:24
Andrew Creskey
Bug to follow along. And that's all I had.

36:39
Nic Jansma
Thank you, Andrew. Any questions for follow ups for either of these presentations? I know there's a lot of chatter happening in the channel. Any specific things that people want to chat about right now.

37:02
Karlijn Lowik
For the Firefox team? Oh, Andy's for a story. Andy, you go.

37:10
Barry Pollard
Sorry, go. I was on mute. You started?

37:13
Karlijn Lowik
Yeah.

37:18
Barry Pollard
All right, I'll go. Right, I'll go. So, in terms of soft navs, what. One of the things to think about is how do we describe what it represents to people using data, you know, our customers in. In run terms. Because it's not ttfb, it's not fcp, you know, it's. It's. It's. What does it represent from a user perspective? I think that's a. Interesting conversation to have at some point. Not necessarily now, but I think there is a challenge there.

37:50
Barry Pollard
Yeah. So I think the soft nav entry isn't necessarily one for users to expose.

37:56
Barry Pollard
It's a way of slicing the timeline and getting the ICP entry. I don't think I'd say, hey, you're the softening of 0.5 seconds.

38:09
Barry Pollard
I mean, it is kind of. I think it's first tint, I think would be the equivalent.

38:15
Barry Pollard
But yeah, it isn't really something there. You can expose the first tint metrics. Soft first tint for want, better word. Soft LCP. And you can slice your CLS9P that way. I don't think it's necessarily one. I mean, it's up to you, it's your product. But I don't think it's something to necessarily say, hey, this soft app, this soft nav took 0.5 seconds. This one took 0.75 seconds. I don't think it's really that useful there. Unless you want to know. Yeah.

38:43
Barry Pollard
From click until the last paint due to that click.

38:48
Barry Pollard
That might be an interesting metric, but, you know, you don't have that on hard nav. So largest contentful paint. You've got all contentful paints or. I mean, no, actually, I guess that is the largest contentful paint anyway, because it will only admit it if it's largest. So, yeah, I don't.

39:03
Barry Pollard
I don't see a point in that.

39:16
Sergey Chernyshev
Caroline, you good?

39:20
Barry Pollard
Yeah.

39:20
Karlijn Lowik
So I had a question for Andrew and also Nazim, who's secretly sitting next to him. When were in Amsterdam and we discussed RomCG things that Firefox was considering, you also added that you were considering adding CLS support. Is that still on the table?

39:40
Andrew Creskey
So I lost Nazim, unfortunately.

39:43
Andrew Creskey
We were trying to share bandwidth.

39:44
Karlijn Lowik
Oh, no.

39:47
Andrew Creskey
CLS is really interesting. I can say it's not on the immediate roadmap, but it's very useful. I think it's very useful, especially for web developers.

39:57
Andrew Creskey
I think just it's on a priority stack. I could say it's not there.

40:02
Karlijn Lowik
Okay, thanks.

40:07
Barry Pollard
Yeah.

40:07
Sergey Chernyshev
And I had Actually a comment slash answer to Andy that we. I don't think we have TTFB for soft nav. Right. Like effectively ttf, there is a use case for ttfb, meaning spas often loads data from the server on the soft nav. Right. But it's not, first of all, given. Second of all, I don't think it's instrumented right now. Right. And Barry, please correct me if those do get instrumental, but from what I understand, we are missing that.

40:43
Barry Pollard
Yeah. And I think it's complicated because you're right.

40:47
Barry Pollard
You can sit there and go get me this new data often as a JSON API call, fill it in and do it. And there it's kind of very close to ttfb. And you could measure that and do.

40:58
Barry Pollard
That, but a lot of them will.

40:59
Barry Pollard
Either prefetch and forget it.

41:01
Barry Pollard
So there isn't that.

41:01
Barry Pollard
And then you may be getting the. The HERO image, which you didn't prefetch because it's heavier, in which case it's not analogous to ttfb. It's kind of the extra thing there. So in the end we decided, no, it's kind of a bit of a bonus.

41:15
Barry Pollard
I mean, a lot of ways I think about it's kind of.

41:18
Barry Pollard
It's like a cached, you know, if you go to page two and it's already cached there your TTFP is.

41:24
Barry Pollard
Zero and it's kind of. That was soft now, because the TTFP.

41:28
Barry Pollard
Is often useful to measure. Well, lots of things badly presented on that before, but it's that kind of. It's your first metric of when something's on screen that doesn't make any sense on soft nav because there's something on screen already. Yeah, you can argue when the first sort of updates come in there, TTFB is useful for something's happened, the server's responded, It's a 200, we're seeing the title updating in the tab name and you know, something's happening, even if nothing painted on screen. That's a lot less useful in an SBA world, in my opinion. So, yeah, to be honest, it's complicated and getting it right isn't easy. And it's going to massively different per SPA and per implementation and per whether they've already cached it.

42:13
Barry Pollard
And also when you think about it,.

42:14
Barry Pollard
Whenever you're in an sva, you go to page two and then you go back to page one and then you go to page two again. That's the one where it's definitely cached. And well, depending again on the. The Implemented, you're kind of resetting back to a page. So TTFB sometimes, even when it makes sense, won't make sense.

42:39
Barry Pollard
Jared, is LCP reset and soft out?

42:42
Barry Pollard
No. So it used to be.

42:43
Barry Pollard
In the very first iteration of this.

42:45
Barry Pollard
API, we've now introduced this new ICP thing that can be used to measure a soft lcp. So now that's a big change that's happened there.

42:57
Barry Pollard
Yes, at the minute ICP updates as bigger content themes.

42:59
Barry Pollard
So that's why I said it was LCT like. But in future we may add all ICT paints. No, sorry, can I say that again? I didn't get what you mean.

43:14
Barry Pollard
Yeah, so at the minute it's LCP.

43:16
Barry Pollard
Like in that you click on something whether a soft nav happens or not,.

43:20
Barry Pollard
You'll get Paint 1. If Pint 2 is bigger, then we'll report that. If Pint 3 isn't bigger than Paint 2, we won't report that. If Paint 4 is bigger, then we will report that.

43:30
Barry Pollard
So you only get an increasing ones.

43:31
Barry Pollard
But we're thinking it might be useful.

43:33
Barry Pollard
To omit all paints. And this is where I said that could be confusing because at the minute it doesn't and if you implement soft nas, because I know a lot of you are keen for that. So we may change the API structure to have a soft NAVS object and within that paint times.

43:48
Barry Pollard
And if you look in that, even.

43:49
Barry Pollard
If we omit one another one, they won't update. So you won't update, therefore you won't report new LCPs or you know, accidentally go get a smaller LCP than it is there. So we haven't decided that, but Michael and I were talking about, we mainly that to make. Just make it easier for if we ever introduce all paints in the future. Go ahead.

44:17
Sergey Chernyshev
All of this conversation about what's measured and what's not measured out of the box by the browser basically gives me the idea that it might be our RAM community group's responsibility to define those, let's call them steps of instrumentation, maybe I don't know what or phases or parties involved where like the browser provides the basic metrics, the rum vendors or RAM instrumentation teams internally provide some aggregation of that, and then product teams that build the product, specifically specific product provide the rest of it. Today I think a lot of conversations that we are having are concentrating around the first two, but. But not the third one. Right.

45:03
Sergey Chernyshev
And I think like both with user timings, with element timings, container timings and some of these segregation considerations, I think we probably should define that to incentivize those teams to actually do that instrumentation, which was historically a bigger challenge for me to push and it's basically bigger investment, more people need to be involved on teams. So I think our group can help with that understanding and understanding what that investment might be necessary to go farther both for MPAs and SPAs specifically.

45:45
Barry Pollard
Yeah, I think a little bit. Lisa, the question is whether we go.

45:47
Barry Pollard
For lower level APIs, which a lot of browser vendors appreciate and gives a lot more flexibility of what you want to measure and ICP is one of those, or whether we just omit the higher level lcp, IMP and CLS things, which I think from the user perspective and developer perspective, and then people who don't sit and run CG meetings would be appreciated a lot more, but is also limiting in a lot of ways. So I can understand both sides of the arguments. But sometimes, yeah, it is complicated some of this stuff and the soft navigation API now is quite complicated and you need quite a lot of understanding and knowledge to be able to use it properly or use Web Vitals JS or one of your wonderful run products that take care of that complication.

46:30
Barry Pollard
And it's only the people on this call that really need to understand that. But yeah, that's an eternal challenge. And then also like a lot of these other ones like icp, like element timing and container timing, there are extra things that you can get out of it if you want it for the sort of super duper customers. They won't be used for the regular people who are maybe only interested in kind of high level core Web vitals single numbers. But if you want to measure a particular container or a particular element or particular interaction, you now can. So that's the good side of having lower level APIs.

47:05
Cliff Crocker
I was just going to mention, just based on all the discussion and interest around this topic and others, it might be worthwhile for continuing this next month, maybe as the second half of the meeting. I don't know what everybody thinks of that, but I would really like to see to Andy's point, this is awesome and as this starts to hit reality, it'll be awesome to see how people are using this. But I'm also more interested in how are we going to polyfill and support other browsers and what are the best practices there because it's going to take a while likely to get this supported across the different platforms. But the more consistent we are to Sergey's point, I think the better that is for the community.

47:51
Cliff Crocker
So might be worth kind of trying to throw Some discussion around that, like maybe we'd start with stock navs and how would we polyfill this? Or how would we support other browsers once the stock navigation API is up for Chrome? Like what's the fallback? Just a suggestion. I don't know if anybody's interested in either leading that talk or participating.

48:15
Barry Pollard
I'm definitely interested in participating. And to be clear on this, like whenever we launch APIs where we can.

48:21
Barry Pollard
We often throw give you polyfills. I'm working on two myself for other things. But we're not planning on launching a polyfill for the soft nav. We don't think it is polyfillable easily if at all. And there's going to be so many caveats and stuff like that. That does create a problem of do you ignore this until it's cross brighter?

48:40
Andrew Creskey
Do you.

48:41
Barry Pollard
I mean we think these are better ways of measuring, obviously. Do you show click both for Chrome and allow people to flip between them? Do you just go, well Chrome's got a better way of measuring this and the other two. These are the best things we can get at the moment now and prove it works in Chrome and then ask for it in the other browser. Done a very interesting discussion on that point of view.

49:01
Cliff Crocker
Yep, absolutely.

49:16
Barry Pollard
Yeah, that's annoying as we finally got interoperable metrics and now we're going ahead and firing on and breaking that again. How dare you Progress.

49:28
Nic Jansma
Okay, that was a very lovely talk. The the signal to noise ratio in today's meeting is very high. So much content was packed in there. So thank you for Barry. Thank you Andrew for presenting everything that you did, leading the discussion and helping us understand things a bit more. I really appreciate it. Yeah. So that'll conclude today. Sorry for the mix up. At the beginning of the hour we'll try to figure out how we can make sure everybody can join in the future next month. As we said, we'll talk about otel, maybe some continuation about this stuff a.

49:57
Barry Pollard
Little bit as well.

49:58
Nic Jansma
Look forward to seeing everybody in June. All right, take care.
