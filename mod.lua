local stringUtils = require('lollo_terrain_tweaks/stringUtils')
local luadump = require('luadump')

local _addParams = function(params)
    if type(params) ~= 'table' then return end

    for k, v in pairs(params) do
        if type(v) == 'table' and v.key == 'pavement' then return end
    end

    params[#params +1] = {
        key = "pavement",
        name = _("Pavement like street"),
        values = { _("No"), _("Yes")},
        defaultIndex = 0,
    }
end

function data()
    return {
        info = {
            minorVersion = 2,
            severityAdd = 'NONE',
            severityRemove = 'WARNING',
            name = _('_NAME'),
            description = _('_DESC'),
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
            }
        },
        -- runFn = function(settings)
        --     addModifier(
        --         'loadConstruction',
        --         function(fileName, data)
        --             if not stringUtils.stringContains(fileName, 'station/street/modular_terminal.con') then return data end
        --             -- if type(data) ~= 'table' or type(data.params) ~= 'table' then return data end
        --             _addParams(data.params)
        --             print('LOLLO tweaked data.params, data.id = ')
        --             luadump(true)(data.id)
        --             print('LOLLO tweaked data.params, data.params.id = ')
        --             luadump(true)(data.params.id)
        --             print('LOLLO tweaked data.params, data = ')
        --             luadump(true)(data)
        --             -- luadump(true)(data)
        --             return data
        --         end
        --     )
        -- end
    }
end
