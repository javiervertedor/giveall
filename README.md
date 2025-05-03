# GiveAll Mod for Luanti

## Description
This mod allows server administrators to give items to **all online players** in a Luanti (formerly Minetest) server. Useful for events, classroom rewards, or server-wide distributions.

## Features
- `/giveall <itemstring> [count]`: Gives the specified item and quantity to all connected players.
- Respects the `give` privilege (only players with this can use the command).

## Installation
1. Place the `giveall` folder in your Luanti `mods` directory.
2. Enable the mod in your world configuration.
3. Ensure you have the `give` privilege to use the command.

## Usage
In the in-game chat or server console, run:

```
/giveall default:torch 10
```

This gives **10 torches** to every connected player.

## Requirements
- Luanti server with mod support
- Player issuing the command must have the `give` privilege

## License
GNU General Public License v3.0
