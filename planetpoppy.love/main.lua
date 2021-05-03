function love.draw()
    local gridXCount = 30
    local gridYCount = 30
    local cellSize = 15
    
    love.graphics.setColor(.28, .28, .28)
    love.graphics.rectangle(
        'fill',
        0,
        0,
        gridXCount * cellSize,
        gridYCount * cellSize
    )
	
    local dirtSegments = {
        {x = 3, y = 1},
        {x = 2, y = 1},
        {x = 1, y = 1},
    }

    for segmentIndex, segment in ipairs(dirtSegments) do
        love.graphics.setColor(0.5, .4, .2)
        love.graphics.rectangle(
            'fill',
            (segment.x - 1) * cellSize,
            (segment.y - 1) * cellSize,
            cellSize - 1,
            cellSize - 1
        )
    end

end

