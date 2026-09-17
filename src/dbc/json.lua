--[[
    json.lua
    High-performance JSON encoder/decoder for lua-dbc using lua-cjson.
]]

local ok, cjson = pcall(require, "cjson.safe")
if not ok then
    ok, cjson = pcall(require, "cjson")
end

if not ok then
    error("lua-cjson is required by lua-dbc. Install it with: luarocks install lua-cjson")
end

local json = {
    cjson = cjson,
    null  = cjson.null,
}

--- Decodes a JSON string into a Lua table.
--- @param str string JSON string
--- @return any decoded
function json.decode(str)
    local res, err = cjson.decode(str)
    if err then
        error("JSON decode error: " .. tostring(err))
    end
    return res
end

--- Encodes a Lua value into a JSON string.
--- @param value any
--- @return string encoded
function json.encode(value)
    return cjson.encode(value)
end

return json
