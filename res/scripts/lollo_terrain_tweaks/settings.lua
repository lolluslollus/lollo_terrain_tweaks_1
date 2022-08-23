-- return {
--     lolloTerrainTweaks_removeDirt = 1
-- }

local results = {}

local function _getModSettingsFromGameConfig()
    if type(game) ~= 'table' or type(game.config) ~= 'table' then return nil end
    return game.config._lolloTerrainTweaks
end

local function _getModSettingsFromApi()
    if type(api) ~= 'table' or type(api.res) ~= 'table' or type(api.res.getBaseConfig) ~= 'table' then return end

    local baseConfig = api.res.getBaseConfig()
    if not(baseConfig) then return end

    return baseConfig._lolloTerrainTweaks
end

results.getModParams = function(fieldName)
    -- LOLLO NOTE try game.config first!
    local modSettings = _getModSettingsFromGameConfig() or _getModSettingsFromApi()
    if not(modSettings) then
        print('LOLLO terrain tweaks cannot read modSettings')
        return nil
    end

    return modSettings[fieldName]
end

results.setModParamsFromRunFn = function(thisModParams)
    -- LOLLO NOTE if default values are set, modParams in runFn will be an empty table,
    -- so thisModParams here will be nil
    if type(game) ~= 'table' or type(game.config) ~= 'table' then return end

    if type(game.config._lolloTerrainTweaks) ~= 'table' then
        game.config._lolloTerrainTweaks = {}
    end

    if type(thisModParams) == 'table' and thisModParams.lolloTerrainTweaks_removeDirt == 0 then
        game.config._lolloTerrainTweaks.lolloTerrainTweaks_removeDirt = 0
    else
        game.config._lolloTerrainTweaks.lolloTerrainTweaks_removeDirt = 1
    end
end

return results
