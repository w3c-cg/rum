## May 13, 2026 | [RUMCG Meeting](https://www.google.com/calendar/event?eid=MmcwZ2p0OHNlajE5NDQ0Zmc5MWFhdmYycm4gY2xpZmZAc3BlZWRjdXJ2ZS5jb20)

## Agenda

* Firefox browser updates (Andrew)  
* Chrome browser updates (Barry)

## Admin

* Next meeting: June 10, 2026

## **General Summary**

* **Chrome's LCP metric updates improve cross-browser comparisons**: New presentation time introduced for better alignment with Firefox and Safari measurements.  
* **Device Memory API limits expanded**: Memory caps increased, affecting performance metrics and requiring RUM providers to adjust analyses.  
* **Soft Navigation API enhancements aid SPA tracking**: Recognizes incremental paints, simplifies SPA performance measurements, resets core metrics for better clarity.  
* **Measurement challenges for SPAs discussed**: Soft navigation complicates user-experience metrics, highlighting need for new user-facing metrics.  
* **Firefox introduced caching and resource timing features**: These enhancements aim to unify caching and improve performance measurement consistency across browsers.  
* **Future meetings to focus on polyfills and coordination**: Community interest in aligning measurement standards while addressing browser support for new APIs.

## **Notes**

### **Browser Performance Metrics and Measurement Updates**

* This session focused on recent browser changes impacting performance metrics, with an emphasis on Chrome’s evolving APIs and measurement nuances.  
* **Chrome introduced presentation time for performance entries to improve cross-browser LCP comparisons** (04:31)   
  * Chrome now provides both paint time and presentation time for Largest Contentful Paint (LCP), enabling better alignment with Firefox and Safari metrics.   
  * Presentation time is slightly later than paint time, reflecting actual pixels shown on screen, clarifying millisecond differences in measurement.   
  * This update aims to reduce confusion when comparing LCP across browsers and improve interoperability in real user monitoring (RUM) data.   
  * These changes currently apply to most performance metrics except Interaction to Next Paint (INP), which is still under specification work.  
* **Chrome adjusted LCP candidate admission to align with spec and emit more entries** (06:08)   
  * Chrome now emits LCP candidates more aggressively, including cases where a large image appears shortly after text content, increasing observed LCP entries.   
  * This change matches behavior in Firefox and Safari, ensuring more consistent LCP data across browsers.   
  * Users may notice more intermediate LCP candidates, but the final LCP remains the key metric for analysis.  
* **Device Memory API limits expanded, affecting memory-based performance signals** (07:16)   
  * Chrome raised device memory caps from 8GB to include 16GB and 32GB, reflecting improvements in desktop hardware.   
  * Lower device memory categories (0.25GB and 0.5GB) are phased out in modern Chrome, impacting memory-related performance segmentations.   
  * RUM providers should expect to see higher memory values and adjust their analysis accordingly to capture more accurate device profiles.   
  * This change also raises some privacy considerations due to more granular device memory exposure.  
* **Soft Navigation API origin trial extended with improvements and plans for final launch in Chrome 150** (12:35)   
  * The API now distinguishes two entries: Interaction Contentful Paint (ICP) for individual interactions and a soft navigation entry measuring the largest paint associated with navigations.   
  * ICP tracks incremental paints only if they are larger than previous ones, supporting measurement of soft navigations typical in single-page applications (SPAs).   
  * The soft navigation entry resets core metrics like INP and CLS and provides a simplified way to track navigation-related performance in SPAs.   
  * Barry Pollard emphasized this API simplifies implementation for Web Vitals libraries and RUM providers, reducing complexity in SPA measurement.  
* **Data from soft navigation measurement reveals SPA performance nuances and impacts on Core Web Vitals** (16:52)   
  * Measurement shows initial hard navigations take significantly longer (e.g., 4 seconds) compared to much faster subsequent soft navigations (e.g., 1.5 seconds).   
  * Current Core Web Vitals reports underestimate SPA performance by only measuring hard navigations, leading to inflated LCP values.   
  * About 4–8% of origins, including highly popular sites like YouTube and Facebook, contribute most soft navigations, affecting aggregate metrics disproportionately.   
  * Adjusting measurement to include soft navigations drastically improves LCP pass rates for these sites, sometimes from 20% to nearly 99%.   
  * For the majority of websites, changes in Core Web Vitals from soft navigation measurement are negligible.  
* **Chrome launched lazy loading for video and audio elements, improving offscreen media load performance** (11:01)   
  * The loading="lazy" attribute, previously available for images and iframes, is now supported for video and audio tags in Chrome.   
  * This feature defers media loading until near viewport visibility, helping clients reduce initial load and improve performance metrics.   
  * Barry credited external contributions, such as Squarespace’s team, for this feature, highlighting community collaboration.  
* **Container Timing API introduced to measure rendering of individual page components** (25:53)   
  * Developed by Bloomberg and Agalia, this API reports paints within defined container elements, enabling granular insights into component render timings.   
  * Unlike LCP that measures the largest contentful paint on the entire page, container timing tracks multiple paints within individual containers, reflecting component readiness.   
  * This API is useful for complex pages with many components and is currently in origin trial.   
  * RUM providers face challenges activating this measurement from third-party scripts, and first-party origin trials are recommended until launch.

### **Strategic Implications for Real User Monitoring (RUM) and SPA Measurement**

* The group discussed the challenges and opportunities of measuring SPA performance accurately and consistently across browsers.  
* **Soft navigation measurement addresses SPA blind spots but complicates interpretation of user experience metrics** (37:18)   
  * Barry Pollard noted that soft navigation is not directly a user-exposed metric but a technical slice of the timeline for tracking interactions and paints.   
  * It lacks a direct equivalent to traditional metrics like Time to First Byte (TTFB), making communication of results to customers challenging.   
  * The group discussed whether new user-facing metrics like “soft first tint” or “soft LCP” might emerge to better capture SPA user experience.   
  * Sergey Chernyshev highlighted that TTFB is not currently instrumented for soft navigations and is complex due to caching and SPA behavior.  
* **Complexity of SPA instrumentation calls for clear division of responsibility across browser vendors, RUM providers, and product teams** (44:17)   
  * Sergey proposed the RUM Community Group define instrumentation steps and responsibilities: browsers provide low-level metrics, RUM vendors aggregate, and product teams contextualize data.   
  * This layered approach would clarify investment needs and help teams focus efforts on meaningful user experience measures.   
  * Barry agreed that browser APIs provide flexibility but may be too complex for typical developers, and higher-level metrics remain important for broad adoption.  
* **Polyfill and cross-browser support for new APIs is uncertain, requiring community alignment** (47:05)   
  * Cliff Crocker suggested continuing the discussion in future meetings focusing on polyfills and fallback strategies to support browsers lacking soft navigation APIs.   
  * Barry explained Chrome is unlikely to provide a polyfill for soft navigation due to its complexity and caveats.   
  * The group considered strategies such as showing Chrome’s enhanced metrics distinctively or waiting for other browsers to adopt similar APIs.   
  * This discussion underscores the challenge of evolving web performance measurement while maintaining consistency across platforms.

### **Firefox Performance Enhancements and API Contributions**

* Firefox shared recent engineering accomplishments relevant to performance and measurement.  
* **Firefox prototyping HTTP caching extension to unify cache entries irrespective of URL parameters** (31:10)   
  * Andrew Creskey explained Firefox’s work on the no-vary Search caching extension, allowing servers to signal ignoring URL parameters for caching.   
  * This reduces redundant cache entries, improving cache hit rates and potentially speeding up resource delivery.   
  * The feature has passed web platform tests and is expected in Firefox Nightly soon.   
  * Collaboration spans multiple teams: DOM, networking, dev tools, and performance.  
* **Resource Timing Level 3 interim response timestamps added to Firefox 152** (34:27)   
  * This feature provides timing for interim and final HTTP responses, aiding detailed performance analysis such as early hints.   
  * It will be baseline available in Firefox release in two months, aligning Firefox with similar capabilities in Chrome, enhancing cross-browser measurement consistency.  
* **Happy Eyeballs V3 concurrency improvements to optimize connection establishment** (34:46)   
  * Firefox consolidated connection logic into a rust-based state machine that races connection methods (IPv4, IPv6, QUIC, TCP) to select the fastest.   
  * This leads to higher frequency of HTTP/3 cold connections and faster time to first byte, improving perceived performance.   
  * The feature is experimental and will undergo testing before broad deployment.   
  * Andrew anticipates noticeable improvements in Firefox RUM data reflecting these changes.

### **Discussion on Future Measurement Directions and Community Coordination**

* The meeting concluded with reflections on measurement complexity and coordination needs.  
* **Clarifying the meaning and communication of soft navigation metrics remains an open challenge** (37:18)   
  * The group acknowledged the difficulty in translating soft navigation data into user-friendly metrics.   
  * There is recognition that current APIs provide valuable low-level data but require interpretation layers for product teams.   
  * The discussion emphasized the need for ongoing collaboration between browser vendors, RUM providers, and product teams to evolve metrics effectively.  
* **Community interest in continuing deep dives and aligning measurement standards is strong** (47:05)   
  * Cliff Crocker proposed dedicating future meetings to polyfill strategies and cross-browser support discussion.   
  * Barry Pollard volunteered to participate actively and indicated Chrome’s approach to API rollouts and limitations on polyfills.   
  * The group sees value in sharing knowledge and coordinating API adoption to minimize fragmentation and maximize measurement consistency.  
* **Recognition of external contributions highlights community-driven innovation** (11:59 and 26:59)   
  * Barry Pollard credited external contributors for key features like lazy loading media (Squarespace) and Container Timing API (Bloomberg and Agalia).   
  * This underscores the open, collaborative nature of browser performance improvements and the importance of community involvement in advancing web standards.

### **Meeting Logistics and Next Steps**

* The meeting overcame initial technical difficulties and set plans for upcoming sessions.  
* **The RUM Community Group will meet next on June 10 with a focus on OpenTelemetry and related topics** (00:29)   
  * Cliff Crocker confirmed plans to invite Jared Freeze, the OpenTelemetry web SDK maintainer, for an educational talk.   
  * Follow-ups on AI bots and crawlers may also be revisited in future sessions.   
  * Nic Jansma expressed commitment to improve meeting access to avoid early joining delays.  
* **Presentation materials and recordings will be shared for reference and further study** (16:52)   
  * Barry Pollard offered to distribute slides and video links from the Chromium BlinkOn conference talks.   
  * These resources provide deeper insights into soft navigation data and Chrome’s performance API roadmap.  
* **The group showed active engagement with lively chat and Q\&A segments to clarify technical points** (37:00)   
  * Questions addressed Firefox’s CLS support plans, TTFB measurement challenges for soft navs, and API spec details.   
  * The session demonstrated the value of real-time dialogue in refining understanding and driving alignment across browser teams and RUM providers.

## **Action items**

##### **Nic Jansma**

* Ensure permissions and access issues are resolved to avoid joining delays in future meetings (00:00)  
* Organize and schedule next meeting on June 10th, including topics such as OpenTelemetry and AI bots follow-up (01:49)

##### **Barry Pollard**

* Share slides and links for BlinkOn talks related to soft navigation APIs and collected data (15:40)  
* Monitor and possibly update soft navigation API shape before Chrome 150 release; communicate changes to RUM implementers (24:20)  
* Stay engaged with the community on feedback for Container Timing API implementation and cross-browser adoption (27:00)  
* Follow up on spec changes related to resource timing query parameters and coordinate with other browser engineers like Andrew (32:40)  
* Inform the group about decisions regarding measuring ICP paints beyond largest paints and API nesting changes (43:00)  
* Participate in ongoing discussions about polyfill and cross-browser compatibility for soft navigation API (47:45)

##### **Andrew Creskey**

* Note and investigate spec changes about params format for no-vary Search caching extension compatibility (32:35)  
* Provide updates or follow-up on Firefox CLS support roadmap (39:30)

##### **Community Participants**

* Prepare for potential future discussion on SPA-specific instrumentation details and polyfill strategies (47:00)  
* Contribute feedback on soft navigation API and speculation measurement proposals (29:30)

## Open Questions

* **Metric Representation**: How to describe soft navigation metrics to users/customers? Owner: group discussion  
* **API Design**: Measure all paints or only larger paints in soft navigation API? Owner: Chrome team  
* **Cross-Browser Support**: How to polyfill/support soft navigation API in other browsers? Owner: community and browser vendors

