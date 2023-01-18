local TeleportService = game: GetService("TeleportService")
local Players = game: GetService("Players")


local PLACE1_ID = 12189865453
local PLACE2_ID = 12189870386


local function teleportAllCharacters()
	TeleportService:TeleportAsync(12189870386, Players:GetChildren())
	print(game.PrivateServerId)
	print(game.JobId)
end
print(game.JobId)
print(game.PrivateServerId)
wait(2)
teleportAllCharacters()