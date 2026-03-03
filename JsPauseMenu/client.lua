local ESX, QBCore = nil, nil
local pauseActive = false

CreateThread(function()
    if Config.Framework == "ESX" then
        ESX = exports["es_extended"]:getSharedObject()
    elseif Config.Framework == "QB-Core" then
        QBCore = exports["qb-core"]:GetCoreObject()
    end
end)
local function LoadTextEntries()
    AddTextEntry('PM_SCR_MAP', 'Map of Los Santos')
    AddTextEntry('PM_SCR_GAM', 'Taking a plane')
    AddTextEntry('PM_SCR_INF', 'Logs')
    AddTextEntry('PM_SCR_SET', 'Configuration')
    AddTextEntry('PM_SCR_STA', 'Statistics')
    AddTextEntry('PM_SCR_GAL', 'Gallery')
    AddTextEntry('PM_SCR_RPL', 'Editor ∑')
    AddTextEntry('PM_PANE_LEAVE', 'Log out')
    AddTextEntry('PM_PANE_QUIT', 'Return to the office')
end
local function ApplyHudColors()
    ReplaceHudColourWithRgba(116, table.unpack(Config.HUD.LINE))
    ReplaceHudColourWithRgba(117, table.unpack(Config.HUD.STYLE))
    ReplaceHudColourWithRgba(142, table.unpack(Config.HUD.WAYPOINT))
end

-- To change the colors
-- https://docs.fivem.net/docs/game-references/hud-colors/
local function UpdatePauseHeader()
    local playerCount = #GetActivePlayers()
    local serverId = GetPlayerServerId(PlayerId())
    AddTextEntry('PM_PANE_CFX', '~y~' .. Config.ServerName)
    AddTextEntry('FE_THDR_GTAO',
        ("~w~>> ~HUD_COLOUR_NET_PLAYER24_DARK~%s ~m~| ~HUD_COLOUR_NET_PLAYER24_DARK~ID : ~w~%s ~m~| ~HUD_COLOUR_NET_PLAYER24_DARK~%s~w~/~HUD_COLOUR_NET_PLAYER24_DARK~%s ~w~joueurs")
        :format(Config.ServerName, serverId, playerCount, Config.MaxPlayers)
    )
end

CreateThread(function()
    LoadTextEntries()
    while true do
        Wait(300)
        local isActive = IsPauseMenuActive()
        if isActive and not pauseActive then
            pauseActive = true
            ApplyHudColors()
            UpdatePauseHeader()
        elseif not isActive and pauseActive then
            pauseActive = false
        end
    end
end)

CreateThread(function()
    SetDiscordAppId(Config.Discord.AppId)
    SetRichPresence("Connecté sur " .. Config.ServerName)
    SetDiscordRichPresenceAction(0, "Rejoindre", Config.Discord.Invite)
    SetDiscordRichPresenceAction(1, "Discord", Config.Discord.Invite)
    SetDiscordRichPresenceAsset(Config.Discord.LargeAsset)
    SetDiscordRichPresenceAssetText(Config.Discord.LargeText)
    SetDiscordRichPresenceAssetSmall(Config.Discord.SmallAsset)
    SetDiscordRichPresenceAssetSmallText(Config.Discord.SmallText)
    while true do
        Wait(60000)
    end
end)