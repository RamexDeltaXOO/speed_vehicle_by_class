vehicleClassSpeed = {
    [0] = 46.9392, -- 0: Compacts m/s
    [1] = 46.9392, -- 1: Sedans m/s
    [2] = 49.50968, -- 2: SUVs m/s
    [3] = 50.9626, -- 3: Coupes m/s
    [4] = 50.73904, -- 4: Muscle m/s
    [5] = 49.78908, -- 5: Sports Classics  m/s
    [6] = 48.570896, -- 6: Sports m/s
    [7] = 56.55056, -- 7: Super m/s
    [8] = 50.12436, -- 8: Motorcycles m/s
    [9] = 44.03344, -- 9: Off-road m/s
    [10] = 38.22192, -- 10: Industrial m/s
    [11] = 40.2336, -- 11: Utility m/s
    [12] = 38.50132, -- 12: Vans m/s
    [13] = 17.8816, -- 13: Cycles m/s
    [14] = 31.02458, -- 14: Boats m/s
    [15] = 58.28284, -- 15: Helicopters m/s
    [16] = 68.67652, -- 16: Planes m/s
    [17] = 36.15436, -- 17: Service m/s
    [18] = 43.0276, -- 18: Emergency m/s
    [19] = 91.75496, -- 19: Military m/s
    [20] = 39.45128, -- 20: Commercial m/s
    [21] = 50.0 -- 21: Trains m/s
	
}

Citizen.CreateThread( function()
	while true do 
	    Citizen.Wait(1000)
		if IsPedInAnyVehicle(GetPlayerPed(-1), false) then
		    local vehicle = GetVehiclePedIsIn(GetPlayerPed(-1), false)
		    local vehicleClass = GetVehicleClass(vehicle)
		    SetVehicleMaxSpeed(vehicle, vehicleClassSpeed[vehicleClass])
		end
	end
end)
