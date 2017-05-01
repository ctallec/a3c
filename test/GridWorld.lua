local GridWorldVis = require 'examples.GridWorldVis'
local image = require 'image'
local qt = pcall(require, 'qt')

local env = GridWorldVis{}
env:start()
local window = image.display({image=env.screen})
for i=1, 10 do
    local a = tonumber(io.read())
    env:step(a)
    image.display({image=env.screen, win=window})
end

os.exit()
