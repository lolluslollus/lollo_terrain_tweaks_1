local tu = require 'texutil'
-- LOLLO this is only used in street stations
function data()
    if require('lollo_terrain_tweaks/settings').removeDirt then
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
            texture = tu.makeTextureLinearNearest('res/textures/terrain/material/mat255.tga', true, false, false),
            texSize = {64.0, 64.0},
            materialIndexMap = {
                [255] = 'shared/asphalt_02.lua'
            },
            priority = 12000
        }
    end
end
