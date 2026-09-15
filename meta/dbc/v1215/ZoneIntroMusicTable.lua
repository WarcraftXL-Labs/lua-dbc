---@meta
-- Generated LuaLS annotations for ZoneIntroMusicTable (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ZoneIntroMusicTable in build 12.1.5.69594.
---@class dbc.row.v1215.ZoneIntroMusicTable : RowProxy
---@field ID integer
---@field Name string
---@field SoundID integer
---@field Priority integer
---@field MinDelayMinutes integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ZoneIntroMusicTable self
function row:SetID(value) end

---Gets the value of field 'Name'.
---@return string value
function row:GetName() end

---Sets the value of field 'Name'.
---@param value string
---@return dbc.row.v1215.ZoneIntroMusicTable self
function row:SetName(value) end

---Gets the value of field 'SoundID'.
---@return integer value
function row:GetSoundID() end

---Sets the value of field 'SoundID'.
---@param value integer
---@return dbc.row.v1215.ZoneIntroMusicTable self
function row:SetSoundID(value) end

---Navigates foreign relationship to 'SoundEntries' via 'SoundID'.
---@return dbc.row.v1215.SoundEntries|nil
function row:GetSound() end

---Creates a related 'SoundEntries' row and automatically links 'SoundID'.
---@param data? table
---@return dbc.row.v1215.SoundEntries
function row:CreateRelated(data) end

---Gets the value of field 'Priority'.
---@return integer value
function row:GetPriority() end

---Sets the value of field 'Priority'.
---@param value integer
---@return dbc.row.v1215.ZoneIntroMusicTable self
function row:SetPriority(value) end

---Gets the value of field 'MinDelayMinutes'.
---@return integer value
function row:GetMinDelayMinutes() end

---Sets the value of field 'MinDelayMinutes'.
---@param value integer
---@return dbc.row.v1215.ZoneIntroMusicTable self
function row:SetMinDelayMinutes(value) end

---Table container for ZoneIntroMusicTable (Build 12.1.5.69594).
---@class dbc.Table.v1215.ZoneIntroMusicTable : DbcTable
---@field [integer] dbc.row.v1215.ZoneIntroMusicTable
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ZoneIntroMusicTable
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ZoneIntroMusicTable|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ZoneIntroMusicTable
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ZoneIntroMusicTable>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ZoneIntroMusicTable[]
function tbl:GetByRelation(foreign_id) end

return {}
