local TARGET_ID = 4200057337
local PLACE2_ID = 12199449305

game.Players.PlayerAdded:Connect(function(player)
    if player.UserId ~= TARGET_ID then 
        return
    end
    
    local code, id = game:GetService("TeleportService"):ReserveServer(PLACE2_ID)

    local screenGui = Instance.new("ScreenGui")
    screenGui.Parent = player.PlayerGui

    local textBox1 = Instance.new("TextBox")
    textBox1.Position = UDim2.new(0, 10, 0, 10)
    textBox1.Size = UDim2.new(0, 500, 0, 50)
    textBox1.ClearTextOnFocus = false
    textBox1.Text = code
    textBox1.Parent = screenGui

    local textBox2 = Instance.new("TextBox")
    textBox2.Position = UDim2.new(0, 10, 0, 70)
    textBox2.Size = UDim2.new(0, 500, 0, 50)
    textBox2.ClearTextOnFocus = false
    textBox2.Text = id
    textBox2.Parent = screenGui
end)