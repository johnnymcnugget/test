local sound <const> = playdate.sound.sampleplayer
local backgroundMusic = sound.new('./sounds/background-music.wav')
local rate = 1

-- Plays the background music on a loop at a specific rate
function playBackgroundMusic()
	backgroundMusic:play(0, rate)
end

-- Stops the background music
function stopMusic()
	backgroundMusic:stop()
end