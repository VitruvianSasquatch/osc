--this file handles loading and saving levels
require "lib/strong"

function loadlevel(filename)
	level = {}
	objects = {}
	local file = love.filesystem.newFile(filename)
	file:open("r")
	local contents = file:read()
	a = 0
	if a == 0 then
		background = love.graphics.newImage("bg/"..contents:split("\n")[1])
	end
	levelwidth = 1
	levelheight = #contents:split("\n") - 1
	while true do
		if not contents:split("\n")[2](levelwidth) then break end
		levelwidth = levelwidth + 1
	end
	levelwidth = (levelwidth-1) / 2
	for a=1, levelwidth do
		level[a] = {}
		objects[a] = {}
		for b=1, levelheight do
			level[a][b] = string.byte(contents:split("\n")[b+1], 2*a-1) - 32
			objects[a][b] = string.byte(contents:split("\n")[b+1], 2*a) - 32
		end
	end
end