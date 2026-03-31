---
title: "Operational Aid"
description: "Breakdown of the costs for black team assistance"
includeInList: false
---

Teams are responsible for restoring their systems to operational status on their own, but sometimes this is not possible.
The Black Team offers a point-based reduction to fix a system or provide assistance.
The goal behind this change is to balance between encouraging teams to seek help when genuinely needed and fostering independent problem-solving.

### Pricing Breakdown

Each team is given a budget of 1000 points that they can spend on assistance from the Black Team.
Spent points will count against system scoring.

Each assistance request that has a point cost will be multiplied by the corresponding number in the [Fibonacci sequence](https://en.wikipedia.org/wiki/Fibonacci_sequence) (excluding 0).
For example, the first request will cost x1, the second x1, the third x2, and so on, following the sequence of Fibonacci numbers.

| Type                                  | Description                                                                                                                                                                                                         | Cost |
| ------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---- |
| Server Redeployments                  | Cleanly redeploy the server to a pre-competition state.                                                                                                                                                             | 30   |
| Instance Connectivity Troubleshooting | Removing firewall rules that block instance connectivity, etc. If the Black Team cannot connect themselves, a server redeployment will likely be required instead.                                                  | 30   |
| Account Logout                        | Password reset for any user (Blue, Black, Employee). If the Black Team cannot connect themselves, a server redeployment will be required instead.                                                                   | 10   |
| Competent Questions                   | Thoughtful questions that include information on what your team has already tried, including results if applicable.<br>Abuse of this offering or questions that lack any prior effort will result in a 5-point fee. | 0    |
| Competition Setup Questions           | This includes questions related to initial environment VPN setup, access to initial credentials, questions designated to Black, White or Red Teams, and the like.                                                   | 0    |

## Additional Information

- When servers are redeployed or access is restored, teams do not get refunded for the missing points they could have gained from injects or service checks.
- Server redeployments cannot be performed during the end of the competition.
- Submit a ticket and use the **@BlackTeam** handle in the competition Discord, otherwise, your message will not be noticed. Keep in mind that the Black Team is also responding to other teams. If there is no response in five minutes, please ping us again.
- The more point-costing requests you make to the Black Team for assistance, the higher the cost of each subsequent request.
- Upon request after competition completion, teams can request a summary of events that required the Black Teams' intervention.
- In case of _force majeure_ or proven hosting issues, lost points can be refunded.
- The Black Team has full discretion to assign point pricing to help events.
