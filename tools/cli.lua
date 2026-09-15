--[[
    tools/cli.lua
    Extra CLI helpers (timing, formatting, command execution).
]]

local cli = {}

--- Returns a simple stopwatch function.
function cli.timer()
    local t0 = os.clock()
    return function()
        return os.clock() - t0
    end
end

--- Formats a duration for display.
function cli.format_duration(seconds)
    if seconds < 1 then
        return string.format("%.0fms", seconds * 1000)
    end
    return string.format("%.2fs", seconds)
end

--- Prints a line prefixed with "[label]".
function cli.log(label, ...)
    local msg = string.format(...)
    print(string.format("[%s] %s", label, msg))
end

--- Runs a shell command, returns true on success.
function cli.run(cmd)
    local ok, _, code = os.execute(cmd)
    if ok == true or ok == 0 then
        return true
    end
    return false
end

return cli