-- Create the tool and set its properties
local tool = Instance.new("Tool")
tool.Name = "Teleport"
tool.RequiresHandle = false

-- Add the tool to the player's backpack when they join
game.Players.PlayerAdded:Connect(function(player)
    -- Wait until the character is added to avoid any timing issues
    player.CharacterAdded:Connect(function(character)
        -- Clone the tool to ensure each player has their own instance
        local clonedTool = tool:Clone()
        clonedTool.Parent = player.Backpack
    end)
end)

-- Function to teleport the player to the mouse location
local function onActivated()
    local player = game.Players:GetPlayerFromCharacter(tool.Parent)
    if player then
        local mouse = player:GetMouse()
        -- Make sure the mouse hit position is valid
        if mouse and mouse.Hit then
            local character = player.Character
            if character and character:FindFirstChild("HumanoidRootPart") then
                -- Set the player's HumanoidRootPart to the mouse hit position
                character.HumanoidRootPart.CFrame = CFrame.new(mouse.Hit.p + Vector3.new(0, 3, 0)) -- Add offset to avoid clipping into the ground
            end
        end
    end
end

-- Connect the function to the tool's activation event
tool.Activated:Connect(onActivated)
