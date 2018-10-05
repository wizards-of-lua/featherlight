-- featherlight/give-feather.lua
-- /lua require('featherlight.give-feather').register()
-- /lua require('featherlight.give-feather').giveFeather()

local pkg = {}
local module = ...

function pkg.register()
  Commands.register("give-feather",string.format([[
    require('%s').giveFeather(...)
  ]],module), "/give-feather [<player>]", 1)
end

function pkg.giveFeather(player)
  player = player or spell.owner.name
  spell:execute([[/give %s minecraft:feather 1 0 
    {Wand:"featherlight-flight",display:{Name:"Wand of Featherlight Flight",Lore:["Look into the sky and swing this wand"]},ench:[{id:99,lvl:1}]}
  ]], player)
end

return pkg
