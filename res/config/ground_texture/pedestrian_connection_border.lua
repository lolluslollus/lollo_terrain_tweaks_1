local tu = require 'texutil'
-- LOLLO this is used along automatic pedestrian connections and street stations edges
function data()
    -- like pedestrian connection
    --[[ return {
        texture = tu.makeTextureLinearNearest('res/textures/terrain/material/mat255.tga', true, false, false),
        texSize = {1.0, 1.0},
        priority = 100,
        materialIndexMap = {
			[255] = 'shared/asphalt_01.lua' -- 255 covers the street station border, 254 does not
        }
    } ]]
    -- none LOLLO use this instead of stock
    return {
        texture = tu.makeTextureLinearNearest('res/textures/terrain/material/mat255.tga', true, false, false),
        texSize = {2.0, 2.0},
        materialIndexMap = {},
        priority = 8
    }
    --original
    --[[ return {
	texture = tu.makeTextureLinearNearest("res/textures/terrain/material/mat255.tga", true, false,false),
	texSize = { 1.0, 1.0 },
	priority = 0,
	materialIndexMap = {
		[255] = "dirt.lua",
		[245] = "grass_brown.lua",
	},
} ]]
end