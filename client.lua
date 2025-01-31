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

RegisterCommand("fish", function()
    local success = FishGame()
    if success then
        lib.notify({
            title = "Fishing",
            description = "You caught a fish! 🎣",
            type = "success",
            duration = 5000
        })
    else
        lib.notify({
            title = "Fishing",
            description = "The fish got away... 🐟",
            type = "error",
            duration = 5000
        })
    end
end, false)

exports('FishGame', FishGame)
