# Introduction to Linux

Welcome to the introductory lecture on Linux! This lecture aims to provide a foundational understanding of Linux, its distributions, architecture, and the filesystem. By the end of this session, you'll have a solid base to explore the vast and versatile world of Linux.

## Table of Contents

- [What is Linux?](#what-is-linux)
- [Linux Distributions](#linux-distributions)
- [Linux Architecture](#linux-architecture)
- [The Linux Filesystem](#the-linux-filesystem)
- [Getting Started with Linux](#getting-started-with-linux)
- [Resources for Further Learning](#resources-for-further-learning)
- [Conclusion](#conclusion)

## What is Linux?

Linux is a free, open-source operating system (OS) based on Unix. It was first released by Linus Torvalds in 1991. As an OS, Linux manages the hardware resources for the user and provides a set of tools for program development and execution. One of Linux's core components is the Linux kernel, which handles process control, networking, access to peripherals, and file system management.

## Linux Distributions

A Linux distribution (often called a distro) is an OS made from a software collection that is based upon the Linux kernel and, often, a package management system. Linux users usually obtain their operating system by downloading one of the Linux distributions, which are available for a wide variety of systems from embedded devices and personal computers to powerful supercomputers.

### Popular Distributions

- **Ubuntu:** Known for its user-friendliness and active community.
- **Fedora:** Features cutting-edge software and innovations.
- **Debian:** Praised for its stability and reliability.
- **Arch Linux:** Aimed at experienced users who want to customize their OS.
- **CentOS:** Preferred in enterprise environments for its stability and long-term support.

## Linux Architecture

Linux architecture is modular, comprising the Linux kernel, system libraries, and user applications. At its core, the kernel manages the system's resources and hardware. Above the kernel, system libraries provide a set of standard functions that applications can use to perform specific tasks, and user applications provide the functionality to fulfill user needs.

### Key Components

- **Kernel:** The core of the Linux system.
- **System Libraries:** Interface between the kernel and applications.
- **System Utilities:** Programs that perform individual, specialized management tasks.
- **Application Programs:** Various software to perform work or provide services.

## The Linux Filesystem

The Linux filesystem is a hierarchical structure where all files and directories are located under the root directory, denoted by "/". This structure allows for efficient file storage, management, and access. Key directories include:

sh
/
├── bin/               # Essential user command binaries
├── etc/               # System configuration files
├── home/
│   ├── user1/
│   └── user2/
├── opt/               # Optional add-on applications
├── lib/               # Essential shared libraries and kernel modules
├── mnt/               # Temporary mount point
├── dev/               # Device files
├── var/
│   ├── log/           # Log files
│   └── mail/          # Mail server files
├── proc/              # Process information pseudo-filesystem
└── usr/
    ├── bin/           # User binaries
    ├── lib/           # Libraries for the binaries in /usr/bin/
    ├── local/
    │   ├── bin/       # Local binaries
    │   └── lib/       # Local libraries
    └── share/         # Architecture-independent data
´´´

## Resources for Further Learning

- [Linux.org](https://linux.org/)
- [The Linux Documentation Project](https://www.tldp.org/)
- [Arch Wiki](https://wiki.archlinux.org/)
- [Ubuntu Documentation](https://ubuntu.com/tutorials)
