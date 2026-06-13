# FAQ - Frequently Asked Questions

## ❔ General Questions

### Q: What is QB-FistControl?
A: QB-FistControl is a FiveM resource that prevents accidental fistfights by requiring players to use a Right-Click + Left-Click combo to punch instead of allowing free punching.

### Q: Do I need QBCore to use this?
A: Yes, this resource is designed specifically for QBCore servers. It won't work without QBCore installed.

### Q: Is it free?
A: Yes! This resource is completely free and open-source under the MIT License.

### Q: Can I modify the resource?
A: Yes! You can modify and distribute it as long as you follow the MIT License terms.

## 🚀 Installation Questions

### Q: Where should I place this resource?
A: Place it in: `resources/[qb]/qb-fistcontrol/`

### Q: My resource won't start. What's wrong?
A:
1. Ensure QBCore is installed and running
2. Check `server.cfg` has `ensure qb-fistcontrol`
3. Check server console for errors
4. Ensure all files are in the correct folder

### Q: How do I install from git?
```bash
cd resources/[qb]
git clone https://github.com/amirragzon3/qb-fistcontrol.git
```

## ⚙️ Configuration Questions

### Q: How do I disable the system?
A: Edit `config.lua` and set:
```lua
Config.Enabled = false
```

### Q: Can I only disable the R key?
A: Yes! Set:
```lua
Config.DisableRKey = true
Config.DisableNormalAttack = false
```

### Q: How do I allow free punching?
A: Set:
```lua
Config.RequireRightClick = false
```

## 🎮 Gameplay Questions

### Q: How do I punch someone?
A: 
1. Hold Right-Click (Mouse 2)
2. While holding, press Left-Click (Mouse 1)
3. Your character will punch

### Q: Why isn't my punch working?
A:
1. Make sure you're not holding any weapons
2. Ensure Right-Click is held when pressing Left-Click
3. Check if the resource is enabled in `config.lua`

### Q: Can I modify the punch animation?
A: The animation is hardcoded to `melee@unarmed@streamed_core` animation. You can modify the `client.lua` to use different animations.

## 🐛 Troubleshooting

### Q: Resource crashes my server
A:
1. Update to latest FiveM version
2. Ensure QBCore is updated
3. Check for conflicting resources
4. Report issue on GitHub

### Q: Performance issues
A: This resource has minimal performance impact. If you experience issues:
1. Check other resources for conflicts
2. Monitor server console for errors
3. Report issue with server specs and logs

### Q: Some players say punching doesn't work
A:
1. Ensure all players have the latest resource version
2. Have affected players reconnect
3. Restart the resource

## 📚 Documentation Questions

### Q: Where can I find more help?
A:
- 📚 [README](README.md) - Full documentation
- 🤝 [Contributing](CONTRIBUTING.md) - How to contribute
- 📝 [Changelog](CHANGELOG.md) - Version history
- 💬 [GitHub Issues](https://github.com/amirragzon3/qb-fistcontrol/issues) - Report bugs

### Q: How do I contribute?
A: Read [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

## ✗ Known Issues

### Issue: Punch animations sometimes don't play
**Solution**: This can happen if animations aren't cached. Ensure GTA5 animations are properly loaded.

### Issue: Resource says it's loaded but nothing happens
**Solution**: 
1. Verify config.lua Enabled = true
2. Check that you have QBCore
3. Restart the resource

## 💤 Still Need Help?

- 🐛 [Create an Issue](https://github.com/amirragzon3/qb-fistcontrol/issues/new)
- 💬 [Start a Discussion](https://github.com/amirragzon3/qb-fistcontrol/discussions/new)
- 🔔 [Join FiveM Discord](https://discord.gg/fivem)

---

**Last Updated**: 2026-06-14