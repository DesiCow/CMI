# Add-on: CMI Alt detector

## Version
This is version: 1.0 build 001, for CMI version 9.1.0.4, running on: Minecraft 1.18.1. Last updated on January 17th, 2022.

## Introduction

This is a little example addon that lets the server owner use CMI to detect players logging in from accounts with same ip, and then run some commands. However, players can easily
bypass it so you should use some Anti Proxy/VPN plugin!

[This](https://www.spigotmc.org/resources/kaurivpn-anti-proxy-tor-and-vpn-free-api.93355/) plugin is personally the best free Anti VPN/Proxy plugin out there.

## Contributions, bugs, questions, suggestions

If you have a concern, problem, question, suggestion or code contribution, please open a new Issue ticket.
https://github.com/mrfdev/CMI/issues/new/choose
Make sure it's clear this is about the alt detection add-on of course. 

## Dependencies

- [Luckperms](https://www.spigotmc.org/resources/luckperms.28140/)
- [PlaceholderAPI](https://www.spigotmc.org/resources/placeholderapi.6245/)
- [CMI](https://www.spigotmc.org/resources/cmi-298-commands-insane-kits-portals-essentials-economy-mysql-sqlite-much-more.3742/) 

## Setup Steps

- Install PAPI and it's expansion
- Install Luckperms
- Install CMI
- Utilise `firstJoinServer` CMI event for detection.

## Setup: Install PAPI and it's expansion

In the Minecraft Server's `~/plugins` directory, upload the PAPI plugin jar file and restart your server. The plugin should generate it's files.

> Next step, i.e. installing `player` expansion. 
You can do it ingame with command `/papi ecloud download Player` or you can 
