local modSettings = require('lollo_terrain_tweaks/settings')
local stringUtils = require('lollo_terrain_tweaks/stringUtils')


function data()
    return {
        info = {
            minorVersion = 5,
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
            modSettings.setModParamsFromRunFn(modParams[getCurrentModId()])

            -- fix sequence in road station config UI
            addModifier(
                'loadModule',
                function(fileName, data)
                    if stringUtils.stringEndsWith(fileName, '/station/street/exit.module') then
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
