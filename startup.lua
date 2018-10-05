-- featherlight/startup.lua

spell:execute([[/lua require('featherlight.feather').start()]])
spell:execute([[/lua require('featherlight.particle-trail').start()]])

require('featherlight.give-feather').register()
