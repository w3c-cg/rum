## Oct 14, 2026 | [RUMCG Meeting](https://www.google.com/calendar/event?eid=MmcwZ2p0OHNlajE5NDQ0Zmc5MWFhdmYycm4gY2xpZmZAc3BlZWRjdXJ2ZS5jb20)

## Agenda

* Interop 2027  
* TPAC 2026

## Admin

* Next meeting:  
  * November 11th \- CANCELLED (due to RUM RUM)  
  * November 18th \- RUM RUM in-person @ perf.now() Amsterdam  
  * December 9th \- December meeting

## General Summary

* **Interop Initiative:** Final 2027 feature scope will be published in Feb after TPAC; community encouraged to review 1,400+ open Web Platform Tests.   
* **TPAC Preparation:** TPAC sets focused sessions consolidating biweekly talks; community feedback on real use cases is key to guide priorities.   
* **RUM RUM Event:** Scheduled Nov 18 in Amsterdam; 74 signed up; replaces Nov meeting; shares TPAC outcomes and fosters collaboration.   
* **Agent Identity Issues:** Browsers don't self-ID; challenge in distinguishing human vs agent-driven traffic; TPAC to address ecosystem incentives.   
* **Soft Navigation Metrics:** Cloudflare’s CrUX soft nav data now public; growing demand from analytics vendors; RUM RUM to discuss metric integration.

## Notes

### Interop Initiative and Web Platform Tests

* The Interop project is progressing well toward improving cross-browser consistency on selected web features through coordinated testing.  
* **Ongoing refinement and feature selection for 2027 Interop are underway with champions assigned** (15:00)   
  * The submission window closed in September; next step involves narrowing feature proposals and champion assignments.   
  * The final scope and chosen features will be published in February, following discussions at the upcoming TPAC meeting.   
  * Interop focuses on ensuring all selected features have existing Web Platform Tests (WPT) for verification.   
  * Browser vendors actively contribute and prioritize fixes to improve passing test rates, enhancing web interoperability.  
* **Test suite quality and review are critical, with over 1,400 open WPT pull requests needing attention** (18:31)   
  * Many PRs date back several years and require triage to clear stale or flaky tests.   
  * Some tests already exist in Chromium but failed merging due to administrative issues, indicating a need for better review workflow.   
  * Community involvement is encouraged to review and improve tests, as small JavaScript tests are easy to contribute and can significantly impact Interop success.   
  * Assigned reviewers exist but may lack capacity; the community can help escalate important PRs to ensure timely reviews.  
* **Community feedback is vital at this stage to influence feature prioritization and test coverage** (16:44)   
  * Michael Mocny urged contributors to review tests now, as this is the optimal time to make impactful changes before final feature selection.   
  * The process includes both focus areas with ready tests and investigation efforts to develop tests for features not yet mature.   
  * Nic Jansma highlighted a public Mozilla feedback tool where community members can rank and comment on Interop proposals, enabling influence on browser developer priorities.  
* **Some features require clarification and consensus before being accepted as focus areas** (24:34)   
  * Preload and resource timing implementation inconsistencies illustrate the complexity of agreeing on specification clarity and test coverage.   
  * Discussions at TPAC aim to resolve such ambiguities, potentially relegating unclear items to exploratory investigation tracks.   
  * Participants noted that spec changes risk breaking implementations, so consensus-driven incremental improvements are preferred.

### TPAC Meeting Preparation and Strategy

* TPAC is positioned as a key milestone to drive decisions, gather broad feedback, and accelerate web performance and interoperability efforts.  
* **TPAC will consolidate many biweekly discussions into focused sessions with 20-40 participants per meeting** (29:21)   
  * The Web Performance Working Group’s agenda is nearly full, covering interoperability, container timing, declarative performance observer, and more.   
  * TPAC provides an opportunity for deep, multi-day focused discussion and more concrete decision-making than regular calls.   
  * Nic Jansma and Yoav Weiss emphasized TPAC’s role in setting direction and prioritizing next steps for features like navigation timing and speculative load measurement.  
* **Community input on use cases and ergonomics is highly valued to guide working group priorities** (36:28)   
  * Yoav Weiss explained that concrete feedback on real-world problems with APIs helps working groups shape specs and implementations.   
  * Prioritization discussions are more relevant to browser teams’ internal resourcing, while the working group benefits from detailed community use cases.   
  * Barry Pollard encouraged contributors to add detailed comments and use cases on GitHub issues rather than just upvoting, as this drives more meaningful engagement.  
* **Pre-reads and distributed feedback ahead of TPAC can improve efficiency and focus during sessions** (40:14)   
  * Yoav proposed distributing summary documents to avoid lengthy reviews during the meeting and focus on feedback and decisions.   
  * Nic Jansma agreed to coordinate sharing agenda links and explanatory material in Slack for the RUM CG and Web Performance groups.   
  * Cliff Crocker suggested simple polls or Slack discussions to gauge community priorities as complementary signals to GitHub issue feedback.  
* **RUM CG chairs will prepare and share TPAC session summaries with links and context within a week to support community review** (43:49)   
  * Nic Jansma and Yoav Weiss committed to guiding community members to provide feedback on key topics before TPAC, roughly 12 days away.   
  * Barry Pollard is actively adding relevant links and resources to the agenda to facilitate this preparation.

### RUM RUM Community Event and Meeting Cadence

* RUM RUM is planned as a key in-person event to foster collaboration and share insights, with adjustments to the regular meeting schedule.  
* **RUM RUM 2026 will be held November 18th at Google offices in Amsterdam, one day before Perf Now** (04:50)   
  * Barry Pollard is assisting with event logistics, aiming to replicate or improve on last year’s successful gathering.   
  * Registration is free, and as of the meeting, **74 attendees** have signed up, signaling strong community interest.   
  * The agenda is still tentative but will include browser team updates and discussions on web performance topics.  
* **The November RUM CG meeting will be skipped in favor of the RUM RUM event, with the next regular meeting planned for December** (07:22)   
  * December’s meeting remains tentative due to holiday schedules and participant availability.   
  * RUM RUM offers a unique chance for face-to-face interaction, enhancing community bonding and progress on shared goals.  
* **RUM RUM will also serve as a forum to share TPAC outcomes and continue ongoing discussions on interoperability and agent identity** (48:59)   
  * Nic Jansma and Barry Pollard plan to bring back insights from TPAC to the community at RUM RUM.   
  * The event will allow direct feedback exchange and potentially influence working group priorities.

### Agent Identity Challenges and Discussions

* Agent identity remains a complex issue with many unknowns, requiring further exploration and clearer use cases.  
* **Current browsers largely do not self-identify, making it hard to distinguish human users from automated or agent-driven browsing** (49:59)   
  * Yoav Weiss highlighted the difficulty in measuring what portion of traffic is agentic, complicating user experience analysis.   
  * The community expressed a need for declarative signals indicating whether traffic is human or AI/agent-driven to improve measurement accuracy.  
* **Use cases and definitions remain fuzzy, especially regarding the agency and representation of user experience** (51:12)   
  * Sergey Chernyshev noted the challenge of interpreting browser activity that may not reflect real user interaction.   
  * Differentiation between co-browsing, headless scenarios, and hybrid models adds complexity to identity solutions.  
* **There is tension between transparency and risk, as agents fear being blocked if they reveal themselves** (51:25)   
  * Yoav pointed out the paradox where non-identifying agents risk being blocked unfairly, while identifying may lead to deliberate blocking.   
  * Discussions at TPAC may help clarify approaches and ecosystem incentives around agent identity.  
* **RUM CG sees potential value in identifying agent-driven browsers due to their possibly higher conversion or goal completion rates** (53:11)   
  * Nic Jansma suggested that agentic traffic might be more focused and valuable, offering a rationale for prioritizing such signals in measurement.   
  * This perspective could influence how RUM data is interpreted and how agents are treated in analytics.  
* **There is interest in broadening the discussion to include mobile apps and other non-browser agents as part of the identity conversation** (54:16)   
  * Sergey raised the point that mobile apps are often excluded from RUM discussions but share similar measurement challenges.   
  * Generalizing identity and measurement frameworks could improve coverage and relevance across platforms.

### Soft Navigation Data and Emerging Metrics

* New data releases and metrics continue to expand the scope and depth of web performance insights.  
* **Cloudflare’s recent release of soft navigation data in CrUX marks the first public availability of this metric** (55:56)   
  * Barry Pollard announced the availability and encouraged community members to explore and provide feedback.   
  * This data offers new dimensions for understanding navigation experiences beyond hard load events.  
* **Soft navigation support is becoming increasingly important, with requests for broader adoption by analytics vendors and platforms** (55:56)   
  * Barry suggested that more customers request soft nav data support, indicating growing market demand.   
  * RUM RUM is expected to include presentations or discussions on soft nav insights and their implications.  
* **RUM CG plans to integrate these new metrics into ongoing performance discussions and tooling** (56:24)   
  * Barry indicated potential RUM RUM sessions focusing on soft navigation and related performance topics.   
  * This reflects the group’s commitment to staying current with evolving measurement capabilities.

## Action items

### Nic Jansma

* Prepare and post TPAC session summaries and pre-read links to the RUM Community Group Slack and mailing list to encourage community feedback ahead of TPAC (44:04)  
* Ensure participation or observation in TPAC agent identity breakout sessions and related discussions to represent RUM CG interests (46:45)

### Nic Jansma and Yoav Weiss

* Collaborate to guide RUM Community Group members towards relevant TPAC materials and GitHub issues for pre-event review (43:48)

### RUM Community Group members

* Review and provide concrete feedback and use cases on key Interop and Web Performance Working Group proposals, especially those listed on Mozilla feedback tool, before TPAC sessions (21:40)  
* Encourage community to provide detailed comments and use cases on GitHub issues related to Interop features and web performance enhancements discussed (38:22)

### Web Perf group and RUM Community Group

* Consider triaging open Web Platform Tests pull requests to clear backlog and assist with test maintenance, potentially involving the Web Perf group (20:17)

### Barry Pollard

* Share link to slides and related materials about speculation rules and agenda with the group (26:42)  
* Present insights and data on soft navigation at the RUM RUM event in Amsterdam (56:35)

### Nic Jansma and co-chairs

* Facilitate Slack polls or other simple feedback mechanisms for RUM Community Group prioritization of TPAC topics (42:12)

