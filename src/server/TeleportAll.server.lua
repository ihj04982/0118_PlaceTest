local TeleportService = game: GetService("TeleportService")
local Players = game: GetService("Players")

local PLACE2_ID = 12189870386

local function teleportAllCharacters()
    TeleportService:TeleportAsync(PLACE2_ID, Players:GetChildren())
end

wait(5)
teleportAllCharacters()