local tu = require 'texutil'
-- LOLLO this is only used in street stations
function data()
    -- none
    -- return {
    --     texture = tu.makeTextureLinearNearest('res/textures/terrain/material/mat255.tga', true, false, false),
    --     texSize = {2.0, 2.0},
    --     materialIndexMap = {},
    --     priority = 8
    -- }
    -- LOLLO TODO maybe return a different texture if we are before 1925
    return {
        texture = tu.makeTextureLinearNearest('res/textures/terrain/material/mat255.tga', true, false, false),
        texSize = {64.0, 64.0},
        materialIndexMap = {
            -- original
            -- [255] = 'shared/asphalt_02.lua'
            [255] = 'shared/asphalt_like_street.lua'
        },
        priority = 12000
    }
end
