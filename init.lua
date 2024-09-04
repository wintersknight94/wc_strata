-- LUALOCALS < ---------------------------------------------------------
local include, minetest, nodecore
    = include, minetest, nodecore
-- LUALOCALS > ---------------------------------------------------------
local modname = minetest.get_current_modname()
------------------------------------------------------------------------

include("stala")

if minetest.get_modpath("wc_crystals") then
	include("lodite")
	include("luxite")
end

if minetest.get_modpath("wc_crystals") and minetest.settings:get_bool("wc_crystals.real_crystals", true) then
	include("selenite")
	include("quartz")
	include("amethyst")
end

if minetest.get_modpath("wc_adamant") then
	include("adamantine")
end
