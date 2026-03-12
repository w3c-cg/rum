## Mar 11, 2026 | [RUMCG Meeting](https://www.google.com/calendar/event?eid=MmcwZ2p0OHNlajE5NDQ0Zmc5MWFhdmYycm4gY2xpZmZAc3BlZWRjdXJ2ZS5jb20)

## Agenda

* Interop 2026 updates (Nic)
* Unused Preload RUM (Yoav)
* Core Web Vitals (CWV) across the browsers (All)

## Admin

* Next meeting: April 8, 2026

## **General Summary**

* **Interop 2026 Progress**: Limited inclusion of key web performance features like Core Web Vitals impacts standardization efforts.
* **Browser Vendor Influence**: Feature exclusions relate to varying priorities among vendors, slowing web performance advancements via Interop.
* **Unused Preloads Proposal**: New RUM data proposal seeks to clarify unused preload impacts, aiding resource optimization for developers.
* **Core Web Vitals Insights**: Data shows discrepancies across browsers, especially in Safari, with ongoing bug fixes expected to improve reliability.
* **Community Collaboration Plans**: Future discussions will focus on data sharing, server timing, and bot detection to enhance web performance efforts.
* **Next Meeting Topics**: Anticipated subjects include bot detection, AI impacts on RUM data, and further analysis of Core Web Vitals.

## **Action items**

##### **Yoav Weiss**

* Refresh and update Chrome patches implementing unused preload and speculation reporting proposal; open a feedback issue in the new Web Performance repo to collect community input (20:26)

##### **Community members (including Karlijn Lowik, Barry Pollard)**

* Provide developer feedback and support for the unused preload/speculation proposal via the planned issue and Slack channels (24:47)

##### **Barry Pollard and Yoav Weiss**

* Add frequently asked questions (FAQs) to the proposal documentation regarding early hints, DNS prefetch, and preconnect exclusions and potential future support (28:27)

##### **Nic Jansma**

* Share RUM Archive data and analysis publicly; blog about data insights and methods for community access (55:33)

##### **Cliff Crocker**

* Produce detailed blog posts on Core Web Vital data findings and server timing header adoption to stimulate community discussion (55:34)

##### **Community members**

* Prepare for next meeting’s discussion on bot detection techniques impacting Core Web Vitals data quality and bot exclusion strategies (54:46)

## **Notes**

### **Interop 2026 Updates**

* Interop 2026 is progressing but excludes some key web performance features important to this community.
* **Core Vitals Progress Limited for 2026** (03:49)
* Interop focuses on aligning browser features across vendors through tests and implementations.
* Core Web Vitals inclusion last year drove significant progress, prompting today's discussion.
* Proposals to include CLS and scheduler APIs for 2026 were rejected, slowing new standardization on these fronts.
* Logan Frames also missed inclusion, indicating ongoing work is needed to push that forward.
* **Browser Vendor Priorities Affect Feature Inclusion** (06:13)
* Barry Pollard explained some features were excluded because not all browser vendors prioritize them equally.
* Despite exclusion in Interop, individual browsers like WebKit are working on related features like speculation rules.
* Vendors such as Mozilla have shown some interest, leaving room for these features to land later with or without Interop.
* This reality tempers expectations for big strides in web performance features via Interop in 2026\.
* **Community Monitoring of Browser Positions** (07:32)
* Cliff Crocker stressed the importance of tracking browser vendor positions on web performance features regularly.
* Keeping updated records helps coordinate efforts and funding for missing features, especially those not in Interop.
* The group discussed the need to refresh and maintain position statements, such as WebKit’s stance on CLS.
* This ongoing monitoring supports strategic planning and advocacy for desired web standards.
* **Safari's Hesitancy on CLS and Related Features** (08:20)
* Barry noted Safari has been hesitant on CLS due to measurement approach differences and cost concerns.
* Some WebKit contributors remain open, but priority remains low and doubts about necessity persist.
* Community contributions and real-world use cases could influence Safari’s eventual adoption.
* A request for a formal WebKit standards position on CLS is pending, highlighting uncertainty.

### **Unused Preloads and Speculation Reporting Proposal**

* A new proposal aims to provide accurate RUM data on unused preloads and navigation speculations to optimize resource usage.
* **Problem and Proposal Overview** (10:11)
* Yoav Weiss described the issue of many unused preloads triggering console warnings but lacking reliable RUM reporting.
* Current heuristics are unreliable and premature, causing confusion about resource usage and performance impact.
* The proposal intends to report used versus unused preloads and navigation speculations only when the page unloads.
* This approach helps developers measure the cost-benefit tradeoff of preloading and prefetching resources.
* **API Design Using Page Hide Event** (15:01)
* The proposal adds a speculations attribute to the page hide event to report preload usage and navigation speculation details.
* Reporting at page hide waits until the last moment, avoiding misleading early data that could cause wrong conclusions.
* It includes metadata such as resource attributes and speculation eagerness to guide optimization.
* Ongoing discussions focus on edge cases like cache expiration and cross-process reporting complexity.
* **Implementation Status and Community Support** (20:22)
* Chrome patches implementing this exist but are outdated and not yet landed, awaiting refreshed feedback.
* Yoav and Barry welcomed developer feedback to prioritize and push the feature forward.
* The group expressed strong interest and willingness to support the feature’s adoption.
* A new GitHub issue for feedback will be opened to centralize community input.
* **Scope Clarifications and Future Extensions** (28:01)
* The current focus excludes cheaper speculation types like preconnect and DNS prefetch but may add them later if successful.
* Early hints usage in link headers might be added to distinguish preload triggers in RUM data.
* Discussion emphasized balancing feature complexity with usefulness and avoiding unnecessary scope creep.
* The proposal avoids tying reporting to other APIs like Fetch Later to maintain flexibility.

### **Core Web Vitals Data Insights**

* Multiple RUM data sets reveal browser discrepancies, bugs, and evolving support impacting Core Web Vitals interpretation.
* **Safari Data Anomalies and Bug Reporting** (33:38)
* Erwin Hofman highlighted inflated INP numbers and abnormally low processing times in Safari data, traced to bugs.
* These issues mainly affect back/forward cache navigations and presentation delay metrics.
* Bug reports and fixes are in progress, expected in coming Safari releases.
* The current Safari INP data is unreliable for meaningful comparison until fixed.
* **Usefulness of INP Subparts for Diagnostics** (38:15)
* Barry Pollard questioned how valuable INP subparts are on aggregate versus individual interactions.
* Erwin explained subparts help narrow down where to look in DevTools, such as identifying long-running scripts or event listeners.
* The group noted INP subparts are messier than LCP subparts due to interaction variability but still useful for troubleshooting.
* Further discussion on INP metric utility and inclusion in public data sets is ongoing.
* **Cross-Browser LCP and INP Comparisons** (41:38)
* Cliff Crocker shared data showing Mac OS LCP trends with Safari performing slightly better on mobile than Chrome.
* INP data showed large deltas between Safari and Chrome, attributed to the known Safari bugs.
* Nic Jansma presented Impulse data showing traffic distribution with **23% Chrome desktop, 13% Chrome mobile, 20% Safari mobile, and 2.5% desktop Safari** (47:47).
* LCP support rollout dates correlate with improved data quality and narrowing performance variability, especially for Safari starting late 2023\.
* **Influence of Bot Traffic and Data Categorization** (53:38)
* Nic raised concerns about bot traffic inflating variability in performance metrics and misclassified user agents.
* The group agreed to hold a future discussion on bot detection and exclusion strategies to improve data accuracy.
* Collaboration between companies with bot management products was encouraged to share best practices.
* This effort aims to refine RUM data quality across browsers and platforms.

### **Future Topics and Community Collaboration**

* The group plans to continue exploring performance data, server timing, and bot detection with collaborative data sharing.
* **Server Timing Investigation Delayed** (55:32)
* Due to time constraints, server timing header adoption research will be deferred to the next meeting.
* Cliff Crocker plans to publish a blog post with findings to stimulate discussion.
* This topic ties into broader performance monitoring and optimization efforts.
* **Data Sharing and Transparency Encouraged** (55:55)
* Nic Jansma emphasized the value of sharing competing RUM data sets to provide a holistic industry perspective.
* The shared Collab data and upcoming blog posts aim to empower others to explore similar queries independently.
* This open approach fosters transparency and collective advancement across web performance communities.
* **Community Engagement to Support Proposals** (24:08)
* Karlijn Lowik encouraged the group to actively support the unused preload proposal through feedback and issue commenting.
* Barry Pollard and Yoav Weiss committed to creating centralized feedback channels for easier community involvement.
* Such engagement is critical to accelerate adoption and refine proposals based on real-world needs.
* **Next Meeting Focus Areas** (02:01)
* Potential future topics include bot and bad actor detection, AI browser impacts on RUM data, and further Core Web Vitals analysis.
* Volunteers to lead these discussions are welcomed to shape the agenda.
* This ensures continued relevance and responsiveness to community priorities.