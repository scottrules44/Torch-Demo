local torch = require "plugin.torch"
local json = require "json"
local widget = require "widget"

local background = display.newRect( display.contentCenterX, display.contentCenterY, display.actualContentWidth, display.actualContentHeight )
background.alpha = .95
background:setFillColor(0,.9,0)

if(torch.isAvailable() == false) then
    native.showAlert("No Torch/Flashlight", "device does not have flashlight/torch")
end


local title = display.newText( "Torch Plugin", display.contentCenterX, display.contentCenterY-180 , native.systemFont, 25 )

local turnOn = widget.newButton( {
    label = "Turn On",
    labelColor = { default={ 1, 1, 1 }, over={ 0, 0, 0, 0.5 } },
    id = "logImageShare",
    onRelease = function ( )
        torch.turnOn(.5) -- .5 only effect iOS
    end
} )
turnOn.x, turnOn.y = display.contentCenterX, display.contentCenterY-50


local turnOff = widget.newButton( {
    label = "Turn Off",
    labelColor = { default={ 1, 1, 1 }, over={ 0, 0, 0, 0.5 } },
    id = "logImageShare",
    onRelease = function ( )
        torch.turnOff()
    end
} )
turnOff.x, turnOff.y = display.contentCenterX, display.contentCenterY
