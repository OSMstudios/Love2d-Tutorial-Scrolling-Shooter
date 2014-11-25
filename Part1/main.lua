debug = true

playerImg = nil

-- Loading
function love.load(arg)
	playerImg = love.graphics.newImage('assets/plane.png')
end


-- Updating
function love.update(dt)
	
end

-- Drawing
function love.draw(dt)
	love.graphics.draw(playerImg, 100, 100)
end
