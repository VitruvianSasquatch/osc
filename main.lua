require "level"
cellsize = 64

function love.load()
	tileset = "placeholder"
	loadtiles()
	loadlevel("testlevel.txt")
end

function loadtiles()
	tiles = {}
	tiles[1] = love.graphics.newImage("editor/"..tileset.."/block.png")
end

function love.update(dt)
	
end

function love.draw()
	love.graphics.draw(background,0,0)
	for a=1, levelwidth do
		for b=1, levelheight do
			if level[a][b] > 0 and tiles[level[a][b]] then
				love.graphics.draw(tiles[level[a][b]], (a-1)*cellsize, (b-1)*cellsize)
			end
		end
	end
end