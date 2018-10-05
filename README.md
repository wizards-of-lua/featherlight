# The Wand of the Featherlight Flight Spell Pack

This spell pack is a [Wizards of Lua](http://www.wizards-of-lua.net) add-on that adds a magic wand to the Minecraft game.

The magic wand is a special feather that can lift you into the air.
Just look into the sky and swing it.
Best used together with an elytra.

You can give this spell pack a try at our alpha server: ```mc.wizards-of-lua.net:30200```

## How to Install?
This spell pack is dependent on [Minecraft Forge](http://files.minecraftforge.net/maven/net/minecraftforge/forge/index_1.12.2.html) 
and the [Wizards of Lua Modification](https://minecraft.curseforge.com/projects/wizards-of-lua/files), version 2.5.0 or later.

These are the steps to install and run the spell pack on your Minecraft Server:

1. **Install Minecraft Forge**

     Well, you should already know how to do that.
2. **Install Wizards of Lua**

     Download the JAR file containing the latest Version of 
     [Wizards of Lua Modification](https://minecraft.curseforge.com/projects/wizards-of-lua/files) and place it
     into the `mods` directory of your Minecraft server.
     
3. **Install The Wand of the Featherlight Flight Spell Pack**

    Download the JAR file containing the latest Version of 
    [The Wand of the Featherlight Flight Spell Pack](https://minecraft.curseforge.com/projects/the-wand-of-the-featherlight-flight-spell-pack/files) and place it
    into the `mods` directory of your Minecraft server.
    
4. **Restart the Server**

## Playing Instructions
### How to Get a Magic Wand?
#### By Vanilla Command
Just execute the following Minecraft command:
```
/give @p minecraft:feather 1 0 {Wand:"featherlight-flight",display:{Name:"Wand of Featherlight Flight",Lore:["Look into the sky and swing this wand"]},ench:[{id:99,lvl:1}]}
```
#### By Spell Pack Command
```
/give-feather <player>
```
Examples:
```
/give-feather MrNickKay
```
gives MrNickKay the wand of featherlight flight
