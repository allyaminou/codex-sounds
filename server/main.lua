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

RegisterNetEvent('mpsounds_CL:PlayWithinDistance')
AddEventHandler('mpsounds_CL:PlayWithinDistance', function(maxDistance, soundFile, soundVolume)
  if GetConvar("onesync_enableInfinity", "false") == "true" then
    TriggerClientEvent('mpsounds_CL:PlayWithinDistanceOS', -1, GetEntityCoords(GetPlayerPed(source)), maxDistance, soundFile, soundVolume)
  else
    TriggerClientEvent('mpsounds_CL:PlayWithinDistance', -1, source, maxDistance, soundFile, soundVolume)
  end
end)

RegisterNetEvent('mpsounds_CL:PlayWithinDistance')
AddEventHandler('mpsounds_CL:PlayWithinDistance', function(maxDistance, soundFile, soundVolume)
    local src = source
    local DistanceLimit = 300
    if maxDistance < DistanceLimit then
	TriggerClientEvent('mpsounds_CL:PlayWithinDistance', -1, GetEntityCoords(GetPlayerPed(src)), maxDistance, soundFile, soundVolume)
    else
        print(('[interact-sound] [^3WARNING^7] %s attempted to trigger mpsounds_CL:PlayWithinDistance over the distance limit ' .. DistanceLimit):format(GetPlayerName(src)))
    end
end)

RegisterNetEvent('SBSound_SV:PlayWithinDistance')
AddEventHandler('SBSound_SV:PlayWithinDistance', function(maxDistance, soundFile, soundVolume)
  if GetConvar("onesync_enableInfinity", "false") == "true" then
    TriggerClientEvent('SBSound_CL:PlayWithinDistanceOS', -1, GetEntityCoords(GetPlayerPed(source)), maxDistance, soundFile, soundVolume)
  else
    TriggerClientEvent('SBSound_CL:PlayWithinDistance', -1, source, maxDistance, soundFile, soundVolume)
  end
end)

RegisterNetEvent('SBSound_SV:PlayWithinDistance')
AddEventHandler('SBSound_SV:PlayWithinDistance', function(maxDistance, soundFile, soundVolume)
    local src = source
    local DistanceLimit = 300
    if maxDistance < DistanceLimit then
	TriggerClientEvent('SBSound_CL:PlayWithinDistance', -1, GetEntityCoords(GetPlayerPed(src)), maxDistance, soundFile, soundVolume)
    else
        print(('[interact-sound] [^3WARNING^7] %s attempted to trigger SBSound_SV:PlayWithinDistance over the distance limit ' .. DistanceLimit):format(GetPlayerName(src)))
    end
end)

RegisterNetEvent('codex-sound:server:PlayOnAll')
AddEventHandler('codex-sound:server:PlayOnAll', function(soundFile, soundVolume)
    TriggerClientEvent('codex-sound:client:PlayOnAll', -1, soundFile, soundVolume)
end)
