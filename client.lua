FishGame = function (shakeIntensity)
    if not shakeIntensity then shakeIntensity = 6 end

    SetNuiFocus(true, false)
    SendNUIMessage({
        action = "showGame",
        shakeIntensity = shakeIntensity
    })

    local success = nil
    RegisterNUICallback('gameResult', function(result, cb)
        success = result
        SetNuiFocus(false, false)
        cb('ok')
    end)

    while success == nil do
        Citizen.Wait(0)
    end

    return success
end

RegisterCommand("fish", function ()
    local success = FishGame()

    if success then
        ESX.ShowNotification("Success")
    else
        ESX.ShowNotification("Failed")
    end
end, false)

exports('FishGame', FishGame)