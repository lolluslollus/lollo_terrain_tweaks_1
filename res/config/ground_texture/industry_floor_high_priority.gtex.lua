local tu = require 'texutil'
-- LOLLO this is only used in street stations
function data()
    -- original
    --[[     return {
        texture = tu.makeTextureLinearNearest('res/textures/terrain/material/mat255.tga', true, false, false),
        texSize = {64.0, 64.0},
        materialIndexMap = {
            [255] = 'shared/asphalt_02.lua'
        },
        priority = 12000
    }
 ]]
    -- none LOLLO use this instead of stock
    return {
        texture = tu.makeTextureLinearNearest('res/textures/terrain/material/mat255.tga', true, false, false),
        texSize = {2.0, 2.0},
        materialIndexMap = {},
        priority = 8
    }
end