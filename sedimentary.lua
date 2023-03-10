-- LUALOCALS < ---------------------------------------------------------
local minetest, nodecore
    = minetest, nodecore
-- LUALOCALS > ---------------------------------------------------------
local modname = minetest.get_current_modname()
-- ================================================================== --
local function sedimentary_layer(type, ymin, ymax, seed, thin, thick)
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

-----<> sedimentary rock type <>----------<> ymin <>---<> ymax <>---<> seed <>---<> thin <>---<> thick <>---<> threshold
sedimentary_layer("nc_concrete:adobe",		-128,		64,		581478,		2,		3,		0.5)
sedimentary_layer("nc_concrete:sandstone",		-384,		64,		789134,		3,		5,		0.2)
sedimentary_layer("nc_concrete:cloudstone",	-512,		86,		239038,		1,		1,		0.8)
sedimentary_layer("nc_concrete:coalstone",		-896,		32,		191919,		1,		2,		0.9)

sedimentary_layer("nc_igneous:pumice",		-1024,	128,		478378,		1,		2,		1.0)
-- igneous, preparing for file split

if minetest.get_modpath("wc_vulcan") then
   sedimentary_layer("wc_vulcan:pumcrete",		-1024,	-128,		720319,		1,		3,		1.2)
end
-- igneous, preparing for file split

if minetest.get_modpath("wc_naturae") then
   sedimentary_layer("wc_naturae:shellstone",	-128,		16,		287414,		1,		3,		0.9)
end

if minetest.get_modpath("wc_pottery") then
   sedimentary_layer("wc_pottery:ceramic",		-128,		32,		649874,		1,		3,		0.8)
end

if minetest.get_modpath("wc_quicksilver") then
   sedimentary_layer("wc_quicksilver:cinnabar",	-1024,	-512,		426761,		1,		2,		1.1)
end
-- igneous, preparing for file split

if minetest.settings:get_bool(modname .. ".glowstrata", true) then
   sedimentary_layer("nc_lux:stone_6",		-896,		-768,		371984,		1,		1,		1.75)
   sedimentary_layer("nc_lux:stone_7",		-31000,	-896,		371984,		2,		3,		1.75)
end
-- metamorphic, preparing for file split

if minetest.settings:get_bool(modname .. ".softstrata", true) then
   sedimentary_layer("nc_terrain:stone",		-1024,	-128,		841759,		1,		3,		1.25)
end
-- metamorphic, preparing for file split
