RegisterNetEvent('codex-sound:server:PlayWithinDistance')
AddEventHandler('codex-sound:server:PlayWithinDistance', function(maxDistance, soundFile, soundVolume)
  if GetConvar("onesync_enableInfinity", "false") == "true" then
    TriggerClientEvent('codex-sound:client:PlayWithinDistanceOS', -1, GetEntityCoords(GetPlayerPed(source)), maxDistance, soundFile, soundVolume)
  else
    TriggerClientEvent('codex-sound:client:PlayWithinDistance', -1, source, maxDistance, soundFile, soundVolume)
  end
end)

RegisterNetEvent('codex-sound:server:PlayWithinDistance')
AddEventHandler('codex-sound:server:PlayWithinDistance', function(maxDistance, soundFile, soundVolume)
    local src = source
    local DistanceLimit = 300
    if maxDistance < DistanceLimit then
	TriggerClientEvent('codex-sound:client:PlayWithinDistance', -1, GetEntityCoords(GetPlayerPed(src)), maxDistance, soundFile, soundVolume)
    else
        print(('[codex-sound] [^3WARNING^7] %s attempted to trigger codex-sound:server:PlayWithinDistance over the distance limit ' .. DistanceLimit):format(GetPlayerName(src)))
    end
end)
