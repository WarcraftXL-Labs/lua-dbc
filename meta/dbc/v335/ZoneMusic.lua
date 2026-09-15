---@meta
-- Generated LuaLS annotations for ZoneMusic (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of ZoneMusic in build 3.3.5.12340.
---@class dbc.row.v335.ZoneMusic : RowProxy
---@field ID integer
---@field SetName string
---@field SilenceIntervalMin integer[]
---@field SilenceIntervalMax integer[]
---@field Sounds integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.ZoneMusic self
function row:SetID(value) end

---Gets the value of field 'SetName'.
---@return string value
function row:GetSetName() end

---Sets the value of field 'SetName'.
---@param value string
---@return dbc.row.v335.ZoneMusic self
function row:SetSetName(value) end

---Gets the value of field 'SilenceIntervalMin'.
---@return integer[] value
function row:GetSilenceIntervalMin() end

---Sets the value of field 'SilenceIntervalMin'.
---@param value integer[]
---@return dbc.row.v335.ZoneMusic self
function row:SetSilenceIntervalMin(value) end

---Gets element at 1-based index in 'SilenceIntervalMin'.
---@param index integer
---@return integer value
function row:GetSilenceIntervalMinItem(index) end

---Gets the value of field 'SilenceIntervalMax'.
---@return integer[] value
function row:GetSilenceIntervalMax() end

---Sets the value of field 'SilenceIntervalMax'.
---@param value integer[]
---@return dbc.row.v335.ZoneMusic self
function row:SetSilenceIntervalMax(value) end

---Gets element at 1-based index in 'SilenceIntervalMax'.
---@param index integer
---@return integer value
function row:GetSilenceIntervalMaxItem(index) end

---Gets the value of field 'Sounds'.
---@return integer[] value
function row:GetSounds() end

---Sets the value of field 'Sounds'.
---@param value integer[]
---@return dbc.row.v335.ZoneMusic self
function row:SetSounds(value) end

---Gets element at 1-based index in 'Sounds'.
---@param index integer
---@return integer value
function row:GetSoundsItem(index) end

---Navigates foreign relationship to 'SoundEntries' via 'Sounds'.
---@return dbc.row.v335.SoundEntries|nil
function row:GetSounds() end

---Creates a related 'SoundEntries' row and automatically links 'Sounds'.
---@param data? table
---@return dbc.row.v335.SoundEntries
function row:CreateRelated(data) end

---Table container for ZoneMusic (Build 3.3.5.12340).
---@class dbc.Table.v335.ZoneMusic : DbcTable
---@field [integer] dbc.row.v335.ZoneMusic
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.ZoneMusic
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.ZoneMusic|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.ZoneMusic
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.ZoneMusic>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.ZoneMusic[]
function tbl:GetByRelation(foreign_id) end

return {}
