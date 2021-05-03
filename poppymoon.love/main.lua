function love.load()
    robot = love.graphics.newImage("robot.png")
	robotx = 100
	roboty = 100
end

function love.draw()
    local gridXCount = 1000
    local gridYCount = 1000
    local cellSize = 1
    
    love.graphics.setColor(0.5, .4, .2)
    love.graphics.rectangle(
        'fill',
        0,
        0,
        gridXCount * cellSize,
        gridYCount * cellSize
    )
	love.graphics.setColor(0, 0, 0)
	love.graphics.rectangle("line", 200, 50, 200, 350)

	love.graphics.setColor(1, 1, 1)	
    love.graphics.draw(robot, robotx, roboty)
end
	
function love.keypressed(key)
	if key == 'right' then
        direction = 'right'
    elseif key == 'left' then
        direction = 'left'
    elseif key == 'down' then
        direction = 'down'
    elseif key == 'up' then
        direction = 'up'
    end

	local nextXPosition = robotx
	local nextYPosition = roboty

	if direction == 'right' then
		nextXPosition = nextXPosition + 1
	elseif direction == 'left' then
		nextXPosition = nextXPosition - 1
	elseif direction == 'down' then
		nextYPosition = nextYPosition + 1
	elseif direction == 'up' then
		nextYPosition = nextYPosition - 1
	end
	
	robotx = nextXPosition 
	roboty = nextYPosition 
	
end