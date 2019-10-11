ESX = nil
local lastStarted = 0

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
	TriggerEvent('esx_addonaccount:getSharedAccount', 'society_grove', function(account)
		societyAccountGrove = account
	end)

RegisterServerEvent('esx_uberkdshfksksdhfskdjjob:pay')
AddEventHandler('esx_uberkdshfksksdhfskdjjob:pay', function(amount)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.addMoney(tonumber(amount))
end)
--Settings--
--[[ Optional SocietyAccount ( You have to implement it )
local societyAccount = nil
 TriggerEvent('esx_addonaccount:getSharedAccount', 'society_mecano', function(account)
    societyAccount = account
 end)
]]
