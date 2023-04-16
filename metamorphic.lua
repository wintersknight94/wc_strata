-- LUALOCALS < ---------------------------------------------------------
local minetest, nodecore
    = minetest, nodecore
-- LUALOCALS > ---------------------------------------------------------
local modname = minetest.get_current_modname()
-- ================================================================== --
local function metamorphic_layer(type, ymin, ymax, seed, thin, thick, threshold)
	minetest.register_ore({
		ore_type        = "sheet",
		ore             = type,
		wherein         = {"group:stone"},
		column_height_min = thin,
		column_height_max = thick,
		column_midpoint_factor = 0.5,
		y_max           = ymax,
		y_min           = ymin,
		noise_threshold = threshold,
		noise_params    = {
			offset = 21,
			scale = 16,
			spread = {x = 128, y = 128, z = 128},
			seed = seed,
			octaves = 1,
		},
	})
end

-----<> metamorphic rock type <>----------<> ymin <>---<> ymax <>---<> seed <>---<> thin <>---<> thick <>---<> threshold
if minetest.settings:get_bool(modname .. ".glowstrata", true) then
   metamorphic_layer("nc_lux:stone_6",		-896,	-768,		371984,		1,		1,		2.75)
   metamorphic_layer("nc_lux:stone_7",		-31000,	-896,		371984,		1,		2,		2.25)
end

if minetest.settings:get_bool(modname .. ".softstrata", true) then
   metamorphic_layer("nc_terrain:stone",	-1024,	-128,		841759,		1,		3,		1.25)
end

