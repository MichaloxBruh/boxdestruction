AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

function GM:PlayerInitialSpawn(ply)
    ply:SetModel("models/player/combine_super_soldier.mdl")
    ply:SetHealth("200")
    ply:SetMaxHealth("200")
    ply:Give("weapon_frag", false)
end

function GM:PlayerSpawn(ply)
    ply:SetHealth("200")
    ply:Give("weapon_frag", false)
end