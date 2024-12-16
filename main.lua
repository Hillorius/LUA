-- ServerScript (Place in ServerScriptService)
local Players = game:GetService("Players")

-- ASCII Clown
local clownASCII = [[
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠿⠿⠿⠿⠿⠿⠿⠿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⣠⣤⣄⡀⠀⠰⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⡖⠀⢀⣠⣤⣄⠀⠀⠀⠀
⠀⠀⠀⠀⠙⣿⣿⡟⢀⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⡀⢻⣿⣿⠋⠀⠀⠀⠀
⠀⠀⠀⠀⣠⣿⠏⢠⣾⣿⡟⠙⣿⣿⣿⣿⣿⣿⠋⢻⣿⣷⡄⠹⣿⣄⠀⠀⠀⠀
⠀⢰⣾⣿⣿⡏⢠⣿⣿⠏⢠⣦⠈⢿⣿⣿⡿⠁⣴⡄⠹⣿⣿⡄⢹⣿⣿⣷⡆⠀
⠀⠀⠙⢿⣿⠁⣼⣿⡟⢀⣿⣿⣇⠘⣿⣿⠃⣸⣿⣿⡀⢻⣿⣧⠈⣿⡿⠋⠀⠀
⠀⠀⠀⠸⠿⠀⣿⣿⠁⣸⡇⠀⣿⡀⢹⡏⢀⣿⠀⢸⣇⠈⣿⣿⠀⠿⠇⠀⠀⠀
⠀⠀⠀⠀⠀⠀⢿⣿⣤⡤⣤⣤⡄⢀⡤⠀⠀⢠⣤⣤⢤⣤⣿⡿⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠘⢁⣤⣤⣤⣄⡀⠏⠀⠀⠀⢀⣠⣤⣤⣤⡈⠃⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⢻⣿⡍⠹⣿⣷⣤⣀⣀⣤⣾⣿⠏⢩⣿⡟⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣦⣈⠙⠿⠿⠿⠿⠋⣁⣴⣿⠏⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⠿⣿⣶⣶⣶⣶⣿⠿⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
]]

-- Function to handle clowning the player
local function clownAndKick(player)
    -- Prompt the player to press F9 in their client chat
    player:Kick("dummy, got trolled, --Hillorius")
    print(clownASCII)
end

-- Connect to PlayerAdded
Players.PlayerAdded:Connect(function(player)
    -- Slight delay to ensure the player fully loads
    wait(1)
    clownAndKick(player)
end)

