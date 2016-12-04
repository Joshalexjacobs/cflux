-- Config file for the project known as "Kontra"

function love.conf(t)
	t.title = "Color Flux 0.21" -- The title of the window the game is in (string)
	t.version = "0.10.0"         -- The LÖVE version this game was made for (string)
	t.window.width = 800        -- we want our game to be long and thin.
	t.window.height = 600

	-- For Windows debugging
	t.console = true
end
