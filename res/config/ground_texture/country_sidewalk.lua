local modSettings = require('lollo_terrain_tweaks/settings')
local tu = require 'texutil'
-- LOLLO this is used along country roads
function data()
    -- none
    --[[ 	return {
		texture = tu.makeTextureLinearNearest('res/textures/terrain/material/mat255.tga', true, false, false),
		texSize = {2.0, 2.0},
		materialIndexMap = {},
		priority = 8
    } ]]
    if modSettings.getModParams('lolloTerrainTweaks_removeDirt') == 1 then
        -- asphalt instead of gravel, gravel instead of dirt
        return {
            texture = tu.makeMaterialIndexTexture('res/textures/terrain/material/country_sidewalk.tga', 'REPEAT', 'REPEAT'),
            texSize = {2.0, 2.0},
            materialIndexMap = {
                --[160] = 'dirt.lua',
                --[160] = 'shared/gravel_04.lua', -- 160 is a magic value, it makes something appear on the edge only. gravel_04 is very visible.
                --[160] = 'shared/gravel_03.lua', -- 160 is a magic value, it makes something appear on the edge only. gravel_03 is very discreet.
                [160] = 'shared/gravel_02.lua', -- 160 is a magic value, it makes something appear on the edge only. gravel_02 is light and bright, like ash.
                --[160] = 'shared/ballast.lua', -- 160 is a magic value, it makes something appear on the edge only. ballast is a bit like gravel_02 but a little more porn.
                --[160] = 'shared/gravel_01.lua', -- 160 is a magic value, it makes something appear on the edge only. gravel_01 is similar to asphalt_01.
                [255] = 'shared/asphalt_01.lua' -- street sidewalk (ie pavement) colour
            },
            priority = 6
        }
    else
        -- original
        return {
            texture = tu.makeMaterialIndexTexture('res/textures/terrain/material/country_sidewalk.tga', 'REPEAT', 'REPEAT'),
            texSize = {64.0, 3.0},
            materialIndexMap = {
                [160] = 'dirt.lua',
                [255] = 'shared/gravel_03.lua'
            },
            priority = 6
        }
    end
end
