# FAQ - How can I use CMI Chat with Bungee?

Zrips Discord @ https://discord.gg/dDMamN4

**CMI can handle Bungee wide chat**, this is the recommended setup that works well with other plugins on Spigot / Paper 1.17.1 and lower.

---

- Buy the [CMI](https://www.zrips.net/cmi/) premium plugin if you haven't already, and Install it on all your servers: <https://spigotmc.org/resources/3742/>
- Note: CMI requires the [CMI-Library](https://github.com/mrfdev/CMI/edit/master/Resources/FAQ/cmi-library.md) .jar, you can get it here: <https://spigotmc.org/resources/cmilib.87610/>

- Download and Install CMI-Bungeecord on your proxy server (<https://www.zrips.net/wp-content/uploads/2020/02/CMIB1.0.0.4.jar>)
- Update CMI's `config.yml` (see below)
```yaml
# Enable CMI Bungee Support 
BungeeCord:
  # You can disable bungeecord support entirely if you are exrperiencing issues with it
  # When setting this to false some features like public messages over bungee cord, private messages over bungeecord, portals over bungecoord and other features will stop working
  # Keep in mind that regular behavior of those features will remain intacted
  Enabled: true

# CMI config.yml, enable CMI Chat and CMI Bungee Chat
Chat:
  # Will try to modify chat to display it in defined format
  ModifyChatFormat: true

# Also:

  # Do you want to enable private messaging over bungeecord
  BungeeMessages: true
  # Do you want to enable public messaging over bungeecord
  BungeePublicMessages: true
  # Do you want to enable staff messaging over bungeecord
  BungeeStaffMessages: true
```
Then walk through all the other options related to chat. 

Don't forget to set-up appropriate permissions, such as:
`cmi.bungee.publicmessages.[servername]`


- And finally; `/stop` the server, and start it up again to guarantee that everything's working properly. More information on <https://www.zrips.net/cmi/>

## Misc.

**Placeholders:**
```
%cmi_user_bungeeserver%
%cmi_bungee_total_spawn%
%cmi_bungee_current_spawn%
%cmi_bungee_motd_spawn%
%cmi_bungee_onlinestatus_spawn%
```

**Commands:**
```
cmi server [serverName] (playerName) (-f) (Connects [playerName] to bungeecord server)
cmi serverlist (Show server list)
cmi bbroadcast (!) [message] (-s:[serverName,serverName]) (Sends special message to all players on all servers)
cmi sendall [serverName] (Send all online players to target server)
(and through CMI chat: /msg, /r, /staffmsg, .. i assume?)
```

**Permissions:**
```
cmi.command.serverlist - Show server list
cmi.command.serverlist.others - Show server list
cmi.command.server.others - Connect to bungeecord server
cmi.command.bbroadcast - Sends special message to all players on all servers
cmi.bungee.publicmessages.spawn - Allows to send public messages to target server
cmi.command.sendall.bypass - Prevents player from being sent to target server
cmi.command.sendall - Send all online players to target server
cmi.command.server - Connect to bungeecord server
```

**config.yml:**
```yaml
  # Attention! This will require you to have CMI Bungee plugin which can be found at zrips.net
  # Or direct download https://www.zrips.net/cmi/
  # Do you want to enable private messaging over bungeecord
  BungeeMessages: false
  # Do you want to enable public messaging over bungeecord
  BungeePublicMessages: false
  # Do you want to enable staff messaging over bungeecord
  BungeeStaffMessages: false

BungeeCord:
  # You can disable bungeecord support entirely if you are exrperiencing issues with it
  # When setting this to false some features like public messages over bungee cord, private messages over bungeecord, portals over bungecoord and other features will stop working
  # Keep in mind that regular behavior of those features will remain intacted
  Enabled: false
  # When set to true player names from entire bungee network will be included into tab complete
  NamesInTabComplete: false
```

**Installation instructions:** (from what i gathered)
- Buy CMI for the network
- Install CMI on each server
- Get CMI Bungee jar and put it on the proxy
- Configure CMI properly, use CMI chat, and enable Bungee as per above config things.

I do not believe there's any `modules.yml` things that need to get enabled.

**FAQ:**
```
- if i run 2 servers and they're not in the same network, do i need two licenses? yes, basically you do.
- if i run 3 servers and they're all on the same network, do i need three licenses? no, from what i gather that license covers the network, i dont know the official stance on this though
- is chat global? yes
- can i sync up economy on all servers? no, probably not
- can all the /warps be the same on all servers? not that i am aware of.
- are my inventories shared between servers? i doubt it, you probably need a bungee-inventory plugin dedicated to this
- can i use 1 database for all cmi instances? no, default is sqlite, use mysql, and make sure they all use a unique prefix. Using 1 user table for every server for example will very very very likely cause massive issues.
```

---

You can find more information about the CMI plugin on the official site: [zrips.net/cmi](https://www.zrips.net/cmi/)

## LATEST
Per CMI 9.0.4.3 this was in the changelog:
```
- Added better support for bungeeservers in the sense that now we can show custom messages when player switch servers to and from it. This will only works after you update CMIB plugin and only applies when you have custom login/logout messages enabled. New locale lines got added to CMI locale file
- Updating CMIB plugin will properly take player out of afk mode if he uses bungee only commands which previously would have been ignored
```
