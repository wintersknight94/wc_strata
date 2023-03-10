-- LUALOCALS < ---------------------------------------------------------
local minetest, nodecore
    = minetest, nodecore
-- LUALOCALS > ---------------------------------------------------------
local modname = minetest.get_current_modname()
--<>----------------------------------------------------------------<>--

-----<> STONE <>-----
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
--<>----------------------------------------------------------------<>--
-----<> LODE <>-----
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

minetest.override_item("nc_lode:ore_1",
	{description = "Lode Bearing Mica", color = "paleturquoise"}
)
minetest.override_item("nc_lode:ore_2",
	{description = "Lode Bearing Dolomite", color = "lightslategrey"}
)
minetest.override_item("nc_lode:ore_3",
	{description = "Lode Bearing Schist"}
)
minetest.override_item("nc_lode:ore_4",
	{description = "Lode Bearing Basalt", color = "lightslategray"}
)
minetest.override_item("nc_lode:ore_5",
	{description = "Lode Bearing Gabbro", color = "darkslategray"}
)
minetest.override_item("nc_lode:ore_6",
	{description = "Lode Bearing Granite", color = "lightcoral"}
)

minetest.override_item("nc_lode:ore_7",
	{description = "Lode Bearing Kimberlite", color = "paleturquoise"}
)
--<>----------------------------------------------------------------<>--
-----<> LUX <>-----
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
--<>----------------------------------------------------------------<>--
-----<> CONCRETE <>-----
minetest.override_item("nc_concrete:cloudstone",
	{description = "Quartzite"} --originally went with 'limestone', but its a carbonate, not a silicate
)
minetest.override_item("nc_concrete:adobe",
	{description = "Mudstone"}
)
minetest.override_item("nc_concrete:coalstone",
	{description = "Jet"} --almost went with 'shungite', but that seemed too location-specific
)
-----<> POTTERY <>-----
if minetest.get_modpath("wc_pottery") then
	minetest.override_item("wc_pottery:ceramic",
		{description = "Claystone"}
	)
end
-----<> VULCAN <>-----
if minetest.get_modpath("wc_vulcan") then
	minetest.override_item("wc_vulcan:pumcrete",
		{description = "Scoria"}
	)
end
--<>----------------------------------------------------------------<>--
-----<> LIGNITE <>-----
if minetest.get_modpath("nc_lignite") then
	minetest.override_item("nc_lignite:stone",
		{description = "Dusty Phyllite"}
	)
	minetest.override_item("nc_lignite:stone_1",
		{description = "Dusty Mica", color = "paleturquoise"}
	)
	minetest.override_item("nc_lignite:stone_2",
		{description = "Dusty Dolomite", color = "lightslategrey"}
	)
	minetest.override_item("nc_lignite:stone_3",
		{description = "Dusty Schist"}
	)
	minetest.override_item("nc_lignite:stone_4",
		{description = "Dusty Basalt", color = "lightslategray"}
	)
	minetest.override_item("nc_lignite:stone_5",
		{description = "Dusty Gabbro", color = "darkslategray"}
	)
	minetest.override_item("nc_lignite:stone_6",
		{description = "Dusty Granite", color = "lightcoral"}
	)
	minetest.override_item("nc_lignite:stone_7",
		{description = "Dusty Kimberlite", color = "paleturquoise"}
	)
end
--<>----------------------------------------------------------------<>--
