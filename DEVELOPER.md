# Developer Guide

## Understanding the Code

### Architecture Overview

QB-FistControl follows a simple architecture:

```
FiveM Game Loop
    ↓
Client Thread (client.lua)
    ↓
Check if unarmed
    ↓
Monitor Right-Click + Left-Click
    ↓
Trigger Punch Animation
```

### Core Components

#### 1. Client Script (client.lua)

The main logic that runs on the client side.

**Key Functions:**
- `Citizen.CreateThread()` - Main game loop
- `DisableControlAction()` - Disables specific controls
- `IsDisabledControlPressed()` - Checks if control is pressed
- `TaskPlayAnim()` - Plays the punch animation

**Variables:**
- `isRightClickHeld` - Tracks if Right-Click is held
- `playerPed` - Reference to player's character
- `weapon` - Currently selected weapon

#### 2. Server Script (server.lua)

Server-side initialization and logging.

```lua
local QBCore = exports['qb-core']:GetCoreObject()
print('^2[QB-FISTCONTROL] Advanced Fist Control System Loaded^7')
```

#### 3. Configuration (config.lua)

All configurable options.

```lua
Config.Enabled              -- Master enable/disable
Config.DisableRKey         -- Disable R key
Config.DisableNormalAttack -- Disable left-click
Config.RequireRightClick   -- Require combo
```

#### 4. Manifest (fxmanifest.lua)

Defines resource metadata and dependencies.

## Control Codes Reference

| Code | Control | Description |
|------|---------|-------------|
| 24 | ATTACK | Left mouse button (punch) |
| 25 | AIM | Right mouse button (aim/hold) |
| 45 | RELOAD | R key |

## Control Disabling System

### How It Works

1. **Check if unarmed** (no weapon equipped)
2. **If unarmed:**
   - Disable R key (control 45)
   - If Right-Click NOT held: Disable Left-Click (control 24)
   - If Right-Click held: Enable Left-Click
3. **If armed:** Allow normal attacks

### Code Flow

```lua
if weapon == `WEAPON_UNARMED` then
    -- Disable R key
    DisableControlAction(0, 45, true)
    
    if not IsDisabledControlPressed(0, 25) then
        -- Right-Click not held: disable left-click
        DisableControlAction(0, 24, true)
    end
    
    if IsDisabledControlPressed(0, 25) then
        -- Right-Click held: mark as held
        isRightClickHeld = true
        
        if IsDisabledControlJustPressed(0, 24) then
            -- Left-Click just pressed: play animation
            TaskPlayAnim(...)
        end
    end
end
```

## Animation System

### Current Animation

```lua
TaskPlayAnim(
    playerPed,                              -- Who
    "melee@unarmed@streamed_core",       -- Animation dictionary
    "heavy_hit_a",                        -- Animation name
    8.0,                                   -- Speed
    -8.0,                                  -- Speed2
    -1,                                    -- Duration (-1 = play once)
    48,                                    -- Flags (0x30 = loop)
    0,                                     -- Unknown
    false, false, false                    -- Unknown flags
)
```

### Available Animations

You can replace `heavy_hit_a` with:
- `light_hit_a` - Light punch
- `light_hit_b` - Another light punch
- `heavy_hit_b` - Heavy punch variant

## Modifying the Resource

### Adding New Features

#### 1. Add Configuration Option

```lua
-- config.lua
Config.CustomFeature = true
```

#### 2. Add Logic to Client

```lua
-- client.lua
if Config.CustomFeature then
    -- Your logic here
end
```

### Example Modifications

#### Disable Only R Key

```lua
-- config.lua
Config.DisableRKey = true
Config.DisableNormalAttack = false
Config.RequireRightClick = false
```

#### Change Punch Animation

```lua
-- client.lua, line 30
TaskPlayAnim(playerPed, "melee@unarmed@streamed_core", "light_hit_a", 8.0, -8.0, -1, 48, 0, false, false, false)
```

#### Add Sound Effect

```lua
-- client.lua, after TaskPlayAnim
PlaySoundFrontend(-1, "PUNCH", "DAMAGE_SOUNDS", true)
```

## Performance Considerations

### Current Performance
- **Thread**: Uses `Citizen.Wait(0)` for smooth operation
- **CPU Usage**: Minimal (only when unarmed)
- **Memory**: ~0.1MB
- **Network**: Client-side only (no server traffic)

### Optimization Tips

1. **Reduce thread frequency** (use `Citizen.Wait(10)` instead of 0)
2. **Cache weapon check** (only check every 100ms)
3. **Use events** instead of polling

## Testing

### Local Testing

1. Start FiveM server
2. Load resource: `ensure qb-fistcontrol`
3. Connect as player
4. Test: Hold Right-Click + press Left-Click

### Debug Mode

Add debug output:

```lua
if Config.Debug then
    print("Right-Click: " .. tostring(isRightClickHeld))
    print("Weapon: " .. GetSelectedPedWeapon(playerPed))
end
```

## Common Issues & Solutions

### Issue: Animation doesn't play
**Cause**: Weapon check failing  
**Solution**: Verify `GetSelectedPedWeapon()` returns `WEAPON_UNARMED`

### Issue: Controls stay disabled
**Cause**: Thread crashed  
**Solution**: Check server logs for errors

### Issue: Punch works too frequently
**Cause**: Low Wait value  
**Solution**: Increase `Citizen.Wait()` value

## Resources

- [FiveM Docs - Natives](https://docs.fivem.net/docs/game-references/natives/)
- [FiveM Wiki](https://wiki.fivem.net)
- [Lua Documentation](https://www.lua.org/docs.html)
- [GTA V Animations](https://alexguirre.github.io/animations-list/)

## Contributing Code

1. Fork repository
2. Create feature branch
3. Make changes
4. Test thoroughly
5. Submit pull request

See [CONTRIBUTING.md](CONTRIBUTING.md) for detailed guidelines.

---

**Questions? Create an issue on GitHub!**