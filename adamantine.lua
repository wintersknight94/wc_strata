local _  = {name = "air",                     prob = 0}
local A  = {name = "air",                     prob = 255, force_place = true}
local D  = {name = "wc_adamant:block",        prob = 255, force_place = true}

local schematic_GreaterAdamantineStalactite = {
    size = {x = 3, y = 23, z = 3},
    data = { -- note that data is upside down

        _, _, _,
        _, _, _,
        _, _, _,
        _, _, _,
        _, _, _,
        _, _, _,
        _, _, _,
        _, _, _,
        _, _, _,
        _, _, _,
        _, _, _,
        _, _, _,
        _, _, _,
        _, D, _,
        _, D, _,
        _, D, _,
        _, D, _,
        D, D, D,
        D, D, D,
        D, D, D,
        _, D, _,
        _, _, _,
        _, _, _,

        _, D, _,  -- ypos 0, prob 85% (218/255)
        _, D, _,  -- ypos 1, prob 85% (218/255)
        _, D, _,  -- ypos 2, prob 85% (218/255)
        _, D, _,  -- ypos 3, prob 85% (218/255)
        _, D, _,  -- ypos 4, prob 85% (218/255)
        _, D, _,  -- ypos 5, prob 85% (218/255)
        _, D, _,  -- ypos 6, prob 85% (218/255)
        _, D, _,  -- ypos 7, prob 85% (218/255)
        _, D, _,  -- ypos 8, prob 85% (218/255)
        _, D, D,  -- ypos 9, prob 50% (128/256) to make half of stalactites asymmetric
        _, D, D,  -- ypos 10, prob 50% (128/256) to make half of stalactites asymmetric
        _, D, D,  -- ypos 11, prob 50% (128/256) to make half of stalactites asymmetric
        _, D, D,  -- ypos 12, prob 50% (128/256) to make half of stalactites asymmetric
        D, D, D,  -- ypos 13, prob 75% (192/256)
        D, D, D,  -- ypos 14, prob 75% (192/256)
        D, D, D,  -- ypos 15, prob 100%
        D, D, D,  -- ypos 16, prob 100%
        D, D, D,  -- ypos 17, prob 100%
        D, D, D,  -- ypos 18, prob 100%
        D, D, D,  -- ypos 19, prob 75% (192/256)
        D, D, D,  -- ypos 20, prob 85% (218/255)
        _, D, D,  -- ypos 21, prob 50% (128/256) to make half of stalactites asymmetric
        _, D, _,  -- ypos 22, prob 100%

        _, _, _,
        _, _, _,
        _, _, _,
        _, _, _,
        _, _, _,
        _, _, _,
        _, _, _,
        _, _, _,
        _, _, _,
        _, _, _,
        _, _, _,
        _, _, _,
        _, D, _,
        _, D, _,
        _, D, _,
        _, D, _,
        _, D, _,
        D, D, D,
        D, D, D,
        D, D, D,
        _, D, _,
        _, D, _,
        _, _, _,

    },
    -- Y-slice probabilities do not function correctly for ceiling schematic
    -- decorations because they are inverted, so ypos numbers have been inverted
    -- to match, and a larger offset in place_offset_y should be used (e.g. -3).
	yslice_prob = {
		{ypos = 21, prob = 128},
		{ypos = 20, prob = 218},
		{ypos = 19, prob = 192},
		{ypos = 14, prob = 192},
		{ypos = 13, prob = 192},
		{ypos = 12, prob = 128},
		{ypos = 11, prob = 128},
		{ypos = 10, prob = 128},
		{ypos =  9, prob = 128},
		{ypos =  8, prob = 218},
		{ypos =  7, prob = 218},
		{ypos =  6, prob = 218},
		{ypos =  5, prob = 218},
		{ypos =  4, prob = 218},
		{ypos =  3, prob = 218},
		{ypos =  2, prob = 218},
		{ypos =  1, prob = 218},
		{ypos =  0, prob = 218}
	}
}



-- A stalagmite is an upsidedown stalactite, so
-- use the GreaterStalactite to create a ToweringStalagmite schematic
local schematic_ToweringAdamantineStalagmite = {
    size = schematic_GreaterAdamantineStalactite.size,
    data = {},
    yslice_prob = {}
}
local array_length = #schematic_GreaterAdamantineStalactite.data + 1
for i, node in ipairs(schematic_GreaterAdamantineStalactite.data) do
    schematic_ToweringAdamantineStalagmite.data[array_length - i] = node
end
y_size = schematic_GreaterAdamantineStalactite.size.y
for i, node in ipairs(schematic_GreaterAdamantineStalactite.yslice_prob) do
    schematic_ToweringAdamantineStalagmite.yslice_prob[i] = {
        -- we can safely lower the prob. to gain more variance because floor based schematics
        -- don't have the bug where missing lines moves them away from the surface
        prob = schematic_GreaterAdamantineStalactite.yslice_prob[i].prob - 20,
        ypos = y_size - 1 - schematic_GreaterAdamantineStalactite.yslice_prob[i].ypos
    }
end

minetest.register_decoration({
    name = "Towering Adamantine Stalagmite",
    deco_type = "schematic",
    place_on = "group:stone",
    sidelen = 80,
    fill_ratio = 0.00001,
--    biomes = {"deep"},
    y_max = -800,
    y_min = -31000,
    schematic = schematic_ToweringAdamantineStalagmite,
    replacements = {},
    flags = "place_center_x,place_center_z,force_placement,all_floors",
    place_offset_y=-2
})
