# QB-FistControl 🥊

[![Stars Badge](https://img.shields.io/github/stars/amirragzon3/qb-fistcontrol?style=flat-square&logo=github)](https://github.com/amirragzon3/qb-fistcontrol)
[![License](https://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)](LICENSE)
[![FiveM](https://img.shields.io/badge/Framework-FiveM-red?style=flat-square&logo=gta5)](https://fivem.net)
[![QB-Core](https://img.shields.io/badge/Core-QBCore-blue?style=flat-square)](https://github.com/QBCore-Framework/qb-core)

A **high-performance FiveM resource** for QBCore that prevents accidental fistfights by implementing a **Right-Click + Left-Click combo system**. This resource eliminates unwanted punches and provides smooth, controlled combat mechanics.

## 🎯 Features

- ✅ **Disable R Key**: Prevents automatic punching trigger
- ✅ **Disable Normal Attacks**: Removes left-click default punch
- ✅ **Combo System**: Requires Right-Click + Left-Click to punch
- ✅ **Smooth Animations**: Professional punch animations
- ✅ **Fully Configurable**: Easy on/off toggle and feature control
- ✅ **Zero Performance Impact**: Optimized threading
- ✅ **QBCore Native**: Seamless integration with QBCore

## 📋 Requirements

- **FiveM Server** (Latest version recommended)
- **QBCore Framework** - [Download](https://github.com/QBCore-Framework/qb-core)
- **Lua 5.1+**

## 🚀 Quick Start

### Installation

1. **Download** the resource
   ```bash
   git clone https://github.com/amirragzon3/qb-fistcontrol.git
   ```

2. **Place in resources folder**
   ```
   resources/[qb]/qb-fistcontrol/
   ```

3. **Add to server.cfg**
   ```cfg
   ensure qb-fistcontrol
   ```

4. **Restart server**
   ```
   restart qb-fistcontrol
   ```

## 📖 Usage

### How to Punch

| Action | Key |
|--------|-----|
| Hold to enable punch | **Right-Click (Mouse 2)** |
| Execute punch | **Left-Click (Mouse 1)** while holding Right-Click |

**Example:**
1. Hold your Right Mouse Button (Right-Click)
2. While holding it, press Left Mouse Button (Left-Click)
3. Character executes smooth punch animation

## ⚙️ Configuration

Edit `config.lua` to customize behavior:

```lua
Config = {}

Config.Enabled = true                    -- Enable/disable entire system
Config.DisableRKey = true               -- Disable R key for punching
Config.DisableNormalAttack = true       -- Disable normal left-click attacks
Config.RequireRightClick = true         -- Require right-click to punch

Config.Messages = {
    -- Custom messages (leave empty if not needed)
}
```

### Configuration Examples

**Disable the system temporarily:**
```lua
Config.Enabled = false
```

**Only disable R key (keep left-click):**
```lua
Config.DisableRKey = true
Config.DisableNormalAttack = false
```

**Enable free punching (disable combo system):**
```lua
Config.RequireRightClick = false
```

## 📁 File Structure

```
qb-fistcontrol/
├── client.lua          # Client-side logic and controls
├── server.lua          # Server-side initialization
├── config.lua          # Configuration file
├── fxmanifest.lua      # Manifest file
├── README.md           # Documentation
└── LICENSE             # MIT License
```

## 🔧 How It Works

### Control Flow
1. **Weapon Check**: System monitors when player is unarmed
2. **Control Disabling**: Disables default attack controls
3. **Input Detection**: Detects Right-Click + Left-Click combo
4. **Animation Trigger**: Plays punch animation when combo is detected
5. **Loop**: Repeats for smooth experience

### Performance
- **Single Thread**: Uses efficient Citizen.Wait(0)
- **Minimal CPU**: Only active when unarmed
- **Zero Memory Leak**: Proper variable management

## 🎮 Commands

Currently, this resource doesn't use any commands. All functionality is automatic.

## 📸 Screenshots

*Coming soon...*

## 🤝 Contributing

Contributions are welcome! Please feel free to:
- 🐛 [Report Bugs](https://github.com/amirragzon3/qb-fistcontrol/issues)
- 💡 [Suggest Features](https://github.com/amirragzon3/qb-fistcontrol/issues)
- 🔧 [Submit Pull Requests](https://github.com/amirragzon3/qb-fistcontrol/pulls)

## 📝 License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

## 👨‍💻 Author

**Mirza** - [GitHub Profile](https://github.com/amirragzon3)

## 🙌 Support

If you find this resource useful, please consider:
- ⭐ **Starring** this repository
- 🔗 **Sharing** with other FiveM developers
- 💬 **Leaving feedback** in the discussions tab

## 📚 Resources & Links

- [FiveM Documentation](https://docs.fivem.net)
- [QBCore Documentation](https://qbcore-docs.readthedocs.io)
- [GTA V Animations](https://www.gta5-mods.com)

## ⚠️ Disclaimer

This resource is provided as-is for use with FiveM servers. Ensure compliance with your server's rules and regulations. The author is not responsible for misuse of this resource.

## 🐛 Known Issues

None currently. Please report any issues found.

## 🗺️ Roadmap

- [ ] Multi-language support
- [ ] Custom punch animations
- [ ] Punch damage system
- [ ] Sound effects
- [ ] Admin commands

---

**Made with ❤️ for the FiveM Community**