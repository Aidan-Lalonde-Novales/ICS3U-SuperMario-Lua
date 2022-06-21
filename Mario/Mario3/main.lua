-- Main Code for Mario 3 / Learning Guide 3.4

Class = require 'class'
push = require 'push'

require 'Map'

VIRTUAL_WIDTH = 432
VIRTUAL_HEIGHT = 243

WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720

map = Map()

function love.load()
    
    love.graphics.setDefaultFilter('nearest', 'nearest')

    love.graphics.setFont(love.graphics.newFont('fonts/font.ttf', 8))

    push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, {
        fullscreen = false,
        resizable = true
    })
end

function love.resize(w, h)
    push:resize(w, h)
end

function love.keypressed(key)
    if key == 'escape' then
        love.event.quit()
    end
end

function love.update(dt)
    map:update(dt)
end

function love.draw()
    push:apply('start')

    love.graphics.clear(108, 140, 255, 255)

    love.graphics.clear(108, 140, 255, 255)
    map:render()

    push:apply('end')
end
