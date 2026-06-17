## Jun 10, 2026 | [RUMCG Meeting](https://www.google.com/calendar/event?eid=MmcwZ2p0OHNlajE5NDQ0Zmc5MWFhdmYycm4gY2xpZmZAc3BlZWRjdXJ2ZS5jb20)

## Agenda

* OpenTelemetry and RUM (Jared)

## Admin

* Next meeting: August 12, 2026

## **General Summary**

* **OpenTelemetry Browser SIG Established:** Focused on front-end observability, tackling gaps in existing OTEL implementations.  
* **Vendor-Agnostic Data Standards:** Introduction of standardized semantic conventions to unify naming and support flexible telemetry setups.  
* **Efficient SDK Design:** SDK optimized for small size, sending compressed data frequently while supporting multiple backend endpoints.  
* **Challenges with Async Context:** Lack of proper propagation limits tracking user interactions across browser events and network requests.  
* **Impact of AI Bot Traffic:** AI traffic growth poses challenges for telemetry accuracy, requiring improved detection methods and strategies.  
* **Community Engagement Opportunities:** Open participation in OTEL SIGs invites collaboration and shared contributions to enhance observability practices.

## **Notes**

### **OpenTelemetry Browser Implementation and Standards**

* The group advanced understanding and collaboration on OpenTelemetry (OTEL) browser instrumentation to standardize front-end observability with back-end systems.  
* **OTEL Browser SIG Established to Address Front-End Gaps** (04:24)   
  * Jared Freeze described the new browser special interest group (SIG) created to focus on browser-specific OTEL instrumentation, addressing a gap where backend OTEL was mature but browser support was minimal.   
  * The browser SIG maintains its own repo, meetings, and Slack, enabling focused development on lightweight, tree-shakeable SDKs ideal for web environments.   
  * The instrumentation targets spans like Fetch, XHR, server timing, user actions, and web vitals, with ongoing work on soft navigation instrumentation.   
  * This work aims to ensure compatibility with backend OTEL data to allow cohesive cross-platform observability.  
* **Standardized Semantic Conventions to Enable Vendor-Agnostic Data** (15:38)   
  * The SIG is contributing towards formal semantic conventions for browser telemetry keys (e.g., page URL, fetch URLs) to unify naming across vendors, reducing fragmentation.   
  * Jared noted the need for distinct prefixes (like browser.) to separate browser-specific data from mobile or backend conventions, supporting unified but segmented datasets.   
  * The goal is to allow interchangeable use of OTEL SDKs and instrumentation from multiple vendors in the browser environment.   
  * This standardization fosters no vendor lock-in, enabling organizations to switch backends or combine multiple telemetry collectors flexibly.  
* **SDK and Transport Design for Web Constraints and Efficiency** (08:06)   
  * Jared emphasized the focus on small bundle size due to browser constraints, which influenced the decision to omit metrics support in the initial SDK version to keep it lightweight.   
  * OTLP data is sent as compressed JSON (gzip), with batch processors sending telemetry every 3–5 seconds or immediately for exceptions, balancing network efficiency and freshness.   
  * The SDK supports multiple simultaneous backend endpoints, enabling A/B testing or backup telemetry streams without code changes.   
  * The collector provides extensibility for sampling, PII removal, and version translation, allowing customization per deployment.  
* **Challenges Around Async Context and Page Exit Handling** (45:34)   
  * Jared identified the lack of Async context propagation in browsers as a major limitation, preventing precise linkage of user interactions (clicks) to subsequent network requests or events.   
  * Zone.js was discussed as a workaround but is large and appears abandoned, so native browser proposals like Async Context or Chromium’s task attribution are being monitored.   
  * Proper Async context would enable accurate trace parent-child relationships within single-page apps and micro frontends, improving observability fidelity.   
  * Page exit telemetry sending remains problematic, especially on iOS, requiring polyfills for soft navigation and more reliable beacon APIs.

### **Strategic Rationale and Benefits of OpenTelemetry Adoption**

* The meeting clarified the strategic value of OTEL for unifying telemetry data across frontend and backend, reducing vendor lock-in and supporting compliance.  
* **OTEL Provides a Unified, Vendor-Neutral Telemetry Standard** (24:29)   
  * Jared explained that many vendors currently use proprietary, incompatible telemetry formats, creating integration and portability challenges.   
  * OTEL’s standard protocols and semantic conventions allow organizations to swap or combine telemetry backends without rewriting instrumentation.   
  * Embrace’s approach excludes IP collection for GDPR compliance, showing how OTEL can enable privacy-first telemetry through customizable data scrubbing.   
  * This openness helps meet regional data regulations and reduces risk of vendor lock-in.  
* **Cross-Platform Trace Stitching Enables End-to-End Observability** (26:34)   
  * OTEL supports passing trace context across backend and frontend boundaries via trace parent IDs, allowing waterfall views spanning CDN, server, and browser.   
  * Jared confirmed that browser instrumentation picks up trace context from meta tags or headers and attaches it to logs and spans, enabling trace stitching.   
  * This capability supports diagnosing complex distributed systems by connecting user actions on the frontend through backend processing.   
  * Such integration is critical for comprehensive performance and error monitoring.  
* **Bridging Frontend and Backend Teams to Improve Observability Culture** (42:48)   
  * Sergey and Cliff highlighted that OTEL helps unify the often disjointed frontend RUM teams and backend ops teams by creating a common telemetry language.   
  * Cliff noted organizations adopting OTEL everywhere want frontend to avoid locked-in proprietary RUM solutions, encouraging composable observability stacks.   
  * Jared shared that this standardization is not reinventing the wheel but extending backend observability benefits to the frontend, easing collaboration.   
  * This shared standard helps reduce confusion and improve troubleshooting workflows across teams.

### **Technical and Protocol Details of OTEL Browser Data Handling**

* The discussion reviewed key technical aspects of OTEL’s browser telemetry protocol, batching, compression, and instrumentation architecture.  
* **Batching and Beacon Protocol for Efficient Data Transmission** (36:31)   
  * Jared described the SDK’s batch processors that hold telemetry for configurable windows (usually 3–5 seconds) before sending batched OTLP payloads, reducing network overhead.   
  * Exception events can bypass batching to ensure timely reporting.   
  * Data payloads are typically under **4KB** after gzip compression, making them efficient for browser network constraints and SendBeacon API use.   
  * The SDK uses the Fetch API with keep-alive to optimize background data transmission, though compression streams remain an async challenge.  
* **Metrics Considerations and Limitations in Browser Context** (38:52)   
  * Metrics are not currently part of the browser SDK due to bundle size concerns and complexity.   
  * There is ongoing discussion about sending metrics as logs (e.g., counters of images loaded) rather than true OTEL metrics to keep payloads small.   
  * Aggregation is possible at the processor level, but is constrained by the need to send data timely before page unload.   
  * The ecosystem is open to evolving metrics support if it can meet browser size and performance constraints.  
* **Instrumentation Plugins and Compatibility** (14:14)   
  * OTEL browser SDK uses instrumentation plugins to capture specific event types (Fetch, XHR, web vitals, user actions).   
  * These plugins are upstreamed and shared across vendors to avoid duplication and ensure consistency.   
  * The SIG is porting and refactoring CommonJS Node-based libraries into ESM modules optimized for web bundlers and tree shaking.   
  * This modular approach supports vendor interoperability and reduces SDK size.  
* **Trace Context Propagation via Meta Tag** (41:35)   
  * The official mechanism for passing trace context from backend to frontend is through a traceparent meta tag in HTML.   
  * Alternative approaches like HTTP headers exist but are not accessible to client-side JavaScript on initial navigation.   
  * Having trace context exposed in the DOM allows instrumentation to correlate frontend and backend telemetry accurately.   
  * This method is preferred but requires modifying server-side HTML generation.

### **Community Engagement and Collaboration Opportunities**

* The meeting emphasized open participation in OTEL development and discussed collaboration possibilities with the RUM community and Cloudflare.  
* **Open Access to OTEL SIG and Community Resources** (35:04)   
  * Jared confirmed that participation in CNCF OTEL SIGs is free and open; anyone can join Slack, access docs, and attend meetings without membership fees.   
  * This openness encourages broad community contribution and transparency in defining standards and instrumentation.   
  * Jared offered to share links and resources for those interested in getting involved.   
  * The browser SIG currently has about **10 active attendees** and several maintainers driving progress.  
* **Collaboration Ideas for Integrating OTEL with RUM** (22:04)   
  * Jared encouraged the RUM community to contribute to semantic conventions and instrumentation to ensure alignment with RUM’s telemetry needs.   
  * He stressed the value of coordination between browser and mobile SIGs to standardize event naming and share instrumentation code.   
  * Jared highlighted ongoing challenges like page exit telemetry and compression where community input and joint development would help.   
  * This partnership could improve RUM’s observability capabilities and foster shared best practices.  
* **Potential for Multiple OTEL-Compliant JS Libraries** (29:02)   
  * Yoav Weiss raised the idea of having multiple JavaScript libraries emit OTEL-compliant telemetry, not just the canonical OTEL SDK.   
  * Jared agreed that instrumentation layers allow wrapping existing libraries for OTEL compliance, but direct OTLP generation is complex.   
  * The group sees value in standardizing telemetry formats to enable interoperability across diverse RUM providers.   
  * This could increase adoption and flexibility across the ecosystem.  
* **Next Steps and Meeting Planning** (02:11)   
  * Nic Jansma announced no RUM CG meeting in July due to summer plans, with the next scheduled for August 12th.   
  * The group invited suggestions for future topics, including continuing discussions on AI bot traffic and telemetry challenges.   
  * Nic committed to surfacing internal Cloudflare insights for the August session to enrich community knowledge.   
  * Ongoing community engagement is encouraged to keep momentum.

### **AI Bot Traffic and Telemetry Challenges**

* The group touched on emerging challenges of bot and AI traffic affecting telemetry accuracy and detection.  
* **Increasing AI Bot Traffic Impacting Observability** (55:06)   
  * Cliff Crocker noted Cloudflare’s internal discussions on bot traffic growth and challenges detecting AI agents that do not run JavaScript.   
  * Andy Davies cited a Fastly report of AI traffic outpacing human traffic by **six times** in some contexts over the past year.   
  * Ryan Townsend expressed concern that if human traffic declines while AI grows, it impacts how telemetry reflects real user experience.   
  * These trends complicate RUM accuracy and raise questions about filtering and attribution.  
* **Detection Difficulties Despite Server-Side Controls** (54:11)   
  * Erwin Hofman shared that despite using Amazon CloudFront rules to block known bots, automated traffic using playwright or webdriver still appears in telemetry.   
  * He noted server-side signals alone are insufficient for full bot detection, reinforcing the need for richer client-side signals.   
  * Nic Jansma pointed out that CDN providers may face greater detection challenges than vendors who control full page instrumentation.   
  * This topic was proposed as a future evergreen discussion to share learnings and strategies.  
* **Community Interest in Continuing Bot Traffic Discussions** (57:10)   
  * Nic penciled in the AI and bot traffic topic for the August RUM CG meeting to revisit with possible internal Cloudflare data.   
  * The group emphasized the value of sustained conversations as the issue evolves and impacts telemetry quality.   
  * Participants encouraged sharing resources and research collaboratively to address this growing challenge.   
  * The community aims to balance transparency with caution regarding sensitive data disclosures.

### **Event and Community Updates**

* The meeting closed with general community announcements and reminders about upcoming events.  
* **RUM Community Group Scheduling and Participation Encouragement** (02:10)   
  * Nic Jansma confirmed the cancellation of the July 8 meeting due to summer vacations and set the next meeting for August 12\.   
  * Chairs requested topic suggestions to keep meetings relevant and engaging, emphasizing community-driven content.   
  * The group discussed continuing to brainstorm topics at meeting ends.  
* **Upcoming RUM Event Promotion** (57:35)   
  * Karlijn Lowik invited attendees to register for the upcoming RUM conference in Perth and encouraged sharing topic ideas for the event.   
  * She mentioned community merchandise like T-shirts and socks to build camaraderie.   
  * Cliff Crocker suggested adding event details to meeting notes for wider visibility.  
* **Community Good Wishes and Meeting Closure** (58:25)   
  * Nic Jansma thanked all participants and wished happy holidays to those observing them.   
  * The meeting ended promptly at the hour, maintaining schedule discipline.

## **Action items**

##### **Jared Freeze**

* Share CNCF OpenTelemetry Browser SIG Slack and documentation links with the group to facilitate joining and participation (00:35)

##### **Cloudflare team (Ryan Townsend, Sergey Chernyshev, Nic Jansma)**

* Investigate internal bot and AI traffic data within Cloudflare and evaluate potential for sharing insights with the community at the August meeting (53:10)

##### **Unassigned**

* Brainstorm and propose relevant topics for the next meeting scheduled on August 12 to ensure engagement and continuity (03:49)  
* Collect community feedback and requests regarding OpenTelemetry semantic conventions and browser instrumentation improvements to guide future development (22:04)

##### **Karlijn Lowik**

* Promote the upcoming RUM event in Perth by distributing sign-up information and event details through Slack and meeting notes (58:05)

