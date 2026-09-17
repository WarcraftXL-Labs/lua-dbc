--[[
    tools/fs.lua
    Cross-platform filesystem helpers for lua-dbc tools.

    NOTE on directory testing under Windows:
        io.open(path, "rb") cannot open a directory on Windows. It returns
        nil immediately (EACCES or ENOENT), so a "does this path exist?"
        test based on io.open() will always report false for directories.
        Use fs.isdir() to test for directories, and fs.exists() for files.
]]

local fs = {}

local is_windows = package.config:sub(1, 1) == "\\"

-- ---------------------------------------------------------------------------
-- Directory and file listing
-- ---------------------------------------------------------------------------

--- Lists the entries of a directory, optionally filtered by extension.
--- Returns names only (files and subdirectories are not distinguished here).
--- @param dir string
--- @param ext string|nil Extension to filter on (e.g. ".json").
--- @return string[]
function fs.listdir(dir, ext)
    local files = {}
    local cmd
    if is_windows then
        cmd = 'dir /b "' .. dir:gsub("/", "\\") .. '" 2>nul'
    else
        cmd = 'ls "' .. dir .. '" 2>/dev/null'
    end

    local handle = io.popen(cmd)
    if not handle then return files end

    for name in handle:lines() do
        if name ~= "" and (not ext or name:sub(-#ext) == ext) then
            files[#files + 1] = name
        end
    end
    handle:close()
    table.sort(files)
    return files
end

-- ---------------------------------------------------------------------------
-- Path creation
-- ---------------------------------------------------------------------------

--- Creates a directory (and any missing parents).
--- @param path string
function fs.mkdir(path)
    if is_windows then
        local win_path = path:gsub("/", "\\")
        os.execute('if not exist "' .. win_path .. '" mkdir "' .. win_path .. '" >nul 2>nul')
    else
        os.execute('mkdir -p "' .. path .. '" 2>/dev/null')
    end
end

-- ---------------------------------------------------------------------------
-- Existence checks
-- ---------------------------------------------------------------------------

--- Returns true if the path points to a readable file.
--- Do NOT use this to test for directories on Windows: io.open() cannot
--- open a directory there and would always return nil.
--- @param path string
--- @return boolean
function fs.exists(path)
    local f = io.open(path, "rb")
    if f then
        f:close()
        return true
    end
    return false
end

--- Returns true if the path points to an existing directory.
--- Uses an OS-native directory listing command, because io.open() cannot
--- detect directories on Windows.
--- @param path string
--- @return boolean
function fs.isdir(path)
    local cmd
    if is_windows then
        -- `dir /ad /b <path>` lists only directories in bare format.
        -- It sets an error level of 1 if the path does not exist or is
        -- not a directory.
        cmd = 'dir /ad /b "' .. path:gsub("/", "\\") .. '" >nul 2>nul'
        local ok = os.execute(cmd)
        -- On Windows, os.execute returns the exit code directly (0 = success).
        return ok == 0 or ok == true
    else
        -- On Unix, os.execute returns (true|nil, "exit", code).
        local ok = os.execute('test -d "' .. path .. '"')
        return ok == true
    end
end

-- ---------------------------------------------------------------------------
-- Reading and writing
-- ---------------------------------------------------------------------------

--- Reads an entire file. Returns nil if the file cannot be opened.
--- @param path string
--- @return string|nil
function fs.read(path)
    local f = io.open(path, "rb")
    if not f then return nil end
    local content = f:read("*a")
    f:close()
    return content
end

--- Writes an entire file. Returns true on success, false otherwise.
--- @param path string
--- @param content string
--- @return boolean
function fs.write(path, content)
    local f, err = io.open(path, "wb")
    if not f then
        io.stderr:write(string.format("fs.write error [%s]: %s\n", tostring(path), tostring(err)))
        return false
    end
    f:write(content)
    f:close()
    return true
end

-- ---------------------------------------------------------------------------
-- Path joining
-- ---------------------------------------------------------------------------

--- Joins path segments using the platform separator and normalizes
--- duplicate separators.
--- @param ... string
--- @return string
function fs.join(...)
    local sep = is_windows and "\\" or "/"
    local parts = {}
    for _, p in ipairs({ ... }) do
        if p and p ~= "" then
            parts[#parts + 1] = p
        end
    end
    local result = table.concat(parts, sep)
    result = result:gsub("[/\\]+", sep)
    return result
end

return fs