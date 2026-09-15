---@meta
-- Generated LuaLS annotations for MusicOverride (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of MusicOverride in build 12.1.5.69594.
---@class dbc.row.v1215.MusicOverride : RowProxy
---@field ID integer
---@field ZoneIntroMusicID integer
---@field ZoneMusicID integer
---@field Flags integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.MusicOverride self
function row:SetID(value) end

---Gets the value of field 'ZoneIntroMusicID'.
---@return integer value
function row:GetZoneIntroMusicID() end

---Sets the value of field 'ZoneIntroMusicID'.
---@param value integer
---@return dbc.row.v1215.MusicOverride self
function row:SetZoneIntroMusicID(value) end

---Navigates foreign relationship to 'ZoneIntroMusicTable' via 'ZoneIntroMusicID'.
---@return dbc.row.v1215.ZoneIntroMusicTable|nil
function row:GetZoneIntroMusic() end

---Creates a related 'ZoneIntroMusicTable' row and automatically links 'ZoneIntroMusicID'.
---@param data? table
---@return dbc.row.v1215.ZoneIntroMusicTable
function row:CreateRelated(data) end

---Gets the value of field 'ZoneMusicID'.
---@return integer value
function row:GetZoneMusicID() end

---Sets the value of field 'ZoneMusicID'.
---@param value integer
---@return dbc.row.v1215.MusicOverride self
function row:SetZoneMusicID(value) end

---Navigates foreign relationship to 'ZoneMusic' via 'ZoneMusicID'.
---@return dbc.row.v1215.ZoneMusic|nil
function row:GetZoneMusic() end

---Creates a related 'ZoneMusic' row and automatically links 'ZoneMusicID'.
---@param data? table
---@return dbc.row.v1215.ZoneMusic
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.MusicOverride self
function row:SetFlags(value) end

---Table container for MusicOverride (Build 12.1.5.69594).
---@class dbc.Table.v1215.MusicOverride : DbcTable
---@field [integer] dbc.row.v1215.MusicOverride
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.MusicOverride
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.MusicOverride|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.MusicOverride
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.MusicOverride>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.MusicOverride[]
function tbl:GetByRelation(foreign_id) end

return {}
