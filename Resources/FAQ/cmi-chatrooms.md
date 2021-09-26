# FAQ - How do I setup CMI Chat for chatrooms?

Zrips Discord @ https://discord.gg/dDMamN4

You can use this on CMI version 9.x on Spigot / Paper 1.17.1 and below.

---

**CMI Chat Rooms feature (information, commands, permissions, etc)**

The CMI Chat feature allows players to create public and private chat rooms that people can join, away from the global chat. 

**Commands:**
(CMI works best if you properly configure your config.yml and your permissions.)
```
/cmi chat
You can toggle it to true in alias.yml so you can use /chat

Syntax:
/cmi chat [create/join/leave/list/invite/kick] (chatName/playerName) (-private)
```

**Permissions:**
(LuckPerms allows you to grant and negate permissions per user, group, rank, world, etc.)
```
cmi.command.chat.kick - Allows to kick players from chat room
cmi.chat.rangebypass - Allows to send messges over greater distances
cmi.command.chat.create - Allows to create chatroom
cmi.command.chat.invite - Allows to intite player into chatroom
cmi.chatgroup.[groupnumber] - Defines player custom chat group for public message format
cmi.chat.shout - Allows to send messges over greater distances
cmi.command.chat.create.private - Allows to create private chatrooms
cmi.command.chat.list - Allows to list players in chat room
cmi.command.chat.joinbypass - Allows to join private chat room without invitation
cmi.command.chat - Create and join chat rooms
cmi.command.chat.listrooms - Allows to list all chat rooms
```

**Some information from the changelogs:**

By default, if nobody's left in a chat room it will delete itself after about an hour.

Permission `cmi.command.chat.joinbypass` allows you to join a private chat room without an invitation.

Command `/cmi listroom` will display basic information about the available chat rooms. Requires permission `cmi.command.chat.listrooms` (private rooms are still protected and you will need invitation or bypass permission)

You can create private chat rooms by adding `-private`. (Players will require an invitation to join private chat rooms)

Players who got invitation to private chat room can rejoin chat room as many times as he wants, until he gets kicked from it.

---

You can find more information about the CMI plugin on the official site: [zrips.net/cmi](https://www.zrips.net/cmi/)
