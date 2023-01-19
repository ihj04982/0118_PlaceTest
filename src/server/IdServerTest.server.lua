
local TeleportService = game: GetService("TeleportService")
local players = game:GetService("Players")

local TARGET_ID = 4200057337

local PLACE1_ID = 12199299197
local PLACE2_ID = 12199449305


players.PlayerAdded:Connect(function(player)
    local userId = player.UserId
    if userId == TARGET_ID then
        print("target")
        wait(5)
        -- local options = Instance.new("teleportOptions")
        TeleportService:TeleportAsync(12199449305, player, nil)
	else
	    return
	end
end)
