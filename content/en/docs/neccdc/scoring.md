---
title: "Scoring Overview"
description: ""
includeInList: false
---

Blue Teams gain points throughout the competition in two categories using the following point distribution

|     |                |
| --- | -------------- |
| 50% | System Scoring |
| 50% | Inject Scoring |

Both service uptime and completion of injects are equally important.
As with any business, systems often have different risks and criticality.
Additionally, any disabling/disconnection of network services is considered unauthorized and thus, depending on severity and service criticality, might incur appropriate SLA violations.
The more points Blue Teams can gain, the better.

Additionally, successful Red Team Activity will subtract up to 50% of points from a team’s possible total points

|      |                   |
| ---- | ----------------- |
| -50% | Red Team Activity |

The more points Blue Teams can prevent the Red Team from taking away, the better.

Accurate and high-quality Incident Reports will reduce the number of points reduced as a result of Red Team activity

## System Scoring

System availability and integrity make up half of the Blue Team's final score.
This scoring consists of service checks that happen on a predetermined interval.
Each successful check will increase point totals (depending on service criticality).<br>
Unsuccessful checks will **not increase or decrease** point totals.

Points can additionally be lost by requesting Black Team intervention on your systems ([Operational Aid](operational-aid))

## Inject Scoring

Injects are business tasks provided to each team throughout the competition and make up half of the Blue Team's final score.

- Injects are typically provided to teams in the form of communication from a supervisor/stakeholder, a project work order, or a ticket.
- Injects may not always explicitly outline specific deliverables expected.
- It is the responsibility of the Blue Team to interpret the request and respond professionally.

Questions can be asked for clarification via moderators or directly to White Team.<br>
Some injects may be scored objectively, while other injects may be scored on a ranked scoring model.

Injects may not all have the same point value, and are weighted based on items such as complexity and time required to complete.<br>
The specific point value for each inject is not disclosed to the Blue Team.

Injects have their own deadlines, and injects submitted past deadlines do not earn points.
Keep in mind that the Google Classroom clock may be different from your system time and can experience lag when submitting.

## Red Team Activity

Successful Red Team activity is subtracted from Blue Team total points.<br>
Red Team Activity has a ceiling and may not take away more than half of the total possible points from the combined service and inject scores.

Accurate, evidence-based, and professional Incident Reports submitted by the Blue Team may provide the opportunity to reclaim Red Team points for specific Red Team activity.
However, very low-quality Incident Reports may result in additional points awarded towards Red Team Activity and Blue Teams should only submit Incident Reports they have confidence in (detailed in National’s Rule 9.d).

## Incident Response Template

Please feel free to use this [Incident Response Template](/docs/red-team/files/IncidentResponseReportTemplate.pdf), or use a similar professional IR report which captures data referenced in [National Rules 9.d](https://www.nationalccdc.org/rules.html).

Tips for Effective IR Reports:

- Submit IR reports when incidents occur to reduce the impact of Red Team scoring.
- Ensure any executive summaries and business impact analyses are appropriately written for the intended audience (avoid technical jargon).
- When writing, ensure that it is professional and includes enough necessary information and depth while not including any extraneous information.
- When discussing business impact, ensure that you accurately identify the effects on the business.
- After an incident occurs, document the remediation steps clearly, including any actions taken to prevent it from happening again.
- Make sure that you include relevant screenshots, visuals and evidence.
- Think about whether what you are experiencing is really due to Red Team activity or due to an actions taken by your team
