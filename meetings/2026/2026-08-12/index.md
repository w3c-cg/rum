## Aug 12, 2026 | [RUMCG Meeting](https://www.google.com/calendar/event?eid=MmcwZ2p0OHNlajE5NDQ0Zmc5MWFhdmYycm4gY2xpZmZAc3BlZWRjdXJ2ZS5jb20)

## Agenda

* Keeping an Eye On:  
  * [Declarative Performance Observer](https://github.com/explainers-by-googlers/declarative-performance-observer)  
  * [NavigationTiming landing attribute](https://github.com/w3c/navigation-timing/pull/161)  
* Barry's Bytes  
* ABC revisit \- Agentic Browsers

## Admin

* Next meeting: September 9, 2026

## Key Topics Discussed

### 1\. Declarative Performance Observer \[02:45\]

A proposal from Google's team to add HTTP header-based performance data reporting without requiring JavaScript. Key benefits include:

* Ability to measure page abandons before JavaScript loads  
* Potential support for ad-blocker scenarios  
* Post-header, pre-JavaScript telemetry gap closure

**Discussion points:** Challenges around data reconciliation between declarative and JavaScript-based reporting, and the need for flexible dimensions like session IDs.

### 2\. Navigation Timing Landing Attribute \[08:40\]

A proposal from Yoav to add a "landing" attribute to indicate whether a page is the first navigation in a tab/session.

**Value:** Helps segment RUM data between first visits and subsequent navigations, which have vastly different performance characteristics. Currently, RUM solutions use heuristics like referrer checks and session cookies.

**Status:** The original PR was very basic; needs further development and community input on definition and implementation.

### 3\. Soft Navigations \- Now Live in Chrome \[19:46\]

Barry Pollard presented the long-awaited soft navigation feature, now available in Chrome 151 (unflagged and stable). This addresses SPAs where route changes weren't previously measured.

**Key capabilities:**

* Performance Soft Navigation API triggers on click \+ URL update \+ paint  
* New Interaction Contentful Paint (ICP) metric for soft nav paint timing  
* Soft LCP and soft FCP now measurable  
* Web Vitals v6 includes support (opt-in flag required)

**Important caveats:**

* **Chromium-only** — No Firefox/Safari support yet (no ETA)  
* Browser's soft nav definition may differ from framework definitions  
* Hard metrics change when including soft navs (overall scores improve)  
* Soft navs are fundamentally different from hard navs (resources already cached)

**DevTools support:** Chrome DevTools and Chrome 152 show soft nav metrics; CrUX support coming with experimental data.

**Next steps:** Barry encouraged the community to test, provide feedback, and advocate for cross-browser support.

### 4\. Fetch Later Fix \[18:50\]

A fix for fetch later on the last tab of a browser (Chrome 153\) ensures beacons send even when closing the browser, making it a truly reliable beacon mechanism.

## Action Items

* Nic to add links and summary of declarative performance observer discussion to the explainer  
* Nic to post thoughts on the landing attribute PR to advance the discussion  
* Community to test soft navigations and provide feedback  
* September meeting (Sept 9\) to focus on agentic browsers

## 

## Attendance

Strong turnout with 28 participants at one point, including new and returning members.

