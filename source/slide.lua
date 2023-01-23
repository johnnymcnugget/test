local pd <const> = playdate
local gfx <const> = pd.graphics
class('Slide').extends(gfx.sprite)

function Slide:init(x, y, imageName)
	local slideImage = gfx.image.new("images/" .. imageName)
	--local slideImage = gfx.image.new("images/slide-frog")
	assert( slideImage )
	self:setImage(slideImage)
	self:moveTo( x, y )
	self:add()	
end

--TEST CHANGING FOR THE PURPOSES OF TESTING GIT UPLOAD



