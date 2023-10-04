---
layout: post
title: "Writing technical documentation for my personal tech setup has made my life easier"
tags: technology
---

> "This is the difference between me and you. I don’t write documents with "strategy" in the title for fun."
>
> -- *my partner, Emma, seeing a "personal digital backup strategy" doc on my computer*

As software developers, we know the importance of good documentation for describing how a technical system works to someone approaching the system, especially for the first time. But in my personal life, the technology I use in my home (or on my website) is its own system that requires configuration and upkeep. And when a home system needs my attention, I keep finding that "me, over six months since I last worked on this system" is often as helpless as if I were a new developer to a software project.

My personal technical projects tend to fall into disrepair with time: access tokens expire, integrations and APIs are deprecated, dependabot demands incompatible library updates, a software update breaks a behavior that had required a niche configuration to set up. When my home media streaming setup stopped working after a system update, I spent more time doing archaeology about how my local services were configured than I did debugging and fixing the actual problem. I had to re-research facts that had once been fresh in my mind, like where Plex’s log files were stored, which configurations I’d overridden, what custom scripts and crons I’d added and how they might fail. It took me doing this a few times before realizing some documentation was [worth the time](https://xkcd.com/1205/) and I started keeping technical documents.

Over the last few years, **I’ve written personal design documents for**:

- How my apps are containerized and orchestrated on my VPS
- How my fully automatic CI/CD gets new code in GitHub straight to production
- My personal digital backup configuration, using B2 with a few Linux clients
- My home media setup, including services for streaming, downloading, and managing content
- A playbook for restoring my VPS from a clean install (written after a horrible migration from a 32-bit VPS image I’d run for almost a decade)
- How I configure my Yubikeys with my own secured, offline GPG keys that can be used for PGP actions and SSH

I don’t spend the same rigor on a personal "design document" as I do a professional one. For one thing, I’m writing for an audience of one: a future me who’s forgotten all the system details and likely much of my current intent, not a broader organization I need to convince or other engineers to debate trade-offs with. For another, I’m less picky about what does or doesn’t go into the "design document" than I might be professionally; 2-3 pages is usually enough to describe a personal-sized tech system for future-me, so anything relevant can typically fit.

**What kind of detail does that look like?** I try to document enough to quickly restore the bones of the current mental context that I have loaded in while working on the app. This often means:

- a high-level architecture diagram
- a list of running services with links to their config files, logs, and dashboards
- a list of any users, accounts, or keys I had to create, and how to manage them
- a TODO list, if I’m skipping formal issue tracking
- playbook directions for debugging, including how to update the service, how to restart it, and how to verify it’s working after changes.

I don’t have a specific template, but having just these details has usually been enough context to boost me straight into productive work on the system at hand.

This method has saved me a lot of time since I started doing it, and helps me feel less anxious about the systems I’ve set up for myself. It’s almost *exciting* to realize something’s broken, knowing the context will help me fix it in 10-15 minutes instead of an hour.

Hope this helps you too!