local hurt = false
Citizen.CreateThread(function()
	while true do
		Wait(0)
		if GetEntityHealth(GetPlayerPed(-1)) <= 140 then
			setHurt()
		elseif GetEntityHealth(GetPlayerPed(-1)) > 141 then
			setNotHurt()
		end
	end
end)

function setHurt()
	hurt = true
	RequestAnimSet("move_m@injured")
	SetPedMovementClipset(GetPlayerPed(-1), "move_m@injured", true)
end

function setNotHurt()
	hurt = false
	ResetPedMovementClipset(GetPlayerPed(-1))
	ResetPedWeaponMovementClipset(GetPlayerPed(-1))
	ResetPedStrafeClipset(GetPlayerPed(-1))
end