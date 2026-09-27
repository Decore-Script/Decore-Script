local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local TargetScriptUrl = "https://raw.githubusercontent.com/robvxs24/freemium/refs/heads/main/chillviethoa.lua"

-- Bật cờ để script con biết đang active
getgenv().ChilliHub_Active = true
getgenv().ChilliHub_TrialExpired = false

-- Load thẳng menu Chilli, không cần key, không trial, không lockdown
task.spawn(function()
    local ok, err = pcall(function()
        loadstring(game:HttpGet(TargetScriptUrl))()
    end)
    if not ok then
        warn("[Chilli Hub] Load thất bại: " .. tostring(err))
    end
end)
