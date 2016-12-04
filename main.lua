-- Includes: --
require 'collision/blocks'
require 'cflux'
local bump = require 'collision/bump'

-- Globals: --
windowWidth = 800
windowHeight = 600

-- Initialize bump.lua
local world = bump.newWorld() -- create a world with bump

function love:keypressed(key, code)
  if key == "escape" then -- if escape is pressed, end the the program
    love.event.quit()
  end
end

function love.load(arg)
  -- set blocks location, size, and add to world
  addBlock(love.graphics.getWidth() / 4, love.graphics.getHeight() / 4, windowWidth / 2, 300, world) -- middle
  addBlock(0, 0, windowWidth / 6, 125, world) -- top left
  addBlock(0, love.graphics.getHeight() - 125, windowWidth / 6, 125, world) -- bottom left
  addBlock(love.graphics.getWidth() - windowWidth / 6, 0, windowWidth / 6, 125, world) -- top right
  addBlock(love.graphics.getWidth() - windowWidth / 6, love.graphics.getHeight() - 125, windowWidth / 6, 125, world) -- bottom right
end

function love.update(dt)
  updateCFlux()
end

function love.draw()
  cfluxVer()
  setCFluxColor(250, 250, 250, 250)
  drawBlocks()
end
