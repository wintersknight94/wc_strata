-- LUALOCALS < ---------------------------------------------------------
local minetest, nodecore
    = minetest, nodecore
-- LUALOCALS > ---------------------------------------------------------
local modname = minetest.get_current_modname()
-- ================================================================== --
local function igneous_layer(type, ymin, ymax, seed, thin, thick, threshold)
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

-----<> igneous rock type <>----------<> ymin <>---<> ymax <>---<> seed <>---<> thin <>---<> thick <>---<> threshold

-- pumice sheets currently disabled due to nearly always melting
--igneous_layer("nc_igneous:pumice",			-1024,	128,			478378,		1,		2,		1.0)

if minetest.get_modpath("wc_vulcan") then
	igneous_layer("wc_vulcan:pumcrete",	-1024,	-128,		720319,		1,		3,		1.2)
	igneous_layer("wc_vulcan:obsidian",	-10206,	-512,		785125,		1,		4,		1.5)
end

if minetest.get_modpath("wc_quicksilver") then
   igneous_layer("wc_quicksilver:cinnabar",	-1024,	-512,		426761,		1,		2,		1.1)
end


