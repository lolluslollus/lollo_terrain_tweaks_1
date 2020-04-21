local tu = require 'texutil'
-- LOLLO this is used along streets, country roads, road stations and rail stations
function data()
    -- hole
    --[[ 	return {
		texture = tu.makeTextureLinearNearest("res/textures/terrain/material/mat255.tga", true, false,false),
		texSize = { 32.0, 32.0 },
		materialIndexMap = {
			[255] = "",
		},
		priority = 5000
    } ]]
    if require('settings').removeDirt then
        -- none
        return {
            texture = tu.makeTextureLinearNearest('res/textures/terrain/material/mat255.tga', true, false, false),
            texSize = {2.0, 2.0},
            materialIndexMap = {},
            priority = 8
        }
    else
        -- original
        return {
            texture = tu.makeMaterialIndexTexture('res/textures/terrain/material/street_border.tga', 'REPEAT', 'REPEAT'),
            texSize = {32.0, 1.5},
            materialIndexMap = {
                [160] = 'dirt.lua',
                [255] = 'shared/gravel_03.lua'
            },
            priority = 16
        }
    end
end
