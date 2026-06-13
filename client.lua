local QBCore = exports['qb-core']:GetCoreObject()
local isRightClickHeld = false
local playerPed = nil

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        
        if not Config.Enabled then
            Citizen.Wait(1000)
            return
        end
        
        playerPed = PlayerPedId()
        local weapon = GetSelectedPedWeapon(playerPed)
        
        if weapon == `WEAPON_UNARMED` then
            -- غیرفعال کردن کلید R فقط برای مشت زدن
            DisableControlAction(0, 45, true) -- 45 = کلید R
            
            -- غیرفعال کردن حمله معمولی با چپ‌کلیک وقتی راست‌کلیک نگه داشته نشده
            if not IsDisabledControlPressed(0, 25) then -- 25 = راست‌کلیک
                DisableControlAction(0, 24, true) -- 24 = چپ‌کلیک (حمله)
            end
            
            -- بررسی نگه داشته شدن راست‌کلیک برای فعال کردن مشت
            if IsDisabledControlPressed(0, 25) then
                isRightClickHeld = true
                if IsDisabledControlJustPressed(0, 24) then
                    TaskPlayAnim(playerPed, "melee@unarmed@streamed_core", "heavy_hit_a", 8.0, -8.0, -1, 48, 0, false, false, false)
                end
            else
                isRightClickHeld = false
                DisableControlAction(0, 24, true)
            end
        else
            isRightClickHeld = false
        end
    end
end)
