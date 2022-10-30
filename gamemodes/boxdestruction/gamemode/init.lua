AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

local cooldown = 0

function GM:PlayerInitialSpawn(ply)
    ply:SetModel("models/Humans/Group01/male_07.mdl")
    ply:SetHealth("200")
    ply:SetMaxHealth("200")
    ply:Give("weapon_frag", false)
end

function GM:PlayerSpawn(ply)
    ply:SetHealth("200")
    ply:Give("weapon_frag", false)
end

function GM:KeyPress(ply, key)
    if (key == IN_ATTACK) then 
        if cooldown == 0 then
            ply:GiveAmmo(1,"Grenade", true)
            cooldown = 1
            timer.Simple(2, function()
                cooldown = 0
            end)
        elseif cooldown == 1 then 
            PrintMessage(HUD_PRINTCENTER,"REPLENESHING GRENADES, PLEASE WAIT")
        end


    elseif (key == IN_ATTACK2) then 
        if cooldown == 0 then 
            ply:GiveAmmo(1,"Grenade", true)
         cooldown = 1
            timer.Simple(2, function()
                 cooldown = 0
            end)
        elseif cooldown == 1 then 
            PrintMessage(HUD_PRINTCENTER,"REPLENESHING GRENADES, PLEASE WAIT")


        end
    end
end