local ped
local isSelling = false

local fish = {
    fish = true,
    fish2 = true,
    catfish = true,
    goldfish = true,
    largemouthbass = true,
    redfish = true,
    salmon = true,
    stingray = true,
    stripedbass = true,
    whale = true,
    whale2 = true
}

RegisterNetEvent('qb-fishing:client:OpenSale', function()
    -- Anti spam
    if isSelling then return end

    -- Start with empty menu
    local menu = {
        {
            header = "Fish Sale Menu",
            txt = "ESC or click to close",
            icon = 'fas fa-angle-left',
            params = {
                event = "qb-menu:closeMenu",
            }
        }
    }

    -- Add options to the menu
    local items = QBCore.Functions.GetPlayerData().items
    for k, v in pairs(items) do
        if fish[v.name] then
            menu[#menu+1] = {
                header = QBCore.Shared.Items[v.name].label,
                txt = "Amount: "..v.amount,
                icon = "fas fa-fish-fins",
                params = {
                    event = "qb-fishing:client:SellFish",
                    args = v.name
                }
            }
        end
    end

    -- Open menu
    exports['qb-menu']:openMenu(menu)
end)

RegisterNetEvent('qb-fishing:client:SellFish', function(itemName)
    -- Ask the player how many he wishes to sell
    local sellingAmount = exports['qb-input']:ShowInput({
        header = "Sell "..QBCore.Shared.Items[itemName].label,
        submitText = "Submit",
        inputs = {
            {
                type = 'number',
                isRequired = true,
                name = 'amount',
                text = 'Amount'
            }
        }
    })

    if tonumber(sellingAmount.amount) < 0 then return end
    
    -- Check if player can sell that many
    QBCore.Functions.TriggerCallback('qb-fishing:server:CanSell', function(result)
        if result then
            -- Anti spam
            if isSelling then return end
            isSelling = true

            -- Hand off animtion
            local playerPed = PlayerPedId()
            TaskTurnPedToFaceEntity(ped, playerPed, 1.0)
            TaskTurnPedToFaceEntity(playerPed, ped, 1.0)
            Wait(1500)
            PlayAmbientSpeech1(ped, "Generic_Hi", "Speech_Params_Force")
            Wait(1000)

            FreezeEntityPosition(playerPed, true)

            -- Playerped animation
            RequestAnimDict("mp_safehouselost@")
            while not HasAnimDictLoaded("mp_safehouselost@") do Wait(0) end
            TaskPlayAnim(playerPed, "mp_safehouselost@", "package_dropoff", 8.0, 1.0, -1, 16, 0, 0, 0, 0)
            Wait(4000)

            -- Sell Fish
            TriggerServerEvent('qb-fishing:server:SellFish', itemName, tonumber(sellingAmount.amount))
            
            -- ped animation
            PlayAmbientSpeech1(ped, "Chat_State", "Speech_Params_Force")
            Wait(500)
            RequestAnimDict("mp_safehouselost@")
            while not HasAnimDictLoaded("mp_safehouselost@") do Wait(0) end
            TaskPlayAnim(ped, "mp_safehouselost@", "package_dropoff", 8.0, 1.0, -1, 16, 0, 0, 0, 0 )
            Wait(3000)

            FreezeEntityPosition(playerPed, false)
            isSelling = false
        else
            QBCore.Functions.Notify('You don\t have enough '..QBCore.Shared.Items[itemName].label, 'error', 2500)
        end
    end, itemName, tonumber(sellingAmount.amount))
end)

CreateThread(function()
    -- Blip
    local blip = AddBlipForCoord(Shared.SellLocation.x, Shared.SellLocation.y, Shared.SellLocation.z)
    SetBlipSprite (blip, 628)
    SetBlipDisplay(blip, 4)
    SetBlipScale  (blip, 0.7)
    SetBlipAsShortRange(blip, true)
    SetBlipColour(blip, 3)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName("Fish Sale")
    EndTextCommandSetBlipName(blip)

    -- Load ped model
    local pedModel = `s_m_m_migrant_01`
    RequestModel(pedModel)
    while not HasModelLoaded(pedModel) do Wait(0) end

    -- Create Ped
    ped = CreatePed(0, pedModel, Shared.SellLocation.x, Shared.SellLocation.y, Shared.SellLocation.z, Shared.SellLocation.w, false, false)
    FreezeEntityPosition(ped, true)
    SetEntityInvincible(ped, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    TaskStartScenarioInPlace(ped, "WORLD_HUMAN_CLIPBOARD", 0, true)

    -- Add qb-target interaction
    exports['qb-target']:AddTargetEntity(ped, {
        options = {
            {
                type = "client",
                event = "qb-fishing:client:OpenSale",
                icon = 'fas fa-hand-holding-dollar',
                label = 'Sell Fish',
            }
        },
        distance = 1.5,
    })
end)
