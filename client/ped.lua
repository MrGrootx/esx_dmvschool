local koordinaten = {
   { 240.0374, -1382.5944, 32.7418, "", 115.1094, 0x999B00C6, "ig_paper" },
}


Citizen.CreateThread(function()
   for _, v in pairs(koordinaten) do
      RequestModel(GetHashKey(v[7]))
      while not HasModelLoaded(GetHashKey(v[7])) do
         Wait(1)
      end
      local ped = CreatePed(4, v[6], v[1], v[2], v[3], 3374176, false, true)
      SetEntityHeading(ped, v[5])
      FreezeEntityPosition(ped, true)
      SetEntityInvincible(ped, true)
      SetBlockingOfNonTemporaryEvents(ped, true)
   end
end)


-- For Peds https://wiki.rage.mp/index.php?title=Peds
