# FAQ - How can I import from EssentialsX into CMI?

Zrips Discord @ https://discord.gg/dDMamN4

This is the recommended setup that works well for me personally on Spigot / Paper 1.17.1.

---

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> CMI can import data from EssentialsX

- Buy the [CMI](https://www.zrips.net/cmi/) premium plugin if you haven't already, and Install it on all your servers: <https://www.spigotmc.org/resources/3742/>
- Note: CMI requires the [CMI-Library](https://github.com/mrfdev/CMI/edit/master/Resources/FAQ/cmi-library.md) .jar, you can get it here: <https://www.spigotmc.org/resources/cmilib.87610/>

- Configure CMI to your liking. 

- Then turn on Maintenance mode:
```yaml
/cmi maintenance true Working on the server, back later
/stop
```
- Start the server again, you will do this quite a few times, hence why I recommend moving to maintenance mode true, and to do the rest from console.

- Do not let anybody, including yourself, login to the server. Work from console.

- First I would import old users into CMI if any, if possible: (# Imports users from playerdata folder in main world folder. Server can suffer lag spike during import)
Note: When it's done, do a little save-all, stop, and start the server again.
```yaml
cmi importoldusers
```

- Before we import from EssentialsX, Essentials plugin is not needed for it to work. But the folder from that plugin obviously is needed. Read up on this page first: <https://www.zrips.net/cmi/faq/> 

- Now to import from EssentialsX, and still from console.
Note: `importfrom [essentials/hd] [home/warp/nick/logoutlocation/money/mail]`
Note: After EACH imported bit of data, do a little save-all, stop, and start the server again. Only now, confirm the data is there, if possible.
```yaml
cmi importfrom essentials (ONE THING AT A TIME)
so, .. first, 
cmi importfrom essentials home
then, save-all, stop, and start the server again. If all is well:
cmi importfrom essentials logoutlocation
then, save-all, stop, and start the server again. If all is well:
cmi importfrom essentials money
restart again
cmi importfrom essentials mail
restart again
cmi importfrom essentials nick
restart again
cmi importfrom essentials warp
```

Note: Yes, annoying, but .. doing it all at once, I've had issues in the past, every server is different. This is what has worked for me. Going through it one by one, and checking the data in between. If something worked, I even made a backup, so i have a snapshot to roll back to and try again. 

- Next, CMI also has a worth.yml file, from what I understand you can just drop the essentialsx worth.yml, overwriting the cmi one. 

- And, CMI doesn't have a kit importer, but, you can in-game create the cmi kits with /cmi kiteditor, and then give yourself the essentialsx kit, then put those items in the cmi kit, and you're set.

- World management addons from EssentialsX are not 100% in CMI, but most features are, and even more so grief defender, or zrips' residence, or worldguard, all have world management features that do exactly that anyway.

- Check the FAQ here, to see how to get started using CMI, for example.. how to setup cmi as chat manager, economy manager, bungee chat, custom /help, custom /rules, deal with NuVotifier votes, hex colors, how to setup custom alias commands or configure cmi's base commands. etc..
<https://github.com/mrfdev/CMI/tree/master/Resources/FAQ>

- And finally; `/stop` the server, and start it up again to guarantee that everything's working properly.

## <g-emoji class="g-emoji" alias="information_source" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2139.png">ℹ️</g-emoji> Unofficial Import Tool

Hi there, someone recently made me aware of this import tool. Please note that I did not review the code, or the provided jar file. Please vet it before using it yourself. It's not an official tool, using it is at your own risk. But I think it's worth to mention at least. <https://github.com/BlackBeltPanda/Essentials-Kits-To-CMI> This should help servers with loads of kits to maybe do the bigger part of the import work, after which they can clean things up. Might save time.

---

You can find more information about the CMI plugin on the official site: [zrips.net/cmi](https://www.zrips.net/cmi/)
