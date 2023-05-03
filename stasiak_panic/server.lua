--------------------------------------------
------ Napisane przez stasiak#3050 ------
--------------------------------------------
ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


RegisterServerEvent('stasiak_panicbutton:on') 
AddEventHandler('stasiak_panicbutton:on', function(kords)
	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local xPlayers = ESX.GetPlayers()
    for i=1, #xPlayers, 1 do
        local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
        if xPlayer.job.name == 'police' then

                TriggerClientEvent('panicbutton:on', xPlayers[i], kords)
        end
    end
end)
--------------------------------------------
------ Napisane przez stasiak#3050 ------
--------------------------------------------
