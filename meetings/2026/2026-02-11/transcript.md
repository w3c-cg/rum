00:00
Nic Jansma
I will share a slide deck as we often do.

00:06
Jase Williams
And.

00:09
Nic Jansma
Let'S see if everybody can see it. Slides coming over.

00:15
José Dapena Paz
Okay.

00:17
Barry Pollard
Yep.

00:18
Nic Jansma
Thumbs up. Thanks. Okay. All right, brief agenda for today. We actually had some other things that we thought were hoping to be able to do. Last time we had set the agenda was in December, so things have changed a little bit and we had to kind of figure out some changes last minute. So I do really want to thank Jose and Jase for coming kind of last minute to talk about container timing today. We'll be spending some time about that, raise awareness on that. There are some updates from Barry, who's not able to make it today. So we might do a Barry's Bytes without Barry, but just kind of touching on some of the bullet points he sent over for updates for Chrome and, you know, hopefully we can talk about those in a smart manner.

01:00
Nic Jansma
I'm not sure if there's any other Googlers on the call that can fill in. Maybe not at the moment, but we can. We'll do our best to kind of COVID some of that stuff. But first, same logistics as always.

01:14
Barry Pollard
The.

01:17
Nic Jansma
This is our first or second time we're trying Wednesdays instead of Fridays, so we have switched the meeting cadence from second Friday of the month to second Wednesday of the month. Hopefully folks can adjust and or make this meeting a little bit more likely. If there's any feedback on that, please send it to the chairs later. Next meeting so the next meeting will be Wednesday, March 11th. Happens to be the same dates next month because of good old February at this time slot. We do have a couple updates that were hoping we had queued up for today that we are going to punt till next time. So I don't think there's been any updates on Interrupt 2026 yet. Has anybody seen us otherwise?

02:07
Jase Williams
Okay, I haven't heard any.

02:10
Jase Williams
I'm eagerly waiting as well. But yeah.

02:12
Nic Jansma
So hopefully that'll be a good topic of discussion for the March meeting. Now that we have more core vitals across the browsers, it would be great to kind of look at some of the differences between them. I'm not sure if anybody on this call would be interested in driving that conversation or sharing some of the data that they have. From the rum point of view, I know that impulse is collecting this data and I can try to put a few things together, but if anybody else would want to either share their data or drive a conversation about looking at core vitals across browsers, I think that could be interesting. Reach out to us if you have an interest in that I think we.

02:45
Karlijn Lowik
At RAM Vision can also add some data to it.

02:48
Barry Pollard
Perfect. That'd be great.

02:50
Nic Jansma
Awesome. We'll plan on at least those two. And if anybody else has other thoughts or just things that they're tracking, that'd be great. Timing Allow origin and server timing header adoption updates. We had talked about that in December. We wanted to review where those usage of those are and maybe push for more adoption again. Kind of one of our charters is pushing for adoption of things CPU performance API was talked about. That was talked about actually in December if I recall correctly. So we may not need that. And then there is a proposal from Yov and Barry around rum reporting of unused preloads. Neither of them can make it today, I don't believe. So were going to wait until the next community group meeting in March to kind of talk about that a little bit more.

03:41
Nic Jansma
If you have any thoughts on any of those, if you want to step up and share anything, if you want to propose other things, please reach out. You can also open up the agenda documents at that link and make suggestions there. I copied and pasted the backlog and we've made some good progress on topics we wanted to cover. And those are all the crossed off ones. There's more things there to be discussed and I think we should continue working on that list. Okay, that being said, I'm going to tee up a discussion today from Jase and Jose around container timing. Just a little bit of background in the Web Performance Working Group. These two have been advocating and developing and making changes to container timing, the specification based on element timing for a couple of years now.

04:38
Nic Jansma
It's been a really cool journey to watch how these changes have updated and evolved over time and just kind of commitment from the two of you guys to continuing to push this forward. I think it's a really cool proposal. I think it could really help with a lot of RUM scenarios and so I'm really excited that it's getting closer and closer to being available. So with that I will hand it off to whichever one of you would like to lead the discussion. But this is more of just kind of an information sharing discussion. And we can have Q and A probably as well.

05:12
Jase Williams
Okay, I will share a deck I.

05:16
Jase Williams
Have made because I am not sure how much people know.

05:22
Nic Jansma
Jason, I would say like, let's just assume we need to start from the beginning and then folks that, you know, why not already know, it's fine, right?

05:30
Jase Williams
That has been my assumption. Yeah, that has been my assumption too.

05:35
Jase Williams
Okay, hold on a second.

05:40
Jase Williams
All right, can You, I'm assuming you.

05:42
Jase Williams
Can see, you can see the deck. See that?

05:46
Michal Mocny
Yep.

05:48
Jase Williams
Yeah. So, yeah. Hi, everybody, I'm Jason Williams, senior software engineer at Bloomberg. And yeah, Jose is also here with me from igalia. And yeah, Agalia do partner with us on various standards and open source contributions. So, yeah, as some of you know, been discussing container timing in the WebPerf working group, myself and Jose have been working on it and making improvements over.

06:19
Jase Williams
The past couple of years.

06:20
Jase Williams
And yeah, it's good to give you guys an insight into where it.

06:24
Jase Williams
Is and sort of how it works.

06:27
Jase Williams
Okay, yeah, so I'm stealing Andy Davis's component images.

06:33
Jase Williams
So Andy from Speed Curve, when we.

06:36
Jase Williams
First presented this, he was helping us.

06:38
Jase Williams
Out with this and this is one of the images he used.

06:41
Jase Williams
But essentially what does container timing actually do?

06:45
Jase Williams
It allows us to render subsections of.

06:48
Jase Williams
The domain or any sort of region.

06:51
Jase Williams
Of the DOM of our choosing. In this case, we want to time the rendering of this component and developers.

06:58
Jase Williams
Have the question, when does this component or when is this container finished painting.

07:02
Jase Williams
And when has it been presented to the user?

07:06
Jase Williams
So here we've got some text which.

07:09
Jase Williams
Renders the chocolate cookie, and we've also.

07:11
Jase Williams
Got an image above.

07:14
Jase Williams
Sure, we could stop there and say.

07:16
Jase Williams
That'S finished painting, but we might have some other things going on.

07:20
Jase Williams
Like here we've got the ratings that might come from a third party that could be asynchronously loaded.

07:27
Jase Williams
We have a button just underneath, and.

07:31
Jase Williams
Maybe we don't want to click that.

07:34
Jase Williams
Button until the component has rendered. So we might want to be able to control that. We might want to know when that button is also loaded as well, because.

07:41
Jase Williams
This component can't really be used until that button is there.

07:45
Jase Williams
So we have a few things coming in and we have some of those.

07:48
Jase Williams
Things that could come in asynchronously.

07:50
Jase Williams
What we can do in this particular case is we could call this a.

07:56
Jase Williams
Container timing region and we could track when this region has painted. If we try to use, say, lcp, for instance, LCP might pick the cookie.

08:07
Jase Williams
Image and we might get timings for that.

08:10
Jase Williams
But it's.

08:10
Jase Williams
It doesn't necessarily mean that, say, for.

08:12
Jase Williams
Instance, the ratings has come through and.

08:14
Jase Williams
Therefore we can't use the LCP time.

08:16
Jase Williams
To know that this component was ready.

08:19
Jase Williams
For the user to actually start using. Yeah, and it doesn't have to just be components either.

08:27
Jase Williams
Even in prior pages, this was taken from Jose's blog that's been released this week.

08:35
Jase Williams
But actually this is a very real issue. This is actually Something we have in. We have happened in Bloomberg quite a lot. You have a typical heading at the.

08:45
Jase Williams
Top and.

08:48
Jase Williams
You'Ll see a real use case of this in a minute as well. Typical heading at the top could be a title or an image. And you care about when the user sees their content, you care about when the user sees their article and the thing that they actually came to the website for. But your LCP gives a much lower time because maybe the image is cached or something. And so your timings don't represent what the users.

09:16
Jase Williams
They don't represent a page that was ready for the user to start using. So it's not really.

09:22
Jase Williams
It's not the most accurate user focus metric.

09:26
Jase Williams
We.

09:27
Jase Williams
I mentioned element timing there. Well, Jose mentions element timing.

09:32
Jase Williams
One of the things we did as a prototype was to wrap as many.

09:36
Jase Williams
Things into element timing as possible. So element timing usually works with just a single element. There isn't really any sort of way.

09:43
Jase Williams
Of putting it on a body or a tree.

09:48
Jase Williams
So what we did is we parsed the whole HTML and we just put element timing all over the place.

09:53
Jase Williams
And we waited for all of the.

09:56
Jase Williams
Element timings to finish to say, okay.

09:59
Jase Williams
Everything in there must have rendered by.

10:01
Jase Williams
Now, because we added, I don't know, as an example, we added 20 element.

10:05
Jase Williams
Timings and we've had 20 entries. So we're going to assume everything is paint.

10:10
Jase Williams
It was quite hacky, but that was.

10:12
Jase Williams
Just a way to get a prototype working.

10:15
Jase Williams
And from that point we decided to just keep tracking a container for all paint events to happen. The problem with that is you ended.

10:28
Jase Williams
Up with containers that just updated forever.

10:33
Jase Williams
So this also, this is a bit of a flawed.

10:36
Jase Williams
This is a bit of a flawed process.

10:38
Jase Williams
So for instance, if you imagine a carousel, the carousel is loaded and the image is there. But then, you know, if somebody clicks right or left and we have the image change, that's a pain. Does that the carousel component has loaded, but are we going to continue tracking more interactions after the interaction and after it's doing other things? So we had to find a way.

10:59
Jase Williams
To have some sort of cutoff.

11:02
Jase Williams
And essentially what the issue illustrated here.

11:07
Jase Williams
Is, we've got your container root and we can pretend these squares are regions.

11:14
Jase Williams
Like they could be an image or.

11:15
Jase Williams
A block of text.

11:17
Jase Williams
And what we often found when we.

11:19
Jase Williams
Test this originally was we often had.

11:21
Jase Williams
Something that would change. So it could be like a carousel, as I mentioned earlier, it could be some text changing, it could be any part of the page updates and we would just continue to get element timing entries.

11:33
Jase Williams
So we knew that this.

11:33
Jase Williams
We knew very early on that this.

11:35
Jase Williams
Wasn'T the way forward.

11:35
Jase Williams
And actually it was one of the reasons why we came to the standards body.

11:40
Jase Williams
The solution we came up with was to only update new areas that have not been painted yet. So we're just tracking the initial paints.

11:49
Jase Williams
So, same as before, using container timing.

11:52
Jase Williams
We can pick an area, we can.

11:54
Jase Williams
Pick a region and what we do internally.

11:58
Jase Williams
And this is getting a bit in the weeds.

12:00
Jase Williams
Don't worry too much about taking this all in.

12:02
Jase Williams
But basically our prototype keeps track of.

12:07
Jase Williams
The regions that were painted. So again, when we have our rectangles.

12:11
Jase Williams
Being painted in the browser, essentially what we do is we keep track internally of those areas that had an initial paint.

12:18
Jase Williams
Even if the element has been removed.

12:21
Jase Williams
We still keep track of where those paints have happened.

12:24
Jase Williams
So that if something else comes in later on, say an image, a carousel is probably a good example of this. We have an image change, it doesn't matter. We know that a pain happened previously, so we skip any work or any notification telling the developer there's been a.

12:42
Jase Williams
Change or there's been a page update.

12:44
Jase Williams
So now with container timing, unlike before with element timing, when we get updates to our region and one area gets.

12:52
Jase Williams
A new paint, say an image changes, we don't get a new entry. We only get entries for new paints in new areas.

13:02
Jase Williams
And this has helped us quite a lot. This solution has really helped us internally to identify when most components and most.

13:15
Jase Williams
Pages have finished their initial pains, even.

13:17
Jase Williams
If there are updates later on. So, yeah, this is, for now, what we're calling container timing.

13:24
Jase Williams
Yes, I guess the name could be.

13:26
Jase Williams
Subject to change, but this is the.

13:27
Jase Williams
Name we're using for now.

13:29
Jase Williams
And the performance entry looks a bit like this. So you have your entry type as.

13:33
Jase Williams
Container, your start time, that's the time.

13:38
Jase Williams
When a paint update came through. And the identifier, which I'll show you in a minute. But essentially, just if you've used element.

13:46
Jase Williams
Timing before, I think some of you.

13:48
Jase Williams
May have used element timing. You can set an identifier on the attribute when you add that to a DOM element. The size here is the combined region.

14:00
Jase Williams
That'S been painted so far within.

14:03
Jase Williams
I'll come on to that, Sergey. I'll answer that in the end, the size is the combined region has been painted. So if I go back here, when you get a size inside of your performance entry, it is the cumulative size of all of these.

14:22
Jase Williams
So size should only ever increase, it should never really go down.

14:29
Jase Williams
You can also make use of that as well, to track how big the paints and updates are getting. Intersectionrect, you will see this in a minute.

14:38
Jase Williams
The total bounding rect of everything that's.

14:40
Jase Williams
Been painted first render time is quite useful.

14:44
Jase Williams
That will give you the first paint within that container route.

14:47
Jase Williams
So in this example, if this is the first paint here, even if you get multiple subsequent entries after that, they will always refer. The first render time will always refer to this one. This can be useful if you want to measure the delta between two paints that have happened and the time it took for between updates within the same components. Duration is always zero and last painted element is essentially the last element to paint when there has been a paint update. This can be quite useful for debugging.

15:20
Jase Williams
To see what triggers a paint event to happen.

15:23
Jase Williams
Sometimes if you have a very busy layout, it might be tricky to know.

15:27
Jase Williams
What actually caused the entry to come through.

15:29
Jase Williams
And so last paint element can point.

15:31
Jase Williams
You to where that happened.

15:33
Jase Williams
Assuming element is still around in the dom. And this is just an example of what it looks like. This is a screenshot of the performance entry and yeah, essentially all the same.

15:45
Jase Williams
Things that I mentioned before. Right.

15:49
Jase Williams
I will show some quick examples. The example I'm about to show.

15:58
Jase Williams
Is probably not the best starting example because.

16:00
Jase Williams
It has a nested container timing in there. So I should mention this before I.

16:04
Jase Williams
Show you the next screen.

16:06
Jase Williams
You can nest these, so you can have contain the timing and then your.

16:11
Jase Williams
Identifier and then somewhere deeper in the tree you can have another one. What happens in that case is when.

16:17
Jase Williams
There is a paint event, say for.

16:18
Jase Williams
Instance, in the inner one, both, it will attribute to both of them.

16:24
Jase Williams
So in your performance observer you might get multiple entries, one for the outer container timing region and one for the inner one. And the reason I'm explaining that is.

16:35
Jase Williams
Because in this basic example we.

16:39
Jase Williams
Essentially have an inner content.

16:42
Jase Williams
So in this gif it's going to reset soon.

16:47
Jase Williams
But essentially we have the overall wrapper and on the right we've got some inner content with the very thin red border. And essentially what we're seeing is as.

16:59
Jase Williams
We get more and more content come.

17:01
Jase Williams
Through, we get our performance container timing entries and you can see that it gives us the elements which triggered that entry.

17:12
Jase Williams
So let me just, let's just come back around a second. So this is just. Yeah, so we got the P tag.

17:20
Jase Williams
On the outer wrapper and then you.

17:25
Jase Williams
Can see we had two and that's. We had the inner and the wrapper there.

17:29
Jase Williams
But the last painted element will be.

17:30
Jase Williams
The same, which is the P paragraph.

17:33
Jase Williams
On the bottom right. And so if we refresh this so.

17:38
Jase Williams
We have two, mainly the two paragraphs.

17:42
Jase Williams
And then we have a third one come through the paragraph on the bottom.

17:45
Jase Williams
Left and then we have two there.

17:48
Jase Williams
Because the inner div. The paragraph on the bottom right contributes.

17:53
Jase Williams
To both the inner div and the wrapper. But yeah, this is on the repo.

17:58
Jase Williams
Which I'm going to share a link to, so you can play around with this and have a look at it yourself. This example, coming back to the components angle of this. One thing I talked about at PERF now a couple of years ago was.

18:13
Jase Williams
If you wanted to time certain components or certain regions, maybe there's a certain.

18:19
Jase Williams
KPI you have within your organization.

18:21
Jase Williams
And.

18:22
Jase Williams
And for instance, the example we used.

18:25
Jase Williams
Was prime to first tweet.

18:27
Jase Williams
So this was a bluesky site showing when I go to someone's post on.

18:32
Jase Williams
Bluesky, how long did it take for the post to actually render. And obviously right now we have tools like LCP and fcp, but they might be tracking something completely different. And in this case you can see.

18:43
Jase Williams
Both LCP and container timing. I've added like a hood to show.

18:49
Jase Williams
You both of them being tracked. So this is my own profile being loaded slightly slower, slowed the CPU down a bit.

18:57
Jase Williams
And what we can see here is.

18:59
Jase Williams
The LCP picks up the heading, the top with my image, my profile image.

19:05
Jase Williams
And I have set. I've put a container timing attribute on the post itself. Let me just run that again.

19:14
Jase Williams
Let me see if I can pause this.

19:16
Jase Williams
What we can see here is actually.

19:18
Jase Williams
The time we have for the post.

19:20
Jase Williams
Is 4.5 seconds, but our LCP time was 3.1. This is slightly. I've slowed down the CPU on this.

19:30
Jase Williams
Just so we can see it a bit better.

19:32
Jase Williams
But this is just an example, like I said at the beginning, where it could be that the image at the top was cached or heavily cached, but the API giving us the data for that post, that's obviously coming from somewhere else and that could take a bit longer. So this is an example where we can time what actually matters to us.

19:50
Jase Williams
And what the user's interested in.

19:52
Jase Williams
And we can see that the times are different. This is a very similar example.

20:00
Jase Williams
This is DPC News in the uk. This is essentially just running it on the entire site.

20:04
Jase Williams
So I'm not running it in a container or a component, I'm just running it, putting it on the body and.

20:08
Jase Williams
Then seeing what happens. And see here that our LCP time.

20:12
Jase Williams
Picks up the large heading here at the top 724 milliseconds. The time for the whole page above.

20:21
Jase Williams
The fold to build up comes to around, I think, what, 2.6 seconds.

20:27
Jase Williams
So, yeah, you don't particularly have to.

20:29
Jase Williams
Use it in this way.

20:30
Jase Williams
But sometimes it can also be useful.

20:31
Jase Williams
To see how long it takes for your page to build above the folder.

20:35
Jase Williams
Versus a particular LCP target. So if you want to try this.

20:43
Jase Williams
Out, essentially this is what it looks like. It's pretty straightforward to be honest.

20:47
Jase Williams
It's just that it's a container timing attribute you can add with an identifier that's optional. Again, like I mentioned earlier, if you want to run more than one of these, it could be useful to add an identifier to track.

21:04
Jase Williams
Which is coming, which is attributed to what.

21:07
Jase Williams
And then like other APIs that I'm sure you're all used to.

21:13
Jase Williams
You make.

21:13
Jase Williams
Use of the Spire, the performance observer.

21:16
Jase Williams
And your type is container.

21:20
Jase Williams
And then also like other APIs, buffered, you can do buffered or not buffered, that's optional. But then once you have this coming through, you can track, yeah, the time.

21:30
Jase Williams
The size and the region painted and so on. So where we are at today and where things currently are, we have an explainer. It is on this repo. I think I can put a link in the chat. We are hoping to move this repo, I should mention.

21:57
Jase Williams
Oh yeah, okay. When I, when I. I'm just trying.

21:59
Jase Williams
To find the chat.

21:59
Jase Williams
When I stopped sharing, I will, I will share the links and stuff. We are hoping to move this into WICG right now. It's currently on Bloomberg's repo. We have a specification also we have some intent prototypes. So we have one on Chromium that Jose has been working on who is here. And there is also an intent prototype of Firefox as well. And there's an ongoing implementation being worked on there too. You can try this out. So this is. The Chromium implementation is behind a flag I will share.

22:35
Jase Williams
If you, if you go to the explainer, you'll see instructions on how to set that up and how to run it.

22:40
Jase Williams
But I think if you go on Canary, it's already enabled because it's just part of the web experimental web platform tool. So I think it's already enabled on Canary. And yeah, we announced a dev trial.

22:55
Jase Williams
In Chromium this week.

22:56
Jase Williams
So essentially for Chromium developers to start looking at that and looking at the.

22:59
Jase Williams
Specification, we hope to work towards an origin trial to make it easier for you to try out and on Top of that, going through the bugs, going.

23:09
Jase Williams
Through issues and trying to improve this.

23:13
Jase Williams
API so that yeah, this can be rolled out even further for everyone to use. That is all I have today.

23:22
Jase Williams
I don't know Jose, if I've missed anything, but I see now also questions in the chat. I'll let Jose jump in if there's anything he wanted to mention.

23:33
Jase Williams
Also.

23:34
José Dapena Paz
Yeah, not a lot. Basically you covered everything. But yeah, the thing is that we announced last week the ready to test for developers the feature. So yeah, it's. If you have Chromium, it's been. The code is mostly there from a few versions ago, but from 145 we get use counters. So yeah, we get at least some monitoring of how people are testing the feature. So. But uni is to enable, if you use chromium beta, that is 145 or more without being canary, you need to pass a command line argument that is enabling the blink feature, container timing or just enable the experimental web flags that can be done with about flags. That's about the native implementation. The main thing here is that we want feedback.

24:39
José Dapena Paz
We want people playing with the feature and see if it works for them if they find corner cases that it should cover or anything that is not working. Right. Yeah, the idea is to make the specification as much useful as possible as we can and then see if we continue step by step making the specification grow and then make it happen in as many browsers as possible and be adopted by default and enabled by default in as many browsers as possible.

25:23
Jase Williams
Okay, so questions?

25:28
Jase Williams
So Sergey, by the way. Yeah, Sergey, thank you for your help on this. Sergey's also offered some advice and also has helped us out on this proposal in the past.

25:38
Jase Williams
So yeah, cheers for that.

25:40
Jase Williams
Your question was how does it work with skeletons?

25:45
Jase Williams
So it should be the same.

25:49
Jase Williams
It should be the same algorithm as LCP in the sense that.

25:54
Jase Williams
If you're.

25:55
Jase Williams
Using images like a sort of single solid color, the entropy should be low.

26:01
Jase Williams
Enough that it wouldn't trigger, which I.

26:03
Jase Williams
Believe is how LCP also operates, at.

26:05
Jase Williams
Least in I think in Chrome anyway.

26:08
Jase Williams
And if you're using a lang like an empty div with background color, a solid background color, it should be the same.

26:20
Jase Williams
Also it wouldn't count as content.

26:22
Jase Williams
So it should also not trigger any container timing entry. And I believe we've set up, or.

26:28
Jase Williams
We'Re in the process of setting up a web platform test to prove this.

26:32
Jase Williams
Because I'm on the repo, there is in the examples folder that we have, there is an example layout that is skeleton layout. And when you run it against that, you don't get any container timing entries at all. So I believe that is there'll be people here that can tell me if.

26:47
Jase Williams
I'm wrong or right.

26:48
Jase Williams
I believe that's consistent with lcp.

26:50
Jase Williams
It should be working the same way. So hopefully that answers that question.

26:53
José Dapena Paz
Yeah. Actually, I want to ask one thing and you see when you have the skeleton image, a regular image that is painted, there's another thing that we didn't comment about is the content timing ignore attribute. So you can set on an element that it is ignored and it's not taken into account. So it doesn't propagate the paints inside. So basically, if you put that in the skeleton and then when you write the actual updates and remove the skeleton, those paints are going to count at that time. So yeah, there are some ways to treat that.

27:32
José Dapena Paz
Also, ignore is important for avoiding propagation for things like dialogues or model things that are on top or even if you paint on the screen, this kind of UI where you see the actual time, the container time in detective paints, if you want to hoist those to be counted, you can also use ignore for that. So yeah, it's kind of a complementary thing that is in the standard that allows to play with for blocking propagation of paints for specific parts.

28:09
Michal Mocny
Michael, I just checked the code. In chromium, the element timing paint detectors are not the same as the LCP detectors. So they follow a lot of the same rules. But the philosophy has been that if you're asking for the element timing of this element, we shouldn't make judgment calls that like this has low opacity, so we won't tell you that it painted. So the element timing code is a lot simpler. It doesn't have those LCP heuristics. So for example, entropy or low bytes per pixel and stuff like that. For images, you ask to tell you when this element has painted and it has painted, you decide if it's low resolution or whatever. That has been the philosophy. I think for container timing the lines are more blurred because you're saying I want the whole container.

28:58
Michal Mocny
I don't necessarily know which specific elements are there, so we might want to reevaluate. That wouldn't be too difficult, I think, to change. And I've argued that we might want to unify some of those paintings contentfulness things. But I think at the moment I would expect every paint to count for container timing, just as it does for element timing. We could change that.

29:23
José Dapena Paz
It's something like this. It's Basically it's going to get even a one pixel incremental change. It is going to be reported. The only thing that we do a bit of tricking is with paragraphs for try to find out a kind of bounding box for the text. But otherwise it is reporting on the paint. And that's actually one of the things that, as I said, it's important to get the feedback because one side this may be too much data as an example, and we have a very clear example. If we have in agreed we have a cell that has value 1 and then you get a 4. Conceptually you say, okay, the cell is already painted, but as the four bounding box is a bit bigger than the one, then it's going to report a new paint.

30:19
José Dapena Paz
So we've been also thinking about this, about having some kind of heuristics about when to report if a change is big enough to be reported again or not. And also about text specifically that to think when. Well, the actual rectangle we use for the text so these things wouldn't happen. But yeah, it's kind of things that we would like to get feedback. One thing that is important, we have the ticket tracking in the GitHub explainer. We are using that also for discussions. So if you see anything weird that you see anything that could better, or if you see in the discussions that you want to participate in any of the things throw in your opinion, that's great. We want that. That's one of the things that we want to happen. Now.

31:29
Jase Williams
Michael, your question. It was, is the container timestamp based on last render or largest render?

31:40
Michal Mocny
Yeah, I know that the data is available for you to choose from. So this is more of a question of like how do we think we should think about it. Okay, so let me. So if you say this whole thing is a container, the whole container might appear larger than any single element that LCP would consider. And I agree. The Blue sky example I think was a really good one. The component, the top tweet or whatever feels like the main content of that page. But how do you think about when did that whole container appear to the user? What's the best timestamp to use? Would it be the time of the single largest element within the container or the time of the last render or the first render? When is that container fully loaded or best represented?

32:34
Michal Mocny
Because I could think of one pixel changes and the number jumps a lot higher, but that's not maybe necessarily when the whole container felt loaded. On the other hand, if you use the Single largest sub element, then it's a little bit more similar to LCP and I wonder if LCP would have caught that. Or maybe it depends on the site and each site needs to decide. So I was just curious if you had opinions.

33:00
José Dapena Paz
I have one. It's interesting right now what it does. It is going to orbit report on any when you get a frame swap with paints, it is going to report any time where you increment the number of pixels that have been painted so far. You get all those events. So on the user side of the API you can actually choose. But we could maybe see now of adding a new time in the events as we have first run the time, we could have a kind of LCP time that will say the biggest jump in the size so far. That could be something that we could calculate. It's not right now though, and it can be done artificially when you get the events. But yeah, that's something that we could think about if it would be useful or not.

34:01
Michal Mocny
So there's a size. So in theory a JavaScript script could say this jump in size was the single largest jump in size.

34:10
Jase Williams
Yeah, yeah.

34:11
Michal Mocny
So I guess maybe this is just a like PSA to the folks listening that there's different ways to interpret the data and so like use it. But then also think about like, I don't know, look at film strips and think which one do you want to be the most representative? And like maybe it's always the last one in the common case, maybe it's always the first one, maybe it's the single largest. That would be good to learn.

34:34
Jase Williams
Yeah, I think it'd be good for us to learn as well. If anyone has feedback on that. Very similar to that topic, although not quite the same. But one thing we do within Bloomberg is we, as Dappe mentioned, even the smallest change can trigger. If it's a new area that's painted, it can trigger a new entry. And text has very tight wrapping, so.

34:58
Jase Williams
Sometimes even yeah, numbers changing can trigger a new entry.

35:02
Jase Williams
What we do is we track size.

35:04
Jase Williams
Jumps and we look for a more than a 1% change in size.

35:12
Jase Williams
So when we have multiple entries coming through, we have a script listening to.

35:18
Jase Williams
Those performance observer entries coming through.

35:20
Jase Williams
And if it's less than 1% difference.

35:23
Jase Williams
Between two entries, we basically throw it away until we reach a significant size.

35:29
Jase Williams
That is something that people could do or something we could discuss about standardizing if that turns out to be a.

35:38
Jase Williams
Feature that a lot of people want also.

35:41
Jase Williams
But I like the idea of a.

35:43
Jase Williams
LCP within A container. It's not something I've thought about too.

35:48
Jase Williams
Much, but I think you're right. It's definitely a discussion we need to.

35:51
Jase Williams
Have of what is representative of that region or that container being painted as far as the user is concerned.

36:00
Jase Williams
So, yeah, that's something we should come.

36:02
Jase Williams
Back to and discuss more.

36:07
Nic Jansma
Yeah.

36:08
Sergey Chernyshev
I feel like we probably should have a position on heuristic versus control approach here because I believe a lot of us who worked on this individual element timing, well, that started from element timing, but we, like many of us, tried to build on top of it, including this spec.

36:31
Nic Jansma
Right.

36:31
Sergey Chernyshev
I think were trying to work around the fact that heuristic of LCP was too generic. Right. Which is great for automated. Right. Like this was always a solution to find more detailed measurement that fits certain users well, certain websites, business case.

36:54
Nic Jansma
Right.

36:56
Sergey Chernyshev
And I think the balance. There should be a position on the balance between providing heuristic answer versus control answer. I feel like this specification is about providing more control.

37:13
Barry Pollard
Right.

37:14
Sergey Chernyshev
The largest container paint might be a different one.

37:18
Barry Pollard
Right.

37:18
Sergey Chernyshev
Like that position on that one might be going back to. Let's create a heuristic approach.

37:26
José Dapena Paz
Right.

37:27
Sergey Chernyshev
So I feel like it would make some of this conversation more straightforward. People will, like myself, will realize, okay, so this specification of container timing wants to give more control. So all the decisions around it are about giving control to developers. While the largest container paint. Sorry for creating abbreviation here, but whatever the name of the ultimate container paint metric is might be having a different approach. So it would be good to have that position of the goal of the spec to be pretty clear when these questions from Michael and myself come. Right. Or other developers, obviously.

38:13
Nic Jansma
Right.

38:13
Sergey Chernyshev
Like, hey, what should it be? All right, so just a thought on how I would interpret it.

38:28
Nic Jansma
Any other thoughts? Feedback.

38:36
Karlijn Lowik
I really like and I'm not completely read up on this one. Sorry, I should have raised my hand. But how I think something we encounter with element timing as well is that you kind of need platforms to adopt it. You want identifiers. That's probably true for container timing as well, right?

39:00
Jase Williams
Yeah.

39:01
Jase Williams
It would be very similar to element timing at this point where.

39:05
Jase Williams
Yeah.

39:05
Jase Williams
And an attribute would need to be added somewhere in the DOM where you want to add that timing. Just like relevant timing that would need.

39:15
Jase Williams
To be done by someone or somewhere.

39:19
Karlijn Lowik
Yeah. So that would actually probably be good for you guys and us and all of us to push a bit on. Hey guys, this would be awesome, but could you add it? Because otherwise it's not going to be useful. Sergey, you have thoughts on this?

39:36
Sergey Chernyshev
Yeah, actually you triggered another thought that I had for a while that similar to how we as a community group want to standardize on server timing, naming and usage, maybe we should follow up with some common examples like cookie consent banners or something like that, where we would want to have common naming or ideas that we would propose to go with this for particular use case to simplify some very usual tracking of those components.

40:17
Karlijn Lowik
Yes, Michael.

40:21
Michal Mocny
I think element timing was always supposed to plug gaps that LCP wasn't covering. Like if you are managing a specific site and you know your site well and you want to manage like you want to observe the experience of specific hero elements that happen to not be the lcp, you have a way to do this now. And so container timing is just a much better version of that is like more logically matching the way we think about web apps in terms of components and containers and stuff like that. And like the Bloomberg examples that they've given several times were like fantastic examples of that. And I think it could be interesting to think about like common elements and creating common metrics that are like explicitly named, like cookie prompts and stuff like that.

41:07
Michal Mocny
But I think of this as being LCP is sort of limited or failing you for a very specific site where it doesn't match fully expectations. And so you have a way to take your own performance metrics into your own hands. That would be the main value. However, I do think it would be worth to say these type of containers are almost always like let's say tables or SVGs, maybe those are always logically units. And so we could think about considering evolving into lcp. That's where I would want feedback to say this is the better default and now you don't have to do any labeling at all. Like container timing becomes the primitive for labeling things.

41:50
Michal Mocny
So like if you learn that kind of stuff where like you always want this to be a container and just affect normal lcp, that could be something that is enabled in the future if all of this stuff lands and works. Carlin, you're squinting.

42:03
Karlijn Lowik
Like if I wasn't quite sure.

42:07
Michal Mocny
Let me give you this example, right when you have tables of data, LCP is going to say like this cell has two characters, that's an LCP candidate. So none of the individual cells ever are going to be an lcp. So it's going to fall back to, I don't know, the heading above the table. But if like every table on the web is logically cohesively one block of paint, that the User thinks about maybe LCP should just say all tables always give you the table, your time and like I don't know.

42:37
José Dapena Paz
Right.

42:37
Michal Mocny
And so this would be. Now you don't have to go around labeling all your tables as containers. They just are.

42:45
Karlijn Lowik
And how are they then? I mean, how does that happen? This is where my. This is where I'm not a developer.

42:52
Barry Pollard
How.

42:53
Karlijn Lowik
How would we get that to happen? This might be a stupid question, but. Well.

43:00
Michal Mocny
I would just say like examples, like many examples of like real world sites. Where here is like the screenshots that Jace showed today of like here's a specific example where this site is best represented by this block of container and here's the markup and here's what it looks like and here's where I applied the container label and why that was useful. Here's another example, another example. And then maybe there's a pattern that we could automatically detect. It would have to be simple enough and consistent enough, which is where the devil's in the details.

43:32
Nic Jansma
You almost need the developers to start annotating so that later we can apply aggregate analysis of where they're annotating.

43:39
Barry Pollard
Right.

43:39
Nic Jansma
Like you need the human in the loop first to be able to analyze to figure out where like the hotspots.

43:44
Michal Mocny
That might be a great.

43:45
Karlijn Lowik
Yeah, maybe, yeah, because that's sort of what we're seeing and actually sometimes are even advising shops and platforms on like could you add this so we can pick it up so we can have data on it and if we could push for large platforms to do so and maybe make it a best practice, then we could start recognizing a pattern. But if it's a best practice, people might also start to do itself. I mean custom is always going to be complicated, but a Shopify for instance, that's a lot of E commerce that would by default maybe able to do it or maybe it has to be on Teambase, I don't know. I was just curious how we would best able to utilize this. Sergey.

44:34
Sergey Chernyshev
Yeah, Michael brought up container. Container elements like table. But I think there are other semantic HTML elements now that people are very common like navs, the mains, the sections.

44:54
Nic Jansma
Right.

44:55
Sergey Chernyshev
That are specifically built to be not just your. For formatting and CSS layout, but like to have certain container meaning to them with certain semantic meanings. So maybe the next iteration is to try and subscribe. Well, basically emit those or maybe. Yeah, yeah, I guess we are discussing the next iteration of this where it's not valid, where developers don't volunteer to mark the containers, but the containers are marked by the by definition, which probably brings the overhead question and stuff like that, but it's a good, good next direction.

45:42
Barry Pollard
I agree.

45:44
Karlijn Lowik
Yeah, comments are good too. Maybe we should actually pick this discussion up again because I think it's very interesting and a very natural follow up. But I also see us running out of time and I know that Chrome had some updates to share, so might it be worth it to just think about it for the coming months and get back to this one because I think it's very interesting.

46:09
Nic Jansma
Agreed and thank you so much Jason, Jose for last, very last minute stepping up and initiating a really great discussion with the group.

46:16
Jase Williams
Yeah, no thanks for having us. And I will be sending links and things like that and maybe pinging some of you just to get some feedback.

46:23
Jase Williams
As this goes through the stages.

46:26
Barry Pollard
That's great. Awesome.

46:28
Nic Jansma
All right, we have just a few minutes left. I do see Barry is on the code on the call and he is welcome to do the Barry's bites in live and in person, but he also did suggest that one of us could do it as well. So Barry, would you prefer that I just run through it quick? Would you like a moment to talk.

46:46
Barry Pollard
Through them up to yourself? I've actually skipping my session so going there. Sure, I'll run through it very quickly. These are just some of the things Nick and I were chatting about that you might want to be aware of as rum providers. I won't have time to cover any of them in huge detail, but if any of you got any questions, let me know. First of all, a lot of you have been reporting the Safari imp reporting slower than actually it actually is. I don't work for Webkit or Safari, so this is more a public service announcement.

47:20
Barry Pollard
They do have a bug where if you click something and no draw happens so I don't know, you click an add to basket and it doesn't actually do anything, then it won't measure the paint accurately and the next paint might happen half a second later for something else and then it will suddenly show a very large interaction to next contentful paint. So that's a bug that they fixed. We're waiting on it rolling out. I didn't see it in the 26.3 beta update that they did last week. So I don't know if we'll make it into 26.3 if we have to make wait for 26.4. But anyway, if any of you run providers are seeing or getting complaints from your customers of large implement Check if it's Safari. If so, it can probably be ignored for now.

48:00
Barry Pollard
There may be more bugs after this one, but you can't really see the wood for the trees at the minute, so be aware of that one. Next we have a load of Chrome updates. So in 1.4.4 we're launching a new origin trial for speculation rules. Pre render until script. That's a nice easier add on between prefetch and pre render. So again you might get request to measure this in rum. There's more details on that link in Chrome performance traces. So if you go to the performance panel and do a trace, we're starting to show soft navigations in there. Soft navigations API is still not available. We're still working on that because we're talking about tweaking it. So we don't want to actually launch it yet. We've just finished an origin trial there.

48:44
Barry Pollard
We're taking some feedback and moving forward with that and plus possibly another origin trial and another milestone or two. But the minute you can see Chrome's internal seeing that. So if you go to web.dev record a performance trace, it's an spa click around. You'll suddenly see a new soft LCP and a new soft nav for each click as you go there. So that's quite interesting to see that moving forward again. We'd love feedback on that. We are doing an update. This was someone from here.

49:17
Jase Williams
I've forgotten her name, who she works for.

49:21
Barry Pollard
But they're changing the CSS pixels in the layout shift API so you get a rect of where the picture was before and where actually shifted to. A lot of people use this, including ourselves for tools so you see like a purple diagram or. And you see it moving down. If you use that for any of your sort of tools of explanation to this, you will. You probably had to do a calculation if it was more than one device pixel to divide it by that because we for some stupid reason didn't use CSS pixels but used real pixels unlike every other web API platform on the web. So we fixed that. But you might have to change some of your calculations to stop effectively having to do that division by dpr. It won't affect cls, it won't affect any of things like that.

50:04
Barry Pollard
It's more for the, let's say overlay tools that people use. So LCP whenever it launched and INP and a few other ones, mostly for the paint ones. LCP presentation time is a thing that's known in. Sorry, paint time is a thing that's standardized across the web platform and it's roughly the same in Safari, Firefox and Chrome. And that's actually what Firefox and Safari report is LCP type and FCP and low off timings and that sort of thing. We in Chrome actually report a little bit later. We report what we called presentation time, which is after. So basically paint time is effectively kind of like whenever it passes off the main thread of the compositor and presentation times when the pixels actually are drawn on screen. So we have now, we are now including from 1, 4, 5 both time points.

50:58
Barry Pollard
So you can more accurately measure if you're. I don't know if you're getting complaints saying Chrome's slower than Safari. You can go in there and actually measure the like for like thing. Okay, it's not slower, it's the exact same. But Chrome is actually measuring later or it is slower and we can see now at least you can do there. To be honest, I expect most of them to be a few milliseconds difference there. So I don't think it's a huge thing. I think really for the nerds and dweebs amongst us that really care about this sort of stuff. But that's now two extra entries that you get in LCP and FCP and Luauth. We haven't put it into imp yet.

51:32
Barry Pollard
I think something we're looking to do at some point when we're waiting, we have to go through the standard process for that and the last one, personal one that I did. So device memory is a thing that says at the moment it says you got quarter of a gig, half a gig, two gigs, four gigs or eight gigs, and it's capped at those precise values. Nothing less, nothing more. For privacy reasons. This is a 7 year old API. Devices have got more RAM since it moved on and those particularly those lower value. So quarter of a gig, half a gig. It's very rare to see devices that. So we think they've actually become more of a privacy concern. And at the same time we sometimes want to know if devices have more than 8 gigs.

52:12
Barry Pollard
So some of the Chrome's AI APIs need 16 gigs, 32 gigs, very common on desktop and that sort of thing. So we're going to chop off the bottom two entries and add on the top two entries and you'll start to see new things reporting. I know a lot of ROM providers do measure by this and they can actually segment it and see AIMP is a lot worse on low memory devices than it is on high memory devices so you might lose some of that visibility. But honestly you don't have, I think if you look you wouldn't have that many beacons coming back for those very low values anyway. And now you'll get some great visibility of being able to segment that top class of what was only 8 gigs and above can now be 8, 16, 32 or above. That was scheduled for 146.

52:56
Barry Pollard
I've run into a few problems. Some websites are depending on this and are reacting badly whenever they see unexpected values like 16 so probably slip into 147. But anyway be prepared for seeing new values in there. So if you're hard coded your rum solution not to expect those and to reject other values because you think they should never be sent. They are going to start to be sent, so make sure and double check that or you have any bot detection things that check again for invalid values and make a wrong assumption that means they're bots and you might want to update that and that's it. So yeah, as I say, we didn't have a lot of time, so any questions, any of those, feel free to reach out to me.

53:37
Nic Jansma
Good whirlwind tour there, Barry. Thank you so much for putting that list together. Definitely a lot of PSA related stuff there. So thank you. All right, that brings us to time. Thank you everybody again. We'll be meeting March 11th. We have some ideas for that. If people want to present anything wrong, core vitals or interoper server timing headers, please let us know. Otherwise we'll see you then. Thank you. Cheers.

54:02
Karlijn Lowik
Bye bye.
