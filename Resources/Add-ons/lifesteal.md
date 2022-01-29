# Add-on: Lifesteal setup, for CMI
 
## Introduction

This is a premade configuration/addon that lets a server owner use CMI to add Lifesteal mechanics to their server. When You Kill Someone, You Gain A Heart, And They Lose One. This addon 
is a fan based recreation from the [Lifesteal SMP](https://www.youtube.com/watch?v=M1hSXtHSAmU).

**Note:** Heart recipe is not included in this addon, neither possible with CMI as whole. You will need to use some external plugin!

## Usage

Once installed, your players will loose one of their heart whenever killed by other Player. Once they loose all of their hearts, their gamemode would be set to spectator. 
The `/revive <player` command can be used by admins to revive any eliminated player. Eliminated players would be able to use `/spectate` to spectate their killers.
Players can also use `/withdraw <Player> <Hearts>` command to donate their hearts to other players.

## Setup Steps

- Download Placeholderapi and extension `Player`
- Make a script for deducting hearts with `playerKillPlayer` event
- Make a public `/withdraw` command
- Make a private `/revive` command
- Make a public `/spectate` command
- Test, and then test as a player.

## Setup: Make a script for deducting hearts with `playerKillPlayer` event

In the Minecraft Server's `~/plugins/CMI` directory is a file called `eventCommands.yml`, open this file up with for example Sublime Text 3 on macOS or NotePad++ on Windows.

Search for the event `playerKillPlayer` event in the file, and under the commands, at this code:

playerKillPlayer:\
&nbsp;&nbsp; Enabled: true\
&nbsp;&nbsp; Commands:
  ```
  - asConsole! attribute [playerName] minecraft:generic.max_health base set %cmi_equation_{player_max_health}-2%
  - asConsole! attribute [sourceName] minecraft:generic.max_health base set %cmi_equation_{player_max_health}+2%
  - check:%cmi_equation_{player_max_health}-2%==0! cmi usermeta [playerName] add dead true
  - check:%cmi_equation_{player_max_health}-2%==0! cmi usermeta [playerName] add killer [sourceName]
  - check:%cmi_equation_{player_max_health}-2%==0! cmi gm [playerName] spectator
  ```
## Customizing

You can of course customize all the options according to your liking, this is done mainly in *eventCommands.yml*. You can also edit the custom commands with `/cmi aliaseditor`, then pick
them from list, and customize/add to your liking.

⇨ **Default Health**: 
By default, all the players will have 10 hearts when they join for first time. If you'd like to modify this, then open the *eventCommands.yml* and add this command under _firstJoinServer_ 
event:
```
Commands:
  - asConsole! attribute [playerName] minecraft:generic.max_health base set <health>
```
Note: 1 ❤ = 2 Health points


⇨ **Loose life if not killed by Player**: By default, players would loose their hearts only if killed by a Player. If you want them to loose their hearts with each death, then replace all
the code from `playerKillPlayer` event to `playerDeath` event. 

⇨ **Health lost on death**

## Setup Steps

- Download Placeholderapi and extension `Player`
- Make a script for deducting hearts with `playerKillPlayer` event
- Make a public `/withdraw` command
- Make a private `/revive` command
- Make a public `/spectate` command
- Test, and then test as a player.

## Setup: Make a script for deducting hearts with `playerKillPlayer` event

In the Minecraft Server's `~/plugins/CMI` directory is a file called `eventCommands.yml`, open this file up with for example Sublime Text 3 on macOS or NotePad++ on Windows.

Search for the event `playerKillPlayer` event in the file, and under the commands, at this code:

playerKillPlayer:\
&nbsp;&nbsp; Enabled: true\
&nbsp;&nbsp; Commands:
  ```
  - asConsole! attribute [playerName] minecraft:generic.max_health base set %cmi_equation_{player_max_health}-2%
  - asConsole! attribute [sourceName] minecraft:generic.max_health base set %cmi_equation_{player_max_health}+2%
  - check:%cmi_equation_{player_max_health}-2%==0! cmi usermeta [playerName] add dead true
  - check:%cmi_equation_{player_max_health}-2%==0! cmi usermeta [playerName] add killer [sourceName]
  - check:%cmi_equation_{player_max_health}-2%==0! cmi gm [playerName] spectator
  ```
  

