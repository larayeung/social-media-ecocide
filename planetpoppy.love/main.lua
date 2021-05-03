function love.draw()
    local gridXCount = 700
    local gridYCount = 400
    local cellSize = 1
    
    love.graphics.setColor(.28, .28, .28)
    love.graphics.rectangle(
        'fill',
        0,
        0,
        gridXCount * cellSize,
        gridYCount * cellSize
    )
end