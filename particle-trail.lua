-- featherlight/particle-trail.lua
-- /lua require('featherlight.particle-trail').start()

local pkg = {}
local module = ...

function pkg.start()
  singleton()
  local players = Entities.find("@a")
  Events.on("PlayerLoggedInEvent"):call(function(event)
    table.insert(players,event.player)
  end)
  Events.on("PlayerLoggedOutEvent"):call(function(event)
    for i,p in pairs(players) do
      if players[i] == p then
        table.remove(players,i)
        break
      end
    end
  end)
  while true do
    for _,p in pairs(players) do
      local item = p.mainhand
      if item and item.nbt and item.nbt.tag and item.nbt.tag.Wand == "featherlight-flight" then
        if p.motion:sqrMagnitude() > 0.1 then
          spell.rotationYaw = p.rotationYaw
          spell.pos = p.pos - 0.2 * spell.lookVec
          spell:move("up",0.2)
          pkg.particle()
        end
      end
    end
    sleep(1)
    if Time.gametime % (20*10) == 0 then
      players = Entities.find("@a")
    end
  end
end

function pkg.particle()
  spell:execute("/particle flame ~ ~0.2 ~ 0 0 0 0.01 100 force @a")
end

function singleton()
  spell:execute([[/wol spell break byName "%s"]],module)
  spell.name = module
end

return pkg
