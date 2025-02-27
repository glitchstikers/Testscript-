if game.PlaceId == 4483381587 then
    local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

    -- Information
    local CurrentName, CurrentGame, CurrentVersion = "🌑 Shadowbyte 🌑", "a baseplate 🌐", "v1.0"

    -- Function to check for updates
    local function CheckForUpdate()
        local success, LatestVersion = pcall(function()
            return game:HttpGet("https://raw.githubusercontent.com/glitchstikers/Testscript-/main/Shadowbyte.lua") -- Ensure this file contains only the version string (e.g., "v1.1")
        end)

        if success and LatestVersion and LatestVersion ~= CurrentVersion then
            Rayfield:Notify({
                Title = "Update Available!",
                Content = "New version detected (" .. LatestVersion .. "). Restart for changes!",
                Duration = 8
            })
            CurrentVersion = LatestVersion -- Auto-update version number
        end
    end

    CheckForUpdate() -- Run update check on start

    -- Main UI Window
    local Window = Rayfield:CreateWindow({
        Name = string.format("| %s | %s | %s |", CurrentName, CurrentGame, CurrentVersion),
        Icon = 0,
        LoadingTitle = "Shadowbyte Interface Suite",
        LoadingSubtitle = "by Shadow Team",
        Theme = "Dark",
        ConfigurationSaving = {Enabled = true, FolderName = "Shadowbyte", FileName = "UserConfig"}
    })

    -- Home Tab
    local HomeTab = Window:CreateTab("Home", 4483381587)
    HomeTab:CreateSection("Support")
    HomeTab:CreateParagraph({Title = "About Us", Content = "This is a test example script."})
    HomeTab:CreateSection("Disclaimer")
    HomeTab:CreateParagraph({Title = "Warning ⚠️", Content = "If you get kicked or banned, that’s **your responsibility**, not mine or my team’s."})

    -- Auto Load & Save Configurations
    pcall(function() Rayfield:LoadConfiguration() end)
    local function AutoSave() pcall(function() Rayfield:SaveConfiguration() end) end
end
