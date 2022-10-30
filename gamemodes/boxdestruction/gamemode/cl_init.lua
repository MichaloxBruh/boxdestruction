include("shared.lua")

function GM:PlayerConnect(name, ip)

	print("Player joined with ("..ip..")")
end



function GM:PlayerInitialSpawn(ply)

	Print("Hello, " .. ply:Name() .. " has spawned!")
end 


