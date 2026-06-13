# QBCore Integration

## Why QBCore?

QB-FistControl integrates with QBCore because:

1. **Standardization** - Uses QBCore's export system
2. **Compatibility** - Works with other QBCore resources
3. **Reliability** - Leverages tested framework code
4. **Community** - Aligns with popular FiveM framework

## QBCore Integration Points

### Export System

```lua
local QBCore = exports['qb-core']:GetCoreObject()
```

This gets the QBCore object for:
- Player data access
- Server events
- Notifications
- Database interactions

### Current Implementation

Currently, QB-FistControl uses QBCore minimally:
- Gets core object
- Logs to console

Future versions may add:
- Player statistics tracking
- Server-wide punch counter
- Anti-cheat integration

## Making It Work With QBCore

### Requirements

```lua
dependencies {
    'qb-core'  -- Must be running
}
```

### Manifest Declaration

```lua
shared_script 'config.lua'  -- Available to all scripts
client_script 'client.lua'   -- Client-side
server_script 'server.lua'   -- Server-side
```

## Potential QBCore Features

### Future v1.1.0

```lua
-- Track player punches
QBCore.Functions.CreateUseableItem("punch_tracker", function(source)
    -- Track stats
end)

-- Notify on first punch
QBCore.Functions.Notify(
    "You punched someone!",
    "success"
)
```

### Future v2.0.0

- Punch damage integration
- Combat logging
- Anti-cheat checks
- Statistics dashboard

## Troubleshooting QBCore Issues

### QB-FistControl loads but nothing works

**Check:**
1. Is QBCore started? (should show in console)
2. Does error appear in server console?
3. Is resource in correct folder?

**Solution:**
```bash
# Restart in order
restart qb-core
restart qb-fistcontrol
```

### "Failed to get QBCore" error

**Cause**: QBCore not running  
**Solution**: Start QBCore before QB-FistControl

```cfg
# server.cfg order matters
ensure qb-core
ensure qb-fistcontrol
```

## QBCore Commands (None Currently)

QB-FistControl currently has no admin commands.

Future versions may add:
- `/punch stats` - View punch statistics
- `/punch reset` - Reset player stats
- `/punch toggle` - Toggle for player

## Integration with Other Resources

### With qb-target
```lua
-- Could target NPCs to punch
exports['qb-target']:AddTargetEntity(npc, {
    options = {
        {
            label = "Punch",
            action = function()
                -- Punch logic
            end
        }
    }
})
```

### With qb-core Jobs
```lua
-- Could disable for certain jobs
if QBCore.Functions.GetPlayerData().job.name == "cop" then
    Config.Enabled = false
end
```

## QBCore Version Compatibility

| Version | Status | Notes |
|---------|--------|-------|
| 1.0+ | ✅ Supported | Latest versions work |
| 0.9 | ⚠️ Untested | May need adjustments |
| 0.8 | ❌ Unsupported | Too old |

## Resources

- [QBCore GitHub](https://github.com/QBCore-Framework/qb-core)
- [QBCore Documentation](https://qbcore-docs.readthedocs.io)
- [QBCore Community Discord](https://discord.gg/QC5kqkqrBu)

## Need Help?

- 🐛 [Report Issues](https://github.com/amirragzon3/qb-fistcontrol/issues)
- 💬 [GitHub Discussions](https://github.com/amirragzon3/qb-fistcontrol/discussions)
- 🔗 [QBCore Support](https://forum.cfx.re)

---

**QB-FistControl + QBCore = Better RP Experience**