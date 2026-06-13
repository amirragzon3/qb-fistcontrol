# QB-FistControl

A FiveM qb-core resource that prevents accidental fistfights and requires a specific key combo to punch.

## Features

- ✅ Disable R key for automatic punching
- ✅ Disable normal left-click attacks
- ✅ Right-click must be held to enable punches
- ✅ Smooth punch animations
- ✅ Configurable system

## Requirements

- [qb-core](https://github.com/QBCore-Framework/qb-core)

## Installation

1. Download the resource
2. Place it in your `resources` folder
3. Add `ensure qb-fistcontrol` to your `server.cfg`
4. Restart your server

## Usage

**To punch someone:**
- Hold Right-Click (Mouse 2)
- While holding, press Left-Click (Mouse 1)
- The punch will execute smoothly

## Configuration

Edit `config.lua` to customize:

```lua
Config.Enabled = true                    -- Enable/disable the system
Config.DisableRKey = true               -- Disable R key for punching
Config.DisableNormalAttack = true       -- Disable normal left-click attacks
Config.RequireRightClick = true         -- Require right-click to punch
```

## Author

Created by Mirza

## License

MIT License