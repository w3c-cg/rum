## Apr 8, 2026 | [RUMCG Meeting](https://www.google.com/calendar/event?eid=MmcwZ2p0OHNlajE5NDQ0Zmc5MWFhdmYycm4gY2xpZmZAc3BlZWRjdXJ2ZS5jb20)

## Agenda

* Performance Timeline option per-paint ([performance-timeline\#228](https://github.com/w3c/performance-timeline/issues/228)) (Michal)  
* TAO/ServerTiming header adoption updates (Cliff)  
* RUM ABCs (AI, Bots and Crawlers) (Philip et. al)

## Admin

* Next meeting: May 13, 2026

## **General Summary**

* **Performance Observer API Enhancements:** Proposal to sort performance entries by end time for better user experience and reduced developer effort.  
* **Per-Paint Reporting Mode:** New option to cluster all entries related to a paint together, improving context and reducing asynchronous issues.  
* **Server Timing Header Adoption:** About **70% of top 10,000 sites** use Server Timing headers, significantly influenced by CDNs like Akamai and Cloudflare.  
* **AI Bots Traffic Analysis:** AI bots represent only **0.005% of beacons**, but exhibit distinct behaviors compared to human users, posing identification challenges.  
* **Next Steps on Ongoing Discussions:** Plans to continue conversations on AI bots and Server Timing headers through Slack for further insights and feedback.

## **Action items**

##### **Michal Mocny**

* Provide additional feedback and continue work on performance observer proposals and participate in the new origin trial related to soft navigation features (29:03)

##### **Cliff Crocker**

* Complete and share a blog post detailing Server Timing header adoption research and explore use cases and standards for community discussion (34:16)  
* Gather further feedback and data on Server Timing usage patterns across CDN and other providers to support standardization efforts (42:47)

##### **Philip Tellis**

* Continue analyzing AI bots and crawlers data and refine bot detection methodologies with input from the bot defense team (44:50)

##### **All Participants**

* Engage in ongoing AI bot and crawler identification discussion on Slack for deeper exploration and planning next meeting agenda items (56:54)

## **Notes**

### **Performance Observer API Enhancements**

* The team focused on addressing issues in the Chromium performance observer API to improve how performance entries are ordered and reported, aiming to make event timing more intuitive and clustered around user-visible moments.  
* **Proposal to Change Sorting Order to End Time for Consistency** (03:00)   
  * Michal Mocny detailed problems with current sorting by start time causing confusing reorderings, especially with resource timing and event timing entries.   
  * Sorting by end time would better reflect user-visible event completion order, improving developer understanding and clustering of related events.   
  * This change targets making output order consistent regardless of buffering or clustering in the observer callback.   
  * The intent is to reduce developer effort in building custom sorting and clustering logic client-side.  
* **Introduction of Per-Paint Reporting Mode for Clustering Events** (13:00)   
  * Michal proposed a new performance observer option that clusters all entries related to a single paint together in one callback, helping attribution across layout shifts, resource completions, and soft navigations.   
  * This mode would reduce the asynchronous reordering and re-clustering developers currently face, aiding better temporal grouping.   
  * The option could also take the form of a new API returning grouped entries by paint.  
* **Compatibility and Implementation Caution Raised by Team** (16:00)   
  * Nic Jansma and Yoav Weiss expressed concerns about breaking existing scripts that might rely on current ordering, especially bot detection scripts.   
  * Michal suggested the new clustering mode could be opt-in to avoid breaking existing consumers, with default behavior maintained.   
  * Yoav noted the original use of sorting by start time was to reduce implementation-defined behavior and avoid reliance on ordering, so any change should be carefully verified.  
* **Use Case Validation and Real-World Developer Feedback** (20:00)   
  * Andy Davies shared experience with long animation frame research, confirming the problem with out-of-order events and the desire for predictable ordering.   
  * Sergey Chernyshev questioned the impact on real user monitoring (RUM) beacon frequency and performance overhead; Michal clarified the proposals do not increase beacon emissions by default but could invoke callbacks more frequently in clustered fashion if opted in.   
  * The team debated whether sorting should be done by the browser or client libraries, leaning toward giving developers options to optimize for their needs.  
* **Upcoming Origin Trial and Next Steps** (29:00)   
  * Michal announced a new origin trial for soft navigation timeline slicing had started, encouraging participation.   
  * The discussion highlighted a need for further exploration and possible API iterations based on developer feedback and compatibility audits.

### **Server Timing Header Adoption and Use Cases**

* Cliff Crocker presented research showing widespread adoption of Server Timing headers by top websites, driven largely by CDNs, and highlighted the need to standardize naming and use cases.  
* **High Adoption Rates Among Top Sites Driven by CDNs** (30:00)   
  * Cliff found roughly **70% of the top 10,000 sites** emit Server Timing headers, with a strong contribution from **Akamai, Cloudflare, Amazon, and Shopify**.   
  * Fastly was noted as not enabling these headers by default yet but could opt in.   
  * This adoption is seen as transformational for performance monitoring and backend insight.  
* **Diverse Usage Patterns and Emerging Header Values** (32:30)   
  * The Server Timing headers included common CDN metrics like cache hit ratio and origin response times, but also less conventional uses like passing W3C trace headers and image optimization details.   
  * Cliff emphasized the importance of understanding actual use cases to inform potential standardization or naming conventions.  
* **Challenges with Creating a Unified Registry** (34:00)   
  * Nic Jansma and Sergey Chernyshev noted the difficulty in creating a definitive registry due to the custom nature of many Server Timing metrics and potential semantic changes over time.   
  * Yoav Weiss suggested marking which metrics are “frozen” or guaranteed stable versus experimental to manage expectations.  
* **Recommendations Focused on Better Alignment and Best Practices** (39:00)   
  * Cliff advocated for community best practices and naming alignment rather than strict enforcement, aiming to ease integration by RUM providers and users.   
  * Sergey highlighted the value in documenting use cases beyond timing, such as labeling or categorizing resources via Server Timing.  
* **Analytical Framing and Data Presentation Approaches** (42:50)   
  * Cliff and Michal discussed the merits of ranking sites by origin rank versus other methods when analyzing adoption, noting origin rank is a useful, logical frame but not yet widespread.   
  * This framing helps balance the influence of top sites versus long-tail origins in ecosystem measurements.

### **AI Bots and Crawlers Traffic Analysis**

* Philip and Nic Jansma led a discussion on AI bots and crawlers, revealing that while their traffic volume is very small in current RUM data, their behavior patterns differ significantly from human users, raising questions about identification and measurement.  
* **AI Bots Represent a Tiny Fraction of Overall Traffic** (44:00)   
  * The team found that **only 0.005% of beacons** come from AI bots, a small share but still significant in absolute numbers.   
  * AI bots mostly do not execute JavaScript or send impulse beacons, limiting visibility in RUM data.  
* **Four AI Bot Types with Distinct Behaviors and Traffic Patterns** (46:30)   
  * Training crawlers gather large datasets for model training and run periodically.   
  * Search crawlers power AI search agents and also run periodically.   
  * AI fetchers perform simple, stateless tasks triggered by user requests.   
  * AI agents act like chatbots with memory and multiple actions, triggered less frequently but with complex interactions.  
* **Bots Skew Toward Full Page Loads Unlike Human Users** (48:30)   
  * Training and search crawlers show a **95-98% full page view** rate versus 2-5% SPA usage.   
  * Human traffic shows roughly a **70-30 split** favoring full page views over SPAs.   
  * AI agents behave somewhat closer to humans with an **88-12 split**.  
* **Identification Challenges and Measurement Questions** (50:40)   
  * Nic Jansma raised issues with IP and ASN-based identification being unreliable; some well-behaved bots identify via user agent strings, but many do not share IP info.   
  * Agentic browsers that act on users’ behalf do not change user agents, making detection difficult.   
  * The team discussed whether AI agents care about performance and bounce rates differently from humans.  
* **Future Trends and Strategic Considerations** (54:00)   
  * Yoav Weiss foresaw more diverse AI agent types emerging with varying session interactivity and performance sensitivity, requiring new measurement approaches.   
  * Nic Jansma noted that AI agent traffic is currently too small to segment meaningfully but recommended ongoing monitoring over time.   
  * Sergey Chernyshev emphasized the importance of distinguishing real user data from bot traffic and whether some bots should be treated as proxies for user activity.  
* **Next Steps to Continue the Conversation** (56:30)   
  * The group agreed to move deeper discussions to Slack or other channels to gather further ideas and plan future meetings.   
  * There was consensus on the value of developing RUM implementer guidance for handling bots and AI agents in measurement.

### **Meeting Logistics and Scheduling**

* The meeting set a clear agenda, confirmed attendance, and planned the next meeting, ensuring continuity and preparation for upcoming discussions.  
* **Agenda Covered Performance Observer Proposals, Server Timing, and AI Bots** (01:33)   
  * Nic Jansma outlined speakers and topics, including Michal on performance observer issues, Cliff on Server Timing header research, and Philip on AI bots and crawlers.   
  * The plan included a less formal discussion on AI bots depending on time remaining.  
* **Next Meeting Scheduled for Wednesday, May 13th** (01:33)   
  * The group agreed on the date for the next meeting, the second Wednesday of the month.   
  * Agenda for the next meeting was left open, potentially informed by outcomes of current discussions and updates from browser teams.  
* **Attendance and Meeting Tools Confirmed** (01:37)   
  * Nic confirmed the presence of key participants and noted some technical logistics such as Fireflies recording.   
  * The meeting proceeded smoothly with active engagement from attendees.  
* **Encouragement for Participation in Origin Trial** (29:02)   
  * Michal reminded attendees about the new origin trial for soft navigation timeline slicing, encouraging involvement to help shape the API’s future.

### **Key Speaker Insights and Perspectives**

* Several speakers contributed valuable experience, reasoning, and strategic views that shaped the meeting’s direction and highlighted real-world challenges.  
* **Michal Mocny Advocated for More Predictable Performance Entry Ordering** (03:00)   
  * He emphasized the complexity developers face with current buffering and sorting, pushing for API options that reduce client-side complexity and improve clarity.   
  * He framed the importance of event timing order reflecting actual user experience impact.  
* **Andy Davies Shared Practical Developer Experience** (20:35)   
  * Andy confirmed encountering out-of-order events in product bugs and expressed desire for predictable ordering to simplify UI displays and debugging.   
  * He also discussed polyfills in other browsers and the importance of cross-browser consistency.  
* **Cliff Crocker Highlighted CDN Influence on Server Timing Adoption** (30:00)   
  * Cliff credited major CDNs for accelerating adoption, noting their role in pushing Server Timing headers into widespread use.   
  * He stressed the need to understand use cases to guide standardization and naming conventions.  
* **Philip and Nic Jansma Framed AI Bot Categorization and Measurement Challenges** (46:30)   
  * They laid out a taxonomy of AI bots and agents, clarifying behavioral differences and implications for RUM data validity.   
  * Nic posed key questions about identification and measurement strategy, opening the floor for broader discussion.  
* **Yoav Weiss Brought a Forward-Looking View on AI Agent Diversity** (52:30)   
  * Yoav anticipated different AI agent types with distinct performance profiles and interaction models, signaling future measurement challenges.   
  * He supported providing developer options in the performance observer API to handle diverse sorting needs.  
* **Sergey Chernyshev Emphasized Data Integrity and User Experience Accuracy** (54:45)   
  * Sergey highlighted the need to filter bot traffic to protect real user experience measurement, and to differentiate bots acting on behalf of users versus organizational crawlers.   
  * He called for RUM implementer documentation addressing these nuances.

### **Process and Collaboration Improvements**

* The meeting fostered a collaborative environment encouraging ongoing dialogue, experimentation, and shared best practices to improve web performance monitoring.  
* **Open Questions Invited Broader Team Input** (11:45)   
  * Michal invited participants to share if they had encountered out-of-order event timing issues, seeking real-world validation.   
  * The group shared experiences and concerns, deepening understanding of the problem space.  
* **Opt-In API Options as a Path to Safe Evolution** (27:00)   
  * The team leaned toward adding opt-in sorting and clustering options to allow gradual adoption without breaking existing users.   
  * This approach balances innovation with backward compatibility.  
* **Call for Registry or Documentation of Server Timing Use Cases** (34:00)   
  * Nic and Cliff supported creating a community resource listing common Server Timing headers and their meanings to ease integration.   
  * Challenges around semantics and stability were acknowledged, recommending a best practice rather than strict standard.  
* **AI and Bot Identification to Continue in Slack** (56:50)   
  * Due to time constraints, the group agreed to move deeper AI bot discussions to Slack for wider input and preparation for future meetings.   
  * This ensures ongoing engagement and cross-team collaboration on emerging challenges.  
* **Encouragement of Participation in Origin Trials and Feedback Cycles** (29:00)   
  * Michal urged team members to join the soft nav origin trial, ensuring that real-world feedback shapes API development.   
  * This reflects a process of iterative improvement driven by developer experience.

