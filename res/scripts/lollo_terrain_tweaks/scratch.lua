package.path = package.path .. ';res/scripts/?.lua'

local luadump = require('lollo_terrain_tweaks/luadump')
local stringUtils = require('lollo_terrain_tweaks/stringUtils')

local str = [[[h2]title  [b] bold]]
local strNoTags = stringUtils.getSteamTextWithNoTags(str)

local str = [[[h2]title  [/b] bold]]
local strNoTags = stringUtils.getSteamTextWithNoTags(str)

local par = { lollo = true }
