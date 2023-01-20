import "CoreLibs/object"
import "CoreLibs/graphics"
import "CoreLibs/sprites"
import "CoreLibs/timer"
import "CoreLibs/crank"
import "CoreLibs/animator"

-- import OOP files
import "globals"
import "sceneController"
import “playGameButton”
import "slideSpawner"
import "soundController"
--import "slide"

local gfx <const> = playdate.graphics
local pd <const> = playdate
--local Animator <const> = playdate.graphics.animator

-- call game start
setStartingScene()



function playdate.update()
  -- TEST: testing animation
  --slideSprintLine:moveTo(lineAnimator:currentValue())
  
  -- Update the sprites and the timer
  gfx.sprite.update()
  playdate.timer.updateTimers()

  -- When the crank rotates, the game state changes and the slide changes
  crankTicks = playdate.getCrankTicks(1)
	if (crankTicks == 1 and gameState == 'start') then
		setGameScene()
	elseif (crankTicks == 1 and gameState ~= 'start') then	
		print('cranked')
		clearSlide()
		spawnSlide()
	elseif crankTicks == -1 then
		print('-cranked')
	end 

end