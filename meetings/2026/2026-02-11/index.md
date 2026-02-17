## Feb 11, 2026 | [RUMCG Meeting](https://www.google.com/calendar/event?eid=MmcwZ2p0OHNlajE5NDQ0Zmc5MWFhdmYycm4gY2xpZmZAc3BlZWRjdXJ2ZS5jb20)

## Agenda

* Agenda for March / 2026  
* Container Timing  
* Barry's Bytes / Chrome update (-Barry)

## Admin

* Next meeting: March 11, 2026

## Summary

* **Container Timing Overview**: This metric measures when components are fully usable, improving upon existing methods like LCP.    
  * **Current State**: Prototypes are active in Chromium 145; developers are encouraged to test and provide feedback for refinement.    
  * **Paint Detection Insights**: Skeleton elements can be ignored; feedback is needed on using heuristics for minor paint updates to filter data.    
  * **Developer Control Focus**: Container Timing aims to empower developers with more precise performance measurements, reducing reliance on generic heuristics.    
  * **Future Vision**: There's potential for automatic measurement using semantic HTML, reducing manual effort in annotations for container tracking.    
* **Chrome and RUM Updates**: Recent changes include improved timing reports, necessary updates for RUM providers, and new API features enhancing performance measurements.

## Notes

### **Container Timing Specification and Progress**

* The team presented Container Timing as a more precise way to measure when specific page components finish rendering, addressing limitations of existing metrics like LCP. (05:12)  
* **Container Timing tracks initial paint regions** within selected DOM containers, helping developers know when their components are fully usable.  
* It overcomes LCP’s shortcomings by focusing on when all parts of a component, including asynchronously loaded elements, have painted.  
* The approach avoids continuous updates by only reporting new paints in previously unpainted areas, preventing indefinite tracking from dynamic changes like carousels.  
* The specification includes detailed performance entries with start time, size (cumulative painted region), first render time, and last painted element for debugging.  
* The current state includes explainer documents, prototypes, and ongoing Chromium and Firefox implementations with a developer trial launched recently. (22:22)  
* The feature is enabled behind a flag in Chromium from version **145** and is available in Canary by default.  
* The team is working toward origin trials and wider adoption, encouraging developers to test and provide feedback.  
* José Dapena Paz emphasized the importance of feedback on corner cases and usability to refine the spec and ensure broad browser support.  
* Links to repos and demos will be shared to facilitate experimentation and community involvement.  
* The discussion highlighted nuances around paint detection and filtering, especially regarding skeleton screens and minimal paint changes. (25:23)  
* Skeleton elements can be ignored through a **content-timing-ignore** attribute to avoid premature paint reporting.  
* Chromium’s element timing paint detection is simpler than LCP’s, reporting any paint event without heuristics like low opacity or entropy.  
* Feedback is sought on whether to add heuristics or thresholds to avoid excessive data from minor incremental paints.  
* Bloomberg applies a **1% size change threshold** to filter insignificant paint updates, a practice that could inspire standardization.

### **Strategic Positioning and Developer Control**

* There was a clear consensus that Container Timing is designed to give developers more granular control over performance metrics rather than relying on heuristics like LCP. (36:08)  
* Sergey Chernyshev framed Container Timing as a tool for developers to control performance measurement tailored to business cases, contrasting with LCP’s generic heuristics.  
* The group discussed the need for a clear position statement defining this control-oriented goal to guide future spec decisions.  
* The possibility of a heuristic “largest container paint” metric was noted as a complementary approach for broader use cases.  
* This distinction will help set expectations and clarify the spec’s role in the ecosystem.  
* Adoption challenges were raised around the need for developers to annotate DOM elements with identifiers for containers to measure. (38:36)  
* Karlijn Lowik stressed that platforms and major sites must adopt Container Timing attributes for the metric to be useful.  
* The group considered pushing large platforms to add Container Timing annotations as a best practice.  
* Sergey suggested common naming conventions for typical components (e.g., cookie banners) to standardize tracking and simplify adoption.  
* Michal Mocny envisioned Container Timing as a building block that might eventually inform or replace parts of LCP if patterns emerge.

### **Future Directions and Use Cases**

* The team explored possibilities for Container Timing to evolve into a more automatic or semantic-based measurement aligned with web app structures. (43:44)  
* Sergey suggested leveraging semantic HTML elements (nav, main, section) as implicit container boundaries to reduce manual annotation.  
* Michal proposed aggregating real-world examples where Container Timing is applied to identify patterns for potential automation or defaults.  
* The concept of Container Timing becoming a primitive for naming and measuring logical UI components was discussed as a long-term vision.  
* The group agreed to revisit this conversation in future meetings to explore next steps.

### **Chrome and RUM Ecosystem Updates**

* Barry Pollard provided a rapid update on recent browser and RUM-related changes impacting performance measurement and tooling. (47:45)  
* A Safari bug causes inaccurate interaction-to-next-paint timings; it is fixed but not yet widely released, so anomalies should be expected.  
* Chrome launched a new origin trial for **speculation rules** enabling “pre-render until script,” a middle ground between prefetch and pre-render.  
* Soft navigation events are now visible in Chrome performance traces, with ongoing work to refine the Soft Navigations API.  
* Chrome is updating the **layout shift API** to report CSS pixels instead of device pixels, affecting overlay tools but not core CLS values.  
* Chrome now reports both paint time and **presentation time** for LCP, FCP, and Largest Contentful Paint, allowing more accurate cross-browser comparisons.  
* The device memory API will drop lower memory categories and add higher values (16GB, 32GB) from Chrome version **146/147**, improving segmentation but requiring RUM providers to update logic.  
* Barry urged RUM providers to prepare for these changes and check bot detection filters that might reject new device memory values.

### **Meeting Logistics and Next Steps**

* The meeting moved to a Wednesday cadence to improve attendance and the next meeting is scheduled for March 11th. (01:17)  
* Nic Jansma invited the community to contribute data and drive discussions on core web vitals comparisons across browsers.  
* Teams like mPulse and RUMvision have volunteered to share data for these comparisons.  
* Topics like server timing header adoption and unused preload reporting will be revisited in upcoming meetings.  
* Nic and Jase encouraged participants to propose agenda items via the shared document for continued progress on the backlog.  
* Jase and José will share relevant links and follow up to gather feedback on Container Timing as it advances through standards and implementation stages.

## Action items

##### **Nic Jansma**

* Circulate slide decks and meeting agenda documents; encourage agenda suggestions from participants (00:00)

##### **Jase Williams and José Dapena Paz**

* Share Container Timing explainer, prototype repos, and Chromium flags; solicit feedback from developers testing feature (21:40)

##### **Unassigned**

* Contribute Core Web Vitals cross-browser data or drive that discussion for March meeting (02:12)

##### **Developers**

* Test Container Timing in Chromium Beta 145+ with flags enabled or Canary and report corner cases, provide feedback on API behavior and data noise (22:40)

##### **Community members**

* Join GitHub explainer repo discussions and file issues for Container Timing improvements (30:50)

##### **Barry Pollard**

* Continue monitoring Chrome and Safari RUM metric bugs and updates; share Chrome origin trial details and changes to device memory API for RUM providers awareness (46:45)

##### **RUM providers**

* Review and adjust tooling relating to Safari paint timing bug, CLS pixel calculations, and device memory value changes in Chrome 146/147 (48:00)

##### **Meeting chairs and participants**

* Re-evaluate Container Timing heuristic versus control balance and work towards adoption strategies involving platforms and common container naming (36:00)