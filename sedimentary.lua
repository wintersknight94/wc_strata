-- LUALOCALS < ---------------------------------------------------------
local minetest, nodecore
    = minetest, nodecore
-- LUALOCALS > ---------------------------------------------------------
local modname = minetest.get_current_modname()
-- ================================================================== --
local function sedimentary_layer(type, ymin, ymax, seed, thin, thick, threshold)
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

-----<> sedimentary rock type <>---------------<> ymin <>---<> ymax <>---<> seed <>---<> thin <>-<> thick <>---<> threshold
sedimentary_layer("nc_concrete:adobe",			-128,		64,		581478,		2,		3,		0.5)
sedimentary_layer("nc_concrete:sandstone",		-384,		64,		789134,		3,		5,		0.2)
sedimentary_layer("nc_concrete:cloudstone",		-512,		86,		239038,		1,		1,		0.8)
sedimentary_layer("nc_concrete:coalstone",		-896,		32,		191919,		1,		2,		0.9)

if minetest.get_modpath("wc_naturae") then
   sedimentary_layer("wc_naturae:shellstone",	-128,		16,		287414,		1,		3,		0.9)
end

if minetest.get_modpath("wc_pottery") then
   sedimentary_layer("wc_pottery:ceramic",		-128,		32,		649874,		1,		3,		0.8)
end

