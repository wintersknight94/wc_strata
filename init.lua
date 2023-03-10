-- LUALOCALS < ---------------------------------------------------------
local include, nodecore
    = include, nodecore
-- LUALOCALS > ---------------------------------------------------------
local modname = minetest.get_current_modname()
------------------------------------------------------------------------

include("sedimentary")
--include("igneous")
--include("metamorphic")

------------------------------------------------------------------------

if minetest.settings:get_bool(modname .. ".stratacolor", true) then
	include("strata")
end

------------------------------------------------------------------------

--include("")
