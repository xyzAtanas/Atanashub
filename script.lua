local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
    Name = "Atanas' Exploiting Hub (OPEN SOURCE)",
                                     Icon = 123937023663411, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
LoadingTitle = "French fry loader",
LoadingSubtitle = "by Atanas",
ShowText = "Hub", -- for mobile users to unhide rayfield, change if you'd like
Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

ToggleUIKeybind = "K", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

DisableRayfieldPrompts = true,
DisableBuildWarnings = true, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

ConfigurationSaving = {
    Enabled = true,
    FolderName = nil, -- Create a custom folder for your hub/game
    FileName = "AEH",
},

Discord = {
    Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
    Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
    RememberJoins = true, -- Set this to false to make them join the discord every time they load it up
},

KeySystem = false, -- Set this to true to use our key system
KeySettings = {
    Title = "Untitled",
    Subtitle = "Key System",
    Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
    FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
    SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
    GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
    Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
}
})

local Tab = Window:CreateTab("Universal", "pin") -- Title, Image

local Button = Tab:CreateButton({
    Name = "Infinite Yield",
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
    end,
})

local Button = Tab:CreateButton({
    Name = "Cmd",
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/lxte/cmd/main/main.lua"))()
    end,
})

local Button = Tab:CreateButton({
    Name = "morfOS (NOT MACOS!!!)",
    Callback = function()
    loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-morfOS-Universal-46903"))()
    end,
})

local Tab = Window:CreateTab("Game Specific", "gamepad-2") -- Title, Image
-- idk if the buttons in this tab work
local savedKey = ""

local Input = Tab:CreateInput({
   Name = "Insert mspaint key",
   CurrentValue = "",
   PlaceholderText = "H7k9P2mXn5R8wL4vQz1tB6jY3sC9aF2d",
   RemoveTextAfterFocusLost = false,
   Flag = "Input1",
   Callback = function(Text)
       savedKey = Text
       print("Key updated to: " .. savedKey)
   end,
})

local Button = Tab:CreateButton({
   Name = "mspaint",
   Callback = function()
       if savedKey ~= "" then
           Rayfield:Notify({
               Title = "Authenticating",
               Content = "Checking key and loading script...",
               Duration = 5
           })

           script_key = savedKey
           loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/002c19202c9946e6047b0c6e0ad51f84.lua"))()
       else
           Rayfield:Notify({
               Title = "Missing Key",
               Content = "Please enter your key into the textbox first!",
               Duration = 5
           })
       end
   end,
})

local Button = Tab:CreateButton({
   Name = "mspaint main site",
   Callback = function()
       setclipboard("https://mspaint.cc/")
       
       Rayfield:Notify({
          Title = "Copied!",
          Content = "Link has been copied to your clipboard.",
          Duration = 5,
          Image = 4483362458,
          Actions = {
             Ignore = {
                Name = "Okay!",
                Callback = function()
                   print("The user acknowledged the copy.")
                end
             },
          },
       })
   end,
})

local Button = Tab:CreateButton({
    Name = "Syla Hub (Total Roblox Drama)",
                                Callback = function()
                                loadstring(game:HttpGet("https://pandadevelopment.net/virtual/file/68723c6d35eab6d3"))()
                                end,
})

local Button = Tab:CreateButton({
    Name = "Moonlight Bottle (DOORS)",
                                Callback = function()
                                loadstring(game:HttpGet('https://gist.githubusercontent.com/IdkMyNameLoll/04d7dd5e02688624b958b8c2604b924c/raw/9e86b34249f44ed2dd433176e67daaf3db30cde8/MoonBottle'))()
                                end,
})

local Button = Tab:CreateButton({
    Name = "c00lkidd Seek (DOORS)",
                                Callback = function()
                                loadstring(game:HttpGet("https://raw.githubusercontent.com/IdkMyNameLoll/PublicScripts/refs/heads/main/c00lkiddSeek"))()
                                end,
})

local Tab = Window:CreateTab("Stars Align", "pin") -- Title, Image

local Paragraph = Tab:CreateParagraph({Title = "The Stars Align section (made by me)", Content = "NOTE: Using anything here can get you banned in the game! I've never seen anyone before tho."})

local Section = Tab:CreateSection("Stars")

local Button = Tab:CreateButton({
    Name = "Teleport to Peak of the Beak star",
    Callback = function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(565, 285, -1071))
    end,
})

local Button = Tab:CreateButton({
    Name = "Teleport to Over the Bell, Under the City star",
    Callback = function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(2148, 684, -2096))
    end,
})

local Button = Tab:CreateButton({
    Name = "Teleport to Beat the Heat star",
    Callback = function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-237, 278, -2180))
    end,
})

local Button = Tab:CreateButton({
    Name = "Teleport to The Shattered City star",
    Callback = function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(503, 824, -3316))
    end,
})

local Button = Tab:CreateButton({
    Name = "Teleport to Aquatic Sparks star",
    Callback = function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1641, 311, 2202))
    end,
})

local Button = Tab:CreateButton({
    Name = "Teleport to Storm the Castle star",
    Callback = function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(6677, 1041, -3747))
    end,
})

local Button = Tab:CreateButton({
    Name = "Teleport to You're Awesome finish (no star)",
    Callback = function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-8132, 687, -5125))
    end,
})

local Section = Tab:CreateSection("Quick Teleports")

local Button = Tab:CreateButton({
    Name = "Teleport to Raven Spire",
    Callback = function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(537, -10, -1185))
    end,
})

local Button = Tab:CreateButton({
    Name = "Teleport to Concatta Ruins",
    Callback = function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1040, 36, -1758))
    end,
})

local Button = Tab:CreateButton({
    Name = "Teleport to Canyon Conservatory",
    Callback = function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-51, 26, -1741))
    end,
})

local Button = Tab:CreateButton({
    Name = "Teleport to Fractured Citadel",
    Callback = function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(352, 146, -2481))
    end,
})

local Button = Tab:CreateButton({
    Name = "Teleport to The Waterworks",
    Callback = function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1962, 106, 450))
    end,
})

local Button = Tab:CreateButton({
    Name = "Teleport to Forbidden Kingdom",
    Callback = function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(6125, 64, -1673))
    end,
})

local Button = Tab:CreateButton({
    Name = "Teleport to Mount Awesome",
    Callback = function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-8188, -3, -3962))
    end,
})

local Button = Tab:CreateButton({
    Name = "Teleport to Hydraulic Press Island",
    Callback = function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(637, 80, -1539))
    end,
})

local Button = Tab:CreateButton({
    Name = "Teleport to awesome zone",
    Callback = function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(164, 102, -1520))
    end,
})

local Button = Tab:CreateButton({
    Name = "Teleport to World's Worst Game of Hockey",
    Callback = function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(175, 77, -1967))
    end,
})

local Button = Tab:CreateButton({
    Name = "Teleport to Blender Island",
    Callback = function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(659, 60, -1971))
    end,
})

local MainTab = Window:CreateTab("Places", 4483362458)
local Section = MainTab:CreateSection("Detected Subplaces")

-- Services
local AssetService = game:GetService("AssetService")
local TeleportService = game:GetService("TeleportService")
local Debris = game:GetService("Debris")

local isTeleporting = false

local function AttemptTeleport(placeId, placeName)
    if isTeleporting then 
        Rayfield:Notify({
            Title = "Please Wait",
            Content = "Teleport is already in progress.",
            Duration = 3,
            Image = 4483362458,
        })
        return 
    end

    isTeleporting = true
    
    Rayfield:Notify({
        Title = "Teleporting...",
        Content = "Traveling to: " .. placeName,
        Duration = 5,
        Image = 4483362458,
    })

    TeleportService:Teleport(placeId)

    local connection
    connection = game.Players.LocalPlayer.OnTeleport:Connect(function(state)
        if state == Enum.TeleportState.Failed then
            isTeleporting = false
            Rayfield:Notify({
                Title = "Failed",
                Content = "Teleport failed. Please try again.",
                Duration = 5,
                Image = 4483362458,
            })
            if connection then connection:Disconnect() end
        end
    end)

    task.delay(10, function()
        if isTeleporting then
            isTeleporting = false
        end
    end)
end

task.spawn(function()
    local success, pages = pcall(function()
        return AssetService:GetGamePlacesAsync()
    end)

    if not success then
        Rayfield:Notify({
            Title = "Error",
            Content = "Could not fetch game places. API might be blocked.",
            Duration = 5,
            Image = 4483362458,
        })
        return
    end

    while true do
        for _, place in next, pages:GetCurrentPage() do
            MainTab:CreateButton({
                Name = place.Name .. " [" .. tostring(place.PlaceId) .. "]",
                Callback = function()
                    AttemptTeleport(place.PlaceId, place.Name)
                end,
            })
        end

        if pages.IsFinished then
            break
        end

        pages:AdvanceToNextPageAsync()
    end
    
    Rayfield:Notify({
        Title = "Scan Complete",
        Content = "All subplaces loaded into the list.",
        Duration = 3,
        Image = 4483362458,
    })
end)
