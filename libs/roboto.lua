local roboto = {}

local lf = love.graphics.newFont
local ps = love.window.getDPIScale()
local OS = love.system.getOS()

local n = OS == "Android" and OS == "iOS" and 0 or 1

local load = function (a)
    a = a.."/roboto"
    local medium,regular,light = a.."-medium.ttf",a.."-regular.ttf",a.."-light.ttf"

    roboto = {
        display4    = lf(light,     112 * ps),
        display3    = lf(regular,   56  * ps),
        display2    = lf(regular,   45  * ps),
        display1    = lf(regular,   34  * ps),
        headline    = lf(regular,   24  * ps),
        title       = lf(medium,    20  * ps),
        subhead     = lf(regular,   (16 - n) * ps),
        body2       = lf(medium,    (14 - n) * ps),
        body1       = lf(regular,   (14 - n) * ps),
        caption     = lf(regular,   12  * ps),
        button      = lf(medium,    15  * ps)
    }

    local get = function (self, font)
        return self[font]
    end

    setmetatable(roboto, {__call = get})

    return roboto
end

return load
