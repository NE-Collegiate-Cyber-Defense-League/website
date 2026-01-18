---
title: "NECCDC Red Team Advice"
description: "TODO"
_build:
  list: never
---

## Incident Reports can help win back points, but only if they are good!
1. Review the [National CCDC Rules](https://nationalccdc.org/rules.html): "9 Scoring" (section d)
2. If an attacker has access to your Domain Controller, then the sky is actually falling.
3. Executives have no idea what an ssh shell is, or any other technical term.
Use business terms that your grandparents would understand when creating your executive summary.
1. Your executives will be really upset if you report "bogus incidents". The black team service status poller is a really bad bogus incident to report.

## Tips for Effective IR Reports:
- Submit good IR reports when incidents occur to reduce Red Team scoring impact
- Ensure professionalism when writing and enough necessary information / depth to describe the incident and business impact
- Ensure executive summaries and business impact analyses are written for the intended audience. Minimize the technical jargon in these sections of the report.
- Ensure that you accurately identify the business impact.
- Attempt to accurately determine the root cause.
- Once an incident has been discovered, determine the root cause, and perform remediation. Any actions taken towards remediation/prevention should be detailed in the report.
- Make sure you include relevant screenshots, visuals, and evidence.
- Is what you are experiencing really due to Red Team activity or is it misconfiguration or actions by your own team?

## This blog has some good tips for IR:
- [Hurricane Labs | NECCDC 2019: Red Team Review](https://www.hurricanelabs.com/blog/neccdc-2019-red-team-review)

## Manage credentials carefully
- The RT gets a team packet. All passwords are compromised.
- If you find an implant and remove it, that computer's password is compromised via keylogger.
- Avoid password re-use because one compromised system could impact others.
- https://attack.mitre.org/tactics/TA0006/

## Monitor network traffic with tools, such as wireshark, tcpdump, or netresec Networkminer.
- If you see ssh sessions that are not from the blue team, that machine is compromised.
- Monitor for unusual outbound traffic from systems, and verify the integrity of software running on those systems.
RT tools typically have persistence to avoid losing access on a machine reboot.
- Sysinternals Autoruns will enumerate the Windows starting applications, but there are bypasses for this tool.
Learn the raw locations and investigate.
- Research ways to get Linux systems to run commands and investigate.
Modified binaries, crontab, init, systemd, .bashrc and .bash_profile.
- https://attack.mitre.org/tactics/TA0003/

## Verify that Windows Defender is actually running, and is configured correctly.
- Defender will stop many implants all by itself!

## Miscellaneous thoughts:
- Verify server configurations are not malicious
- Verify applications installed are not malicious
- Verify network device configurations are not malicious
- If you see bananas on your screen, then the machine is compromised
- "Trust, but verify." - [Ronald Reagan*](https://en.wikipedia.org/wiki/Trust,_but_verify)

## Windows Red Team Tactics
- OpenSSH installed on port 2222
  - If you add a firewall rule for port 2222, it does not stop current RT ssh sessions
  - If you add a firewall rule for the RT jump box's IP address, then will pivot in from another system
  - Defensive tactics: uninstall RT "Live off the Land Binaries", remove any accounts created by RT, and change all passwords
- WinRM the Domain Controller with leaked credentials
  - Warning: Be careful on changing firewall rules to block this, or your team may lose access to your own server
  - Defensive tactics: add a firewall rule to allow access to WinRM only from BT's IP address space, change the password and/or disable the accounts that have leaked and/or weak passwords

Linux Red Team Tactics
- sshd alternate keys installed
  -  The sshd server can be configured to place sshd keys in an alternate file
  -  The authorized key files can get a key added to their accounts
  -  Defensive tactics: look at the sshd configuration file closely, and check authorized_keys files for multiple keys.

- Linux-PAM modified to allow access to any account with a fixed password
  -  Attacking Linux-PAM is a RT favorite
  -  Defensive tactics: check the hash on every kernel file and verify they are correct

Red Team Training Material
- https://www.cobaltstrike.com/training
- https://attack.mitre.org
- https://slashdot.org
- https://www.reddit.com/r/netsec
- https://www.exploit-db.com
- https://seedsecuritylabs.org/labs.html
- "The Hacker Playbook 3: Practical Guide To Penetration Testing", Peter Kim
- https://www.hurricanelabs.com/blog/neccdc-2019-red-team-review
- Splunk Training Course:
  -  [Getting to Know Splunk: The Hands-On Administration Guide | Udemy](https://www.udemy.com/course/hands-on-splunk-administration/)

Other Material (after you finish the Red Team Material)
- Sliver Command & Control - covertly manage remote systems - https://sliver.sh
- Tactical RMM - https://github.com/amidaware/tacticalrmm
- Splunk - https://www.splunk.com/en_us/products/enterprise-security.html
- Win32-OpenSSH - https://github.com/PowerShell/Win32-OpenSSH/releases/tag/v9.5.0.0p1-Bet
