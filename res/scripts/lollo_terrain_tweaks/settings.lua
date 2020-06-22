-- return {
--     lolloTerrainTweaks_removeDirt = true
-- }

local results = {}

results.get = function(fieldName)
    if type(game) == 'table' and type(game._lolloTerrainTweaks) == 'table' then
        return game._lolloTerrainTweaks[fieldName]
    else
        return nil
    end
end

results.set = function(fieldName, fieldValue)
    if type(game) ~= 'table' then return end

    if type(game._lolloTerrainTweaks) ~= 'table' then
        game._lolloTerrainTweaks = {}
    end

    game._lolloTerrainTweaks[fieldName] = fieldValue
end

return results