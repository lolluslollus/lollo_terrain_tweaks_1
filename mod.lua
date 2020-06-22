-- local inspect = require('lollo_terrain_tweaks/inspect')
local modSettings = require('lollo_terrain_tweaks/settings')
local stringUtils = require('lollo_terrain_tweaks/stringUtils')

-- local _addParams = function(params)
--     if type(params) ~= 'table' then return end

--     for k, v in pairs(params) do
--         if type(v) == 'table' and v.key == 'pavement' then return end
--     end

--     params[#params +1] = {
--         key = "pavement",
--         name = _("Pavement like street"),
--         values = { _("No"), _("Yes")},
--         defaultIndex = 0,
--     }
-- end

function data()
    return {
        info = {
            minorVersion = 3,
            severityAdd = 'NONE',
            severityRemove = 'WARNING',
            name = _('_NAME'),
            description = stringUtils.getSteamTextWithNoTags(_('_DESC')),
            tags = {
                'Asset',
                'Paint Tools',
                'Street',
            },
            authors = {
                {
                    name = 'Lollus',
                    role = 'CREATOR'
                }
            },
            params = {
                {
                    key = "lolloTerrainTweaks_removeDirt",
                    name = _("REMOVE_DIRT"),
                    values = { _("No"), _("Yes"), },
                    defaultIndex = 1,
                },
            },
        },
        runFn = function(settings, modParams)
            local modParams = modParams[getCurrentModId()]
            if modParams and modParams.lolloTerrainTweaks_removeDirt then
                modSettings.set('lolloTerrainTweaks_removeDirt', modParams.lolloTerrainTweaks_removeDirt)
            end

            -- fix sequence in road station config UI
            addModifier(
                'loadModule',
                function(fileName, data)
                    if stringUtils.stringEndsWith(fileName, '/station/street/exit.module') then
                        -- print('LOLLO data = ', inspect(data))
                        if type(data) == 'table' and type(data.order) == 'table' then
                            data.order.value = 8
                        end
                    end
                    return data
                end
            )
        end
    }
end
