--[[
    _build.lua
    Shared WoW build version parsing and comparison utilities.
    Used across runtime (schema, relations) and tooling (dbd_common).
]]

local build = {}

--- Normalizes a build entry into a 4-tuple {expansion, major, minor, build}.
--- Accepts:
---   "3.3.5.12340"                    -> {3, 3, 5, 12340}
---   "3.3.5a.12340"                   -> {3, 3, 5, 12340}
---   "3.3.5"                          -> {0, 3, 3, 5}
---   {expansion, major, minor, build} -> {exp, maj, min, build}
--- @param b string|table|nil
--- @return integer[]|nil
function build.parse(b)
    if not b then return nil end

    if type(b) == "table" then
        if b.expansion and b.major and b.minor and b.build then
            return {
                tonumber(b.expansion),
                tonumber(b.major),
                tonumber(b.minor),
                tonumber(b.build),
            }
        end
        return nil
    end

    if type(b) == "string" then
        local s = b:gsub("^%s+", ""):gsub("%s+$", "")
        local letter = s:match("%d+%.%d+%.%d+(%a+)") or ""
        -- Strip letter revision suffix: "3.3.5a.12340" -> "3.3.5.12340"
        local clean = s:gsub("(%d+%.%d+%.%d+)%a+(%.%d+)", "%1%2")
        clean = clean:gsub("(%d+%.%d+%.%d+)%a+$", "%1")

        local e, maj, min, bld = string.match(clean, "^(%d+)%.(%d+)%.(%d+)%.(%d+)$")
        if e then
            local res = { tonumber(e), tonumber(maj), tonumber(min), tonumber(bld) }
            res.expansion = res[1]
            res.major = res[1]
            res.minor = res[2]
            res.patch = res[3]
            res.build = res[4]
            res.letter = letter
            return res
        end
        local maj2, min2, bld2 = string.match(clean, "^(%d+)%.(%d+)%.(%d+)$")
        if maj2 then
            local res = { tonumber(maj2), tonumber(min2), tonumber(bld2), 0 }
            res.expansion = res[1]
            res.major = res[1]
            res.minor = res[2]
            res.patch = res[3]
            res.build = 0
            res.letter = letter
            return res
        end
    end

    return nil
end

--- Converts a build tuple back to canonical string form: "3.3.5.12340".
--- @param b integer[]|nil
--- @return string|nil
function build.to_str(b)
    if not b then return nil end
    return string.format("%d.%d.%d.%d", b[1], b[2], b[3], b[4])
end

--- Compares two build tuples.
--- @param a integer[]
--- @param b integer[]
--- @return integer -1 if a < b, 1 if a > b, 0 if equal
function build.cmp(a, b)
    for i = 1, 4 do
        if a[i] < b[i] then return -1
        elseif a[i] > b[i] then return 1 end
    end
    local la = a.letter or ""
    local lb = b.letter or ""
    if la < lb then return -1
    elseif la > lb then return 1 end
    return 0
end

--- Tests whether a build entry (string, range string, or table) matches a target.
--- @param entry string|table
--- @param target integer[]|string
--- @return boolean
function build.matches(entry, target)
    if not target then return false end
    if type(target) == "string" then
        target = build.parse(target)
        if not target then return false end
    end

    -- Range string: "min-max"
    if type(entry) == "string" and string.find(entry, "-") then
        local min_s, max_s = string.match(entry, "^(.-)%-(.-)$")
        local min_b = build.parse(min_s)
        local max_b = build.parse(max_s)
        if min_b and max_b then
            return build.cmp(target, min_b) >= 0
               and build.cmp(target, max_b) <= 0
        end
        return false
    end

    local eb = build.parse(entry)
    if not eb then return false end

    -- Check the first 3 components (expansion, major, minor)
    for i = 1, 3 do
        if target[i] ~= eb[i] then return false end
    end

    -- If letter is specified on either, it must match
    local tla = target.letter or ""
    local elb = eb.letter or ""
    if tla ~= "" and elb ~= "" and tla ~= elb then
        return false
    end

    -- If both have a non-zero build number, compare it
    if (target[4] and target[4] > 0) and (eb[4] and eb[4] > 0) then
        return target[4] == eb[4]
    end

    return true
end

--- Returns a short tag for a build: "3.3.5.12340" -> "v335".
--- @param build_str string
--- @return string
function build.get_tag(build_str)
    local parts = {}
    for p in build_str:gmatch("[^.]+") do parts[#parts + 1] = p end
    if #parts >= 3 then
        return string.format("v%d%d%d",
            tonumber(parts[1]), tonumber(parts[2]), tonumber(parts[3]))
    end
    return "v" .. build_str:gsub("%.", "_")
end

return build
