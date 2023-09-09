local standardVolumeOutput = 0.3;
local hasPlayerLoaded = false
Citizen.CreateThread(function()
	Wait(15000)
	hasPlayerLoaded = true
end)

RegisterNetEvent('codex-sound:PlayOnOne')
AddEventHandler('codex-sound:PlayOnOne', function(soundFile, soundVolume)
    if hasPlayerLoaded then
        SendNUIMessage({
            transactionType = 'playSound',
            transactionFile  = soundFile,
            transactionVolume = soundVolume
        })
    end
end)