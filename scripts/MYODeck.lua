scriptId = 'com.elliott.chenger.MYODeck'

-- MYODeck
--Created by: Elliott Chenger
--Github: https://github.com/erchenger
--Twitter: @EChenger

--This script is created to allow the MYO arm band work with Deckset which is a fantastic
--presentation mac app.


function onPoseEdge(pose, edge)
    if pose == "waveIn" and edge =="on" then
        myo.vibrate("short")
        backward()
    elseif pose == "waveOut" and edge =="on" then
        myo.vibrate("short")
        forward()
    end
end

function onPeriodic()
end

function onForegroundWindowChange(app, title)
    if app == "com.unsignedinteger.Deckset" then
        return true
    else
        return false
    end
end

function activeAppName()
    return "Output Everything"
end

function onActiveChange(isActive)
end

function forward()
	myo.keyboard("right_arrow","press")
end

function backward()
	myo.keyboard("left_arrow","press")
end
