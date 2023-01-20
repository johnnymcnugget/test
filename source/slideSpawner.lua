--import "slide"
local pd <const> = playdate
local gfx <const> = pd.graphics


 
local slideCounter = 1

class('Slide').extends(gfx.sprite)

function Slide:init(x, y, imageName)
	local slideImage = gfx.image.new("images/" .. imageName)
	-- TEST: seeing if having a hardcoded image solves animation error. It does not.
	--local slideImage = gfx.image.new("images/slide-frog")
	assert( slideImage )
	self:setImage(slideImage)
	self:moveTo( x, y )
	self:add()	
end


-- Spawns a slide
function spawnSlide()	
	local spawnX = 200
	local spawnY = 120 -- was 120
	
	Slide(spawnX, spawnY, slideType[slideCounter] )
	-- increment slide counter to the length of the spawnType array
	if slideCounter < #slideType then
		slideCounter += 1
	else
		slideCounter = 1
	end
end


-- Clears all the slides from the display
function clearSlide()
	local allSprites = gfx.sprite.getAllSprites()
	for index, sprite in ipairs(allSprites) do
		if sprite:isa(Slide) then
			sprite:remove()
		end
	end
end



