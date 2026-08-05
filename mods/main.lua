local done = false
local G = 71

local name = "Tyrone"
local god_mode = false

local old_max = 0

function OnPreload()
    print("PRE LOAD | HELLO WORLD!")
end

function OnLoad()
	print("Load | Hello World!")
    world.SetDefaultPlayerColor(100, 100, 100, 255)
    world.SetPlayerName(name)
end

function OnUpdate(dt)
    if god_mode == false then
        old_max = world.GetPlayerMaxSize()
    end
    if game.input.keyPressed(G) then
        if god_mode == false then
            world.SetPlayerName("God "..name)
            world.SetDefaultPlayerColor(255, 255, 255, 255)

            world.SetPlayerMaxSize(200000)
            --task.sleep(5) --pauses the main game thread
            print("Hi")
		else
            world.SetPlayerName(name)
            world.SetDefaultPlayerColor(100, 100, 100, 255)
            world.SetPlayerMaxSize(old_max)
            --task.sleep(5)
            print("Off")
        end
        god_mode = not god_mode
	end
end

function OnConsume(consumer, consumed, index1, index2)
    print(consumer.." has consumed "..string.gsub(consumed, "%s+", "")..".")
end
