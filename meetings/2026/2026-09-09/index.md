## Sep 9, 2026 | [RUMCG Meeting](https://www.google.com/calendar/event?eid=MmcwZ2p0OHNlajE5NDQ0Zmc5MWFhdmYycm4gY2xpZmZAc3BlZWRjdXJ2ZS5jb20)

## Agenda

* Keeping an Eye On:
  * [Declarative Performance Observer](https://github.com/explainers-by-googlers/declarative-performance-observer)
  * [NavigationTiming landing attribute](https://github.com/w3c/navigation-timing/pull/161)
* Barry's Bytes
* ABC revisit \- Agentic Browsers

## Admin

* Next meeting: October 14, 2026

## Key Takeaways

* **Agentic browsers complicate detection:** They mimic humans and popular user agents, making traditional methods ineffective and data on their traffic is lacking.
* **Detection standards lag behind:** Few agentic browsers self-identify; no standard API exists, hindering transparency and measurement efforts.
* **RUM data impact uncertain:** Ad/script blocking by agents skews metrics; traditional performance measures may lose relevance for non-human viewing.
* **Business impact rising:** Retailers see agent use growing; identifying agent sessions is vital for accurate SEO and performance analysis.
* **Performance measurement needs evolving:** Shift focus from browser speed to overall user experience across devices including AI agents.
* **Community split on advocacy:** Some doubt voluntary self-ID due to privacy/incentive issues; others urge pushing for standards to improve visibility.

## Minutes

### Agentic Browsers and Detection Challenges

The group explored the emerging category of agentic browsers, highlighting the complexity of detecting their presence and understanding their behavior on websites.

* **Agentic browsers blur human and automated interactions, complicating detection and measurement** (00:05)
  * These browsers range from AI-enhanced traditional browsers to fully autonomous agents controlling navigation and actions.
  * Many agentic browsers mask themselves by mimicking popular user agents like Chrome, making standard detection methods ineffective.
  * Detection attempts focus on behavioral patterns, header inconsistencies, TLS fingerprinting, or referer changes, but no definitive public data exists on their traffic volume.
  * Nic Jansma emphasized the difficulty in distinguishing agentic browsers from genuine users, especially when the agents behave like humans.
* **Current detection methods and standards fall short, raising questions about the need for self-identification** (00:15)
  * Most agentic browsers do not modify the user-agent string to signal their AI nature except for a few like Google Agent and Manus AI.
  * The WebAuth specification offers a public-key based verification system primarily designed for crawlers rather than agentic browsers.
  * The lack of a JavaScript API or standardized client hints for agent identification complicates measurement and transparency.
  * Discussion participants debated the potential and feasibility of advocating for agentic browsers to self-identify through user-agent tokens or headers.
* **The impact on Real User Measurement (RUM) data is uncertain but likely significant due to ad-blocking and script blocking by some agentic browsers** (00:19)
  * Agentic browsers often block ads and tracking scripts, resulting in underreported traffic and skewed analytics.
  * This raises questions about whether performance metrics like page load time or layout shifts remain relevant if no human is actively viewing the page.
  * The group debated if agents would care about performance or user experience metrics traditionally tracked, or if new metrics are needed.
* **Retail and SEO perspectives highlight the urgency to understand agentic browser behavior and its effect on business outcomes** (00:25)
  * Magnus Dahl pointed out that retailers see a shift where users increasingly rely on AI agents instead of traditional search, requiring sites to be agent-friendly.
  * Ryan Townsend stressed that co-browsing scenarios where agents actively interact with sites should encourage agent self-identification to maintain accurate RUM data.
  * Barry Pollard noted that some agent activity is more of a backend or SEO concern than strictly a RUM issue, emphasizing the evolving ways agents access content, including APIs replacing UI scraping.

### Strategic Implications for Web Performance and User Experience

The meeting framed agentic browsers as a major shift in how users interact with the web, calling for a broader rethinking of performance measurement focused on the speed of user experience rather than just browser-based web performance.

* **Sergey Chernyshev proposed shifting focus from web performance to measuring overall speed of user experience across all platforms** (00:45)
  * He traced the history from traditional web browsing to mobile devices and now to AI-driven interactions, emphasizing the evolving software layer on users’ devices.
  * He argued that RUM should abstract beyond browsers to measure user experience regardless of delivery method, including native apps and agentic browsers.
  * Sergey suggested that user experience metrics should remain central, but their collection methods and scope may need to adapt to new technology paradigms.
* **The group agreed measuring agentic browser impact on key business KPIs remains important but challenging** (01:00)
  * Ivailo Hristov emphasized the need to reliably identify agentic browsing sessions first to correlate performance with task success rates like checkouts.
  * Measuring speed and stability remains relevant since agents require stable environments to complete automated tasks, such as filling forms.
  * Sergey summarized that speed is a proxy for good user experience and ultimately ties back to business outcomes, regardless of the technology delivering it.
* **The conversation underscored the fluid and rapidly evolving nature of agentic browsers, complicating long-term measurement strategies** (00:40)
  * Barry Pollard highlighted uncertainty about the longevity and standardization of agentic browser identifiers given the fast pace of technology change.
  * Participants expressed skepticism about widespread adoption of self-identification due to privacy concerns, technical challenges, and incentives misalignment.
  * Mateusz Krzeszowiak warned that any signals or identifiers introduced might be spoofed, reducing their usefulness and complicating data trustworthiness.
* **Declarative performance measurement and new APIs were suggested as potential technical avenues to adapt to agentic browsing** (00:32)
  * Cliff Crocker proposed exploring Declarative Performance Observer to collect telemetry without relying on JavaScript execution, potentially useful for agentic contexts.
  * Nic Jansma agreed this could be a promising area to brainstorm further, indicating openness to evolving measurement techniques.

### Community Perspectives on Advocacy and Next Steps

The group debated whether the RUM community should actively push for standards around agentic browser identification and measurement or take a wait-and-see approach.

* **Concerns about the futility of advocacy given adversarial incentives and evolving techniques** (00:24)
  * Sergey Chernyshev compared the situation to bot detection arms races, doubting that agents would voluntarily self-identify unless incentivized.
  * Mateusz expressed pessimism that only “good actors” would comply, while “bad actors” would evade detection, limiting impact.
  * Karlijn Lowik argued that silence would be worse, advocating the community should still speak up to create some norms rather than give up.
* **Some see clear benefits in standardizing agent identification for visibility and optimization** (00:25)
  * Magnus Dahl advocated for simple detection methods like user-agent headers to better understand agent behavior and optimize websites accordingly.
  * Ryan Townsend emphasized identification especially in co-browsing scenarios to maintain accurate user and performance metrics.
  * Nic Jansma suggested incentives such as browsers wanting to report their agentic usage publicly or websites serving optimized content to agents.
* **Diverse views on how to categorize and respond to different agentic interactions** (00:36)
  * Barry Pollard outlined three agent categories: co-browsing assistive agents, crawling agents scraping data, and fully autonomous agents acting in the background.
  * He noted the complexity in reporting and measurement when agent activity mixes with human browsing.
  * The group acknowledged the need to differentiate these categories when considering measurement and standards.
* **Ideas for behavioral or rate-limit triggers to detect non-human patterns were proposed** (00:44)
  * Shubham Gupta suggested a “step counter” style approach where websites monitor unusual browsing behavior volumes and prompt for bot detection or rate limits.
  * This could provide a reactive mechanism for flagging agentic or automated traffic without relying solely on explicit self-identification.

### Technical and Measurement Considerations

The discussion touched on technical nuances in how agentic browsers interact with websites and the implications for measurement accuracy and instrumentation.

* **Agentic browsers use diverse methods to parse and interact with pages, affecting detection feasibility** (00:11)
  * Some agents crawl the accessibility tree or DOM to extract content precisely, while others rely on screenshots and image analysis.
  * Agents may also use simple HTTP fetches or headless browsers, each leaving different fingerprints.
  * This diversity complicates defining a one-size-fits-all detection or measurement approach.
* **Agentic browsers often disable or mask typical bot detection signals** (00:16)
  * They frequently hide WebDriver flags, modify JavaScript APIs, or suppress client hint headers to evade detection.
  * These factors reduce the effectiveness of traditional bot detection methods.
* **Network and TLS fingerprinting might offer additional clues but are limited in reliability** (00:16)
  * Agents running on residential IPs with standard Chrome TLS stacks are much harder to distinguish than cloud-based headless browsers.
  * The absence of standardized signaling makes behavioral analysis more important but also more complex.
* **The lack of public data on agentic browser traffic limits ability to assess impact** (00:18)
  * Nic Jansma noted no available public statistics on the volume or share of traffic generated by agentic browsers.
  * The discontinuation of some agentic browsers may suggest limited adoption but also consolidation into other products.
* **Potential for websites to adapt content delivery based on agent signals to optimize performance and resource use** (00:42)
  * If agents self-identified, sites could serve simplified or markdown-style data to reduce CPU and bandwidth consumption.
  * This would create incentives for agents to identify themselves to improve efficiency and user experience.

### Meeting Logistics and Future Planning

The group concluded with logistical notes and plans for upcoming meetings.

* **Next RUM Community Group meeting scheduled for October 14, ahead of W3C TPAC** (00:04)
  * This meeting provides an opportunity to discuss and coordinate topics relevant to agentic browsers and interoperability.
  * Members were encouraged to propose agenda items for the next session.
* **Recording and participation protocols confirmed** (00:02)
  * The meeting was recorded with participant consent, allowing review and documentation of discussions.
  * New participants were welcomed and invited to contribute to ongoing brainstorming.
* **Thanks and closing remarks emphasized the value of ongoing dialogue** (01:02)
  * Nic Jansma thanked participants for their input and encouraged continued engagement on this rapidly evolving topic.
  * The session ended with agreement to revisit these discussions as technology and community needs develop.

## Action items

##### **Nic Jansma**

* Share meeting recording and presentation deck related to Agentic browsers with the group (03:43)
* Prepare agenda for the October 14 meeting, focusing on Agentic browsers and potential interop topics (04:55)
* Open a ticket to brainstorm use cases for Declarative Performance Observer related to agentic browsers (33:35)

##### **Sergey Chernyshev**

* Prepare and deliver a follow-up presentation expanding on the concept of speed of user experience beyond browsers, including native apps and agentic agents (45:15)

##### **Group**

* Continue collecting community input and experiences about detection and impact of agentic browsers on Real User Monitoring data (20:35)
* Explore possible advocacy or standards proposals for agentic browsers self-identification mechanisms such as user agent tokens, client hints, or JavaScript APIs (20:35)

##### **Shubham Gupta**

* Consider ideas for behavioral detection or rate-limiting approaches based on non-human request patterns to identify automated browsing agents (44:50)

##### **Karlijn Lowik**

* Provide further retail use cases and feedback on preferred detection methods for agentic browsers (25:30)

