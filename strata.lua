-- LUALOCALS < ---------------------------------------------------------
local minetest, nodecore
    = minetest, nodecore
-- LUALOCALS > ---------------------------------------------------------

local modname = minetest.get_current_modname()

-----stone-----
minetest.override_item("nc_terrain:stone",
	{description = "Phyllite"}
)
minetest.override_item("nc_terrain:hard_stone_1",
	{description = "Mica", color = "paleturquoise"}
)
minetest.override_item("nc_terrain:hard_stone_2",
	{description = "Dolomite", color = "lightslategrey"}
)
minetest.override_item("nc_terrain:hard_stone_3",
	{description = "Schist"}
)
minetest.override_item("nc_terrain:hard_stone_4",
	{description = "Basalt", color = "lightslategray"}
)
minetest.override_item("nc_terrain:hard_stone_5",
	{description = "Gabbro", color = "darkslategray"}
)
minetest.override_item("nc_terrain:hard_stone_6",
	{description = "Granite", color = "lightcoral"}
)
minetest.override_item("nc_terrain:hard_stone_7",
	{description = "Kimberlite", color = "paleturquoise"}
)

-----lode-----
minetest.override_item("nc_lode:stone",
	{description = "Rusty Phyllite"}
)
minetest.override_item("nc_lode:stone_1",
	{description = "Rusty Mica", color = "paleturquoise"}
)
minetest.override_item("nc_lode:stone_2",
	{description = "Rusty Dolomite", color = "lightslategrey"}
)
minetest.override_item("nc_lode:stone_3",
	{description = "Rusty Schist"}
)
minetest.override_item("nc_lode:stone_4",
	{description = "Rusty Basalt", color = "lightslategray"}
)
minetest.override_item("nc_lode:stone_5",
	{description = "Rusty Gabbro", color = "darkslategray"}
)
minetest.override_item("nc_lode:stone_6",
	{description = "Rusty Granite", color = "lightcoral"}
)

minetest.override_item("nc_lode:stone_7",
	{description = "Rusty Kimberlite", color = "paleturquoise"}
)

-----lux-----
minetest.override_item("nc_lux:stone",
	{description = "Glowing Phyllite"}
)
minetest.override_item("nc_lux:stone_1",
	{description = "Glowing Mica", color = "paleturquoise"}
)
minetest.override_item("nc_lux:stone_2",
	{description = "Glowing Dolomite", color = "lightslategrey"}
)
minetest.override_item("nc_lux:stone_3",
	{description = "Glowing Schist"}
)
minetest.override_item("nc_lux:stone_4",
	{description = "Glowing Basalt", color = "lightslategray"}
)
minetest.override_item("nc_lux:stone_5",
	{description = "Glowing Gabbro", color = "darkslategray"}
)
minetest.override_item("nc_lux:stone_6",
	{description = "Glowing Granite", color = "lightcoral"}
)

minetest.override_item("nc_lux:stone_7",
	{description = "Glowing Kimberlite", color = "paleturquoise"}
)



