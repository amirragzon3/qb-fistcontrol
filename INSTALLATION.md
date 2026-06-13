# Installation Guide

## Prerequisites

Before installing QB-FistControl, ensure you have:

- ✅ **FiveM Server** (Latest version recommended)
- ✅ **QBCore Framework** installed and running
- ✅ **Git** (optional, for cloning the repository)
- ✅ **Administrator access** to your server

## Step-by-Step Installation

### Method 1: Git Clone (Recommended)

1. **Navigate to your resources folder**
   ```bash
   cd your-server/resources/[qb]
   ```

2. **Clone the repository**
   ```bash
   git clone https://github.com/amirragzon3/qb-fistcontrol.git
   ```

3. **Add to server.cfg**
   ```cfg
   ensure qb-fistcontrol
   ```

4. **Restart your server**
   ```bash
   restart qb-fistcontrol
   ```

### Method 2: Manual Download

1. **Download the ZIP file** from [GitHub Releases](https://github.com/amirragzon3/qb-fistcontrol/releases)

2. **Extract to resources folder**
   ```
   your-server/resources/[qb]/qb-fistcontrol/
   ```

3. **Add to server.cfg**
   ```cfg
   ensure qb-fistcontrol
   ```

4. **Restart your server**

## Folder Structure

Ensure your folder structure looks like this:

```
your-server/
└── resources/
    └── [qb]/
        └── qb-fistcontrol/
            ├── client.lua
            ├── server.lua
            ├── config.lua
            ├── fxmanifest.lua
            ├── README.md
            ├── LICENSE
            ├── CHANGELOG.md
            ├── CONTRIBUTING.md
            ├── FAQ.md
            ├── .gitignore
            └── index.md
```

## Verification

After installation, verify everything is working:

1. **Check server console** for the startup message:
   ```
   [QB-FISTCONTROL] Advanced Fist Control System Loaded
   - Disabled R key for punching
   - Disabled normal Left Click attack
   - Right Click must be held to enable punches
   ```

2. **Connect to your server** as a player

3. **Test the feature**:
   - Hold Right-Click
   - Press Left-Click
   - Your character should punch

## Configuration (Optional)

Edit `config.lua` to customize:

```lua
Config.Enabled = true                    -- Enable/disable
Config.DisableRKey = true               -- Disable R key
Config.DisableNormalAttack = true       -- Disable normal attacks
Config.RequireRightClick = true         -- Require right-click combo
```

## Troubleshooting

### Resource won't start
- Ensure QBCore is running
- Check file permissions
- Verify folder path is correct

### No console message appears
- Check if the resource is in `server.cfg`
- Verify fxmanifest.lua is correct
- Check server console for errors

### Punching doesn't work
- Verify config.lua has Enabled = true
- Ensure you have the latest resource version
- Try reconnecting to the server

## Updating

To update to the latest version:

### Using Git
```bash
cd resources/[qb]/qb-fistcontrol
git pull origin main
restart qb-fistcontrol
```

### Manual Update
1. Download latest version
2. Backup current files
3. Replace with new files
4. Restart resource

## Support

If you encounter issues:

1. 🐛 [Check Known Issues](FAQ.md)
2. 📊 [Create an Issue on GitHub](https://github.com/amirragzon3/qb-fistcontrol/issues/new)
3. 💬 [Start a Discussion](https://github.com/amirragzon3/qb-fistcontrol/discussions)

---

**Happy punching! 👊**