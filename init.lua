-- LUALOCALS < ---------------------------------------------------------
local include, nodecore
    = include, nodecore
-- LUALOCALS > ---------------------------------------------------------
local modname = minetest.get_current_modname()
------------------------------------------------------------------------

if minetest.settings:get_bool(modname .. ".newstrata", true) then
	include("sedimentary")
	include("igneous")
	include("metamorphic")
end

------------------------------------------------------------------------

if minetest.settings:get_bool(modname .. ".stratacolor", true) then
	include("strata")
end

------------------------------------------------------------------------

--include("")
