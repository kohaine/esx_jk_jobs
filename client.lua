local PlayerData = {}
ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

Citizen.CreateThread(function ()
	while true do
		Citizen.Wait(0)
		DrawMarker(Config.Marker.type, Config.Marker.x, Config.Marker.y, Config.Marker.z, 0, 0, 0, 0, 0, 0, 2.0001,2.0001,2.0001, 0, Config.Color.r, Config.Color.g, Config.Color.b, 0, 0, 0, 0, 0, 0, 0)
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)),  -267.92422485352,-957.95263671875,31.22313117981, true) < 1 then
			DisplayHelpText("Press ~g~E~s~ to open agency")
		 if (IsControlJustReleased(1, 51)) then
			SetNuiFocus( true, true )
			SendNUIMessage({
				ativa = true
			})
		 end
		end
	end
end)

RegisterNUICallback('1', function(data, cb)
	TriggerServerEvent('esx_empregos:setJobt')
  	cb('ok')
end)

RegisterNUICallback('2', function(data, cb)
	TriggerServerEvent('esx_empregos:setJobRybak')
  	cb('ok')
end)

RegisterNUICallback('3', function(data, cb)
	TriggerServerEvent('esx_empregos:setJobGórnik')
  	cb('ok')
end)

RegisterNUICallback('4', function(data, cb)
	TriggerServerEvent('esx_empregos:setJobRafiner')
  	cb('ok')
end)

RegisterNUICallback('5', function(data, cb)
	TriggerServerEvent('esx_empregos:setJobRzeźnik')
  	cb('ok')
end)

RegisterNUICallback('6', function(data, cb)
	TriggerServerEvent('esx_empregos:setJobKrawiec')
  	cb('ok')
end)

RegisterNUICallback('7', function(data, cb)
	TriggerServerEvent('esx_empregos:setJobDrwal')
  	cb('ok')
end)

RegisterNUICallback('8', function(data, cb)
	TriggerServerEvent('esx_empregos:setJobReporter')
  	cb('ok')
end)

RegisterNUICallback('9', function(data, cb)
        TriggerServerEvent('esx_empregos:setJobTrucker')
        cb('ok')
end)

RegisterNUICallback('10', function(data, cb)
        TriggerServerEvent('esx_empregos:setJobDiver')
        cb('ok')
end)


RegisterNUICallback('11', function(data, cb)
        TriggerServerEvent('esx_empregos:setJobGarbage')
        cb('ok')
end)

RegisterNUICallback('12', function(data, cb)
        TriggerServerEvent('esx_empregos:setJobBrinks')
        cb('ok')
end)


RegisterNUICallback('13', function(data, cb)
        TriggerServerEvent('esx_empregos:setJobBus')
        cb('ok')
end)

RegisterNUICallback('14', function(data, cb)
        TriggerServerEvent('esx_empregos:setJobElectrician')
        cb('ok')
end)

RegisterNUICallback('15', function(data, cb)
        TriggerServerEvent('esx_empregos:setJobPilot')
        cb('ok')
end)

RegisterNUICallback('fechar', function(data, cb)
	SetNuiFocus( false )
	SendNUIMessage({
	ativa = false
	})
  	cb('ok')
end)

function DrawSpecialText(m_text, showtime)
	SetTextEntry_2("STRING")
	AddTextComponentString(m_text)
	DrawSubtitleTimed(showtime, 1)
end

function DisplayHelpText(str)
	SetTextComponentFormat("STRING")
	AddTextComponentString(str)
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end
