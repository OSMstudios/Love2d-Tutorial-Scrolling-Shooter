debug = true

player = { x = 200, y = 710, speed = 150, img = nil }

-- Image Storage
bulletImg = nil

-- Entity Storage
bullets = {} -- array of current bullets being drawn and updated

-- Loading
function love.load(arg)
	player.img = love.graphics.newImage('assets/plane.png')
end


-- Updating
function love.update(dt)
	-- I always start with an easy way to exit the game
	if love.keyboard.isDown('escape') then
		love.event.push('quit')
	end

	if love.keyboard.isDown('left','a') then
		if player.x > 0 then -- binds us to the map
			player.x = player.x - (player.speed*dt)
		end
	elseif love.keyboard.isDown('right','d') then
		if player.x < (love.graphics.getWidth() - player.img:getWidth()) then
			player.x = player.x + (player.speed*dt)
		end
	end
end

-- Drawing
function love.draw(dt)
	love.graphics.draw(player.img, player.x, player.y)
end
