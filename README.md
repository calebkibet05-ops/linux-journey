# 🚀 30-Day Linux Systems Engineering Bootcamp

### From Linux Fundamentals to Practical Systems Administration

**Building, scripting, troubleshooting, and documenting real Linux administration workflows across Fedora Linux and Omarchy (Arch Linux).**

Welcome to my **30-Day Linux Systems Engineering Bootcamp** — a hands-on technical learning project focused on developing the foundational skills required to work with Linux systems, infrastructure, and automation.

This repository documents my journey from learning essential Linux commands to exploring system administration, Bash scripting, networking, security concepts, containerization, monitoring, and backup and recovery.

Rather than focusing only on theory, I use practical exercises, command-line tools, scripts, troubleshooting activities, and technical documentation to understand how Linux systems operate and how administrators diagnose and resolve everyday infrastructure problems.

The objective is simple: **turn consistent learning into practical, verifiable technical work.**

---

## 🐧 A Journey Across Two Linux Environments

One of the defining aspects of this bootcamp is the experience of working across two different Linux environments.

### 🔵 Fedora Linux

I began my journey using Fedora Linux, developing foundational knowledge of the command line, Linux filesystem, users and groups, permissions, package management, processes, services, and system administration.

Fedora provided an environment for learning Linux fundamentals and practising administrative workflows using tools such as DNF and systemd.

### 🔷 Omarchy — Arch Linux

As my learning environment evolved, I continued the project using Omarchy, an Arch Linux-based environment.

This transition introduced me to Arch's package management ecosystem through Pacman and encouraged me to adapt my workflows to a different Linux distribution.

Work:ing across Fedora and Omarchy has helped me appreciate that Linux fundamentals often transfer between distributions, while package managers, configurations, available utilities, and security defaults may differ.

**The goal is not simply to learn commands for one operating system, but to develop the ability to understand, investigate, and administer Linux environments.**

---

## 🛠️ What This Bootcamp Covers

The bootcamp follows a practical progression through core Linux and systems engineering concepts.

### 01 — Linux Fundamentals and Command-Line Proficiency

Learning to navigate and inspect a Linux system confidently using the terminal.

Topics include:

- Filesystem navigation and file management
- Essential command-line utilities
- Reading files and searching for information
- Understanding paths, permissions, and environment variables
- Building efficient command-line workflows

### 02 — Users, Groups and Access Management

Exploring how Linux manages accounts, permissions, and administrative privileges.

Topics include:

- User and group administration
- File ownership and permissions
- Administrative privileges and `sudo`
- Access troubleshooting
- Understanding least-privilege principles

### 03 — Package Management and Software Administration

Learning how to install, inspect, update, and manage software across different Linux distributions.

Topics include:

- DNF on Fedora
- Pacman on Arch Linux
- Package queries and software updates
- Understanding installed packages and dependencies
- Basic package-management troubleshooting

### 04 — Processes, Services and System Administration

Investigating the components and services that keep a Linux system running.

Topics include:

- Process inspection and resource usage
- Service management with systemd
- Service status and failure investigation
- System resource checks
- Basic administrative troubleshooting

### 05 — Networking and Connectivity Troubleshooting

Developing the ability to inspect network configuration and investigate common connectivity problems.

Topics include:

- IP addressing and network interfaces
- Gateways and DNS fundamentals
- Listening ports and network sockets
- Tools such as `ip`, `ss`, and `curl`
- Basic network diagnostics

### 06 — Bash Scripting and Automation

Moving beyond manually entered commands by developing scripts that automate repeatable administrative tasks.

Practical areas include:

- Variables and command substitution
- Conditional logic and exit statuses
- Loops and command pipelines
- Input validation and error handling
- Reusable system-check scripts
- Script syntax validation and troubleshooting

### 07 — Security Concepts and Access Troubleshooting

Exploring security practices relevant to Linux administration.

Topics include:

- File permissions and administrative access
- SSH configuration and basic auditing concepts
- Security-related logs
- Access-control troubleshooting
- Understanding distribution-specific security tools

Security exercises are documented according to the environment in which they were performed.

### 08 — Containerization with Podman

Exploring container technology as part of modern systems administration.

Practical areas include:

- Container images and registries
- Creating and inspecting containers
- Starting, stopping, and troubleshooting containers
- Port mapping and service accessibility
- Volumes and data persistence
- Understanding container logs and lifecycle operations

### 09 — Monitoring, Logging and System Health

Learning to inspect system health and identify potential operational problems.

Practical areas include:

- CPU, memory, and storage inspection
- Process and service monitoring
- Listening-port checks
- Journal and log inspection
- Basic health-check automation
- Identifying conditions that may require investigation

### 10 — Backup, Recovery and Project Validation

Practising basic data-protection workflows and learning how to verify results.

Practical areas include:

- Creating archive-based backups
- Generating and checking checksums
- Restoring test data
- Validating restored files
- Documenting recovery procedures
- Auditing scripts, notes, and project evidence

*These are the major learning themes represented in the bootcamp, not a claim that every topic has been mastered or every exercise has passed validation.*

---

## 💻 Practical Work and Technical Artifacts

The repository is designed to contain more than a list of completed lessons. It provides a place to document the technical work behind the learning process.

### Bash Utilities

Scripts developed during the project cover areas such as:

- Disk health checks
- Service health inspection
- SSH configuration auditing
- System information summaries
- Package auditing
- System monitoring
- Container operations
- Backup and recovery workflows

Each script should be reviewed alongside its documentation to understand its purpose, dependencies, limitations, and observed results.

### Hands-On Labs

The `labs/` directory contains practical exercises and supporting evidence from selected tasks.

Evidence may include command output, configuration checks, diagnostic results, checksums, and other records that help demonstrate what was tested.

### Technical Documentation

The `notes/` directory records learning objectives, important commands, explanations, troubleshooting steps, and lessons learned.

The intention is to make the project understandable and useful for future reference rather than treating each exercise as a one-time activity.

---

## 📂 Repository Architecture

```text
linux-journey/
│
├── notes/
│   ├── Daily learning notes
│   └── Technical explanations
│
├── labs/
│   ├── Practical Linux exercises
│   ├── Troubleshooting activities
│   └── Supporting evidence
│
├── scripts/
│   ├── System health utilities
│   ├── Administrative checks
│   └── Automation experiments
│
└── README.md
```

This is a conceptual overview; the actual files and subdirectories may vary as the repository evolves.

---

## 🧠 The Engineering Mindset

An important part of this journey is learning to approach system administration methodically.

When working through a problem, I aim to:

1. **Observe** — gather information about the system and the issue.
2. **Investigate** — identify possible causes using commands, logs, and configuration.
3. **Test** — apply an appropriate change in a controlled way.
4. **Verify** — confirm whether the change produced the expected result.
5. **Document** — record the commands, outcome, and lessons learned.

This workflow encourages evidence-based troubleshooting instead of relying on guesswork.

It also helps build habits that are valuable in infrastructure operations, where reliability, repeatability, and clear documentation matter.

---

## 📈 Skills I Am Developing

Through this bootcamp, I am working toward stronger practical capabilities in:

| Skill area | Development focus |
|---|---|
| Linux administration | Command-line proficiency, system inspection, and configuration |
| Systems troubleshooting | Investigating services, processes, errors, and logs |
| Bash automation | Writing, validating, and improving administrative scripts |
| Networking | Understanding interfaces, ports, and basic connectivity diagnostics |
| Security fundamentals | Permissions, administrative access, and security troubleshooting |
| Container operations | Working with Podman, images, containers, and volumes |
| Monitoring | Inspecting resource usage and creating basic health checks |
| Backup and recovery | Archiving data, verifying integrity, and testing restoration |
| Technical documentation | Producing clear, reproducible notes and lab records |
| Git and GitHub | Tracking changes and maintaining a public technical project |

These are developing skills supported to varying degrees by the project's exercises, not a claim of professional-level mastery.

---

## 🎯 My Career Direction

I am pursuing a path toward becoming a **Systems and Infrastructure Engineer**, with a particular interest in Linux systems.

This bootcamp is part of my effort to build a solid technical foundation through structured learning, practical experimentation, scripting, and documentation.

My longer-term interests include:

- Linux systems administration
- Infrastructure automation
- Server operations and reliability
- Networking and system security
- Cloud infrastructure fundamentals
- Monitoring and troubleshooting

I intend to build on this foundation through additional projects, more advanced labs, and continued technical study.

---

## 🔍 Explore the Project

If you are reviewing this repository:

- Start with `notes/` to explore the learning process.
- Visit `scripts/` to inspect the available Bash utilities.
- Browse `labs/` to examine practical exercises and supporting evidence.
- Review the Git history to follow the development of the project.

The most meaningful measure of progress is not the number of commands used or lessons listed, but the ability to explain the work, reproduce the results, and learn from problems encountered.

---

## 🏁 Thirty Days of Consistent Technical Learning

This bootcamp represents a step toward becoming a capable Linux and infrastructure practitioner.

From the Fedora environment where I began to the Omarchy-based environment I later adopted, the journey has reinforced the value of adaptability, practical experimentation, troubleshooting, and documentation.

The repository serves as a record of that process — including the scripts I develop, the problems I investigate, and the technical concepts I continue to strengthen.

**My objective is to keep learning, keep building, and turn foundational Linux knowledge into increasingly capable systems engineering practice.**

---

<p align="center">
  <strong>Learn by doing. Troubleshoot with evidence. Build with purpose.</strong>
</p>
