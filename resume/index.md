---
title: "Kevin Tegtmeier — Resume"
mainfont: "New Computer Modern"
---

# Kevin Tegtmeier

**Software Development Engineer**

Seattle / Remote · [kevin@tegtmeier.me](mailto:kevin@tegtmeier.me) · [kevinteg.github.io](https://kevinteg.github.io)

---

## About Me

Avid learner and force multiplier. I enjoy enabling and mentoring engineers, thinking strategically to avoid unnecessary work and technical debt.

---

## Experience

### Principal SDE — Oracle Cloud Infrastructure (2015–Present)

**Techops (2025–Present)** · Incident commander for large-scale OCI and AI datacenter events.

**Management (2023–2025)** · Managed Network Automation workflows team (8-12 engineers): bulk config push, firmware upgrades, password rotations. Promoted two engineers. Absorbed another team responsible for safety checks and network device boot scripts.

**NTP** · Owned the Stratum 2 NTP service; fixed long-standing syncing issues that caused overnight pages—eliminated false positives and coordinated cross-org fixes.

**OCI Workflow** · Built OCI Workflow, a Step Functions competitor. Co-designed a concise DSL after reviewing CNCF and AWS specs. Implemented the workflow decider—the core component that controls execution order. Developed a workflow definition validator used by various stages in the creation logic.

**Telemetry** · Reduced region build effort from 5 FTEs/2 weeks to 1 FTE/1 week. Config approach later adopted as the org-wide standard for new services. Implemented metric stream limits to protect against expensive queries. Backfilled infrastructure into Terraform. Built generic dockerized configuration management for storage volumes, SELinux, and post-provisioning config—designed for our team but adopted by 12 other service teams.

**Network Automation** · Built the foundational Network Control Plane (NCP), a workflow-based orchestrator for traffic shifts, config pushes, and firmware upgrades. The workflow SDK only existed in Java—I wrote the official Python port with full parity, making it easy for Network Engineers to contribute automation directly. Contributed to OCI's first "seed" boot disk, used to bootstrap the initial infrastructure of OCI.

**Security Central** · Built a security findings platform that normalized data from multiple sources, assigned findings to teams, and tracked mitigations. Designed and implemented the ingestion pipeline with a focus on performance.

### Senior DevOps Engineer — Microsoft Azure Networking (2014–2015)

Added edge site support to the network automation platform. Unblocked ~100 developers on disk space issues by provisioning right-sized cloud build instances.

### Tech Lead — Nebula (2012–2014)

Tech lead for the release engineering team. Built Debian packages, system images, and disk images for Nebula One's cloud controller. Transformed 2-day company-wide release freezes into reproducible single-command builds with private repos. Developed a virtual environment for integration testing on the entire product, using Chef to manage persistent virtual test labs.

### SDE — Amazon Web Services (2010–2012)

Built availability-zone-aware kernel staging for Amazon's Linux fleet, reducing blast radius on upgrades. Defined the initial look and tooling for Amazon Linux's first release. Selected and ported cloud-init from Ubuntu to RHEL; supported Elastic Beanstalk's adoption.

### Systems Engineer — Amazon Web Services (2008–2010)

Early phase incident management in tier one support. Built monitoring for Kindle Whispernet authentication servers. Reduced host reboot requests—a large source of tickets—by 40% with additional prechecks and retry logic. Mentored a Network Engineer on automation via pair programming, helping him automate QoS deployments.

### Scientist 2 — Los Alamos National Laboratory (2004–2008)

Production engineer on Top500 supercomputers (ASCI Q, Lightning). Contributed Xbootfs to the xcpu project—reduced supercomputer boot from 30 min to <1 min using peer-to-peer distribution. Co-authored and presented poster at SuperComputing 2007 on Mongo, a synchronized pull drop-in replacement for syslog.

---

## Skills

**AI-Assisted Development:** Claude Code, Cline, Codex, RAG

**Languages:** Java, Python, Ruby

**Infrastructure:** Linux, Cloud Computing, HPC

---

## Education

**BS Computer Science** — University of New Mexico, 2004
