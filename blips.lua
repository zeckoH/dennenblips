local blips = {
    -- Example {title="", colour=, id=, x=, y=, z=},
    -- Houd onderstaande format aan.

     {title="PDM Cars", colour=5, id=669, x = -1258.8042, y = -368.3093, z = 36.9075}
  }
      
Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 0.7)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)
