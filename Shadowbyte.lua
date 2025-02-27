if game.PlaceId == 4483381587 then
    local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

    -- About Names
    local CurrentName = "🌑 Shadowbyte 🌑"
    local CurrentGame = "a baseplate 🌐"
    local CurrentVersion = "v1.0"

    -- Function to check for updates
    local function CheckForUpdate()
        local success, LatestVersion = pcall(function()
            return game:HttpGet("https://your-update-check-url.com/latest-version") -- Replace with actual URL
        end)

        if success and LatestVersion and LatestVersion ~= CurrentVersion then
            CurrentVersion = LatestVersion -- Auto-update version number
            Rayfield:Notify({
                Title = "Update Available!",
                Content = "New version (" .. LatestVersion .. ") detected. Restart for changes!",
                Duration = 8
            })
        end
    end

    CheckForUpdate() -- Run update check at start

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
    HomeTab:CreateParagraph({Title = "Warning ⚠️", Content = "This is an easy-to-use script. If you get kicked or banned, that’s **your responsibility**, not mine or my team’s."})

    -- Auto Load & Save Configurations
    pcall(Rayfield.LoadConfiguration, Rayfield)
    local function AutoSave() pcall(Rayfield.SaveConfiguration, Rayfield) end
end
