
local TeleportService = game:GetService("TeleportService")
-- local players = game:GetService("Players")

local TARGET_ID = 4200057337

local PLACE1_ID = 12199299197
local PLACE2_ID = 12199449305

local currentServer = game.JobId
local currentPlace = game.PlaceId

local teleportOptions = Instance.new("TeleportOptions")
teleportOptions.ReservedServerAccessCode = "yjLwMb5oj5F8IAO6AHAaHRQcfd_c5OlMp_7zTp6Gpg_Z0iTXAgAAAA2"

game.Players.PlayerAdded:Connect(function(player)
    local userId = player.UserId
    if userId == TARGET_ID then
        TeleportService:TeleportAsync(PLACE2_ID, {player}, teleportOptions)
        local success, result = pcall(function()
            return TeleportService:TeleportAsync(PLACE2_ID, {player}, teleportOptions) -
        end)
        -- print("Player1 PlaceId : "..currentPlace.." JobId : "..currentServer)
	else
        
        TeleportService:TeleportAsync(PLACE2_ID, {player})
	    -- print("not a target")
        -- print("Player2 PlaceId : "..currentPlace.." JobId : "..currentServer)
	end
end)
