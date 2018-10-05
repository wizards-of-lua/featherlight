-- featherlight/feather.lua
-- /lua require('featherlight.feather').start()

local pkg = {}
local module = ...

function pkg.start()
  singleton()
  Events.on("SwingArmEvent"):call(function(event)
    local item = event.item
    if item and item.nbt and item.nbt.tag and item.nbt.tag.Wand == "featherlight-flight" then
      local p = event.player
      if p.motion:sqrMagnitude() < 0.1 then
        p.motion = p.lookVec * 1.3
      else
        p.motion = p.motion + p.lookVec * 0.5
      end
    end
  end)
end

function singleton()
  spell:execute([[/wol spell break byName "%s"]],module)
  spell.name = module
end

return pkg
