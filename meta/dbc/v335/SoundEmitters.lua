---@meta
-- Generated LuaLS annotations for SoundEmitters (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of SoundEmitters in build 3.3.5.12340.
---@class dbc.row.v335.SoundEmitters : RowProxy
---@field ID integer
---@field Position number[]
---@field Direction number[]
---@field SoundEntryAdvancedID integer
---@field MapID integer
---@field Name string

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.SoundEmitters self
function row:SetID(value) end

---Gets the value of field 'Position'.
---@return number[] value
function row:GetPosition() end

---Sets the value of field 'Position'.
---@param value number[]
---@return dbc.row.v335.SoundEmitters self
function row:SetPosition(value) end

---Gets element at 1-based index in 'Position'.
---@param index integer
---@return number value
function row:GetPositionItem(index) end

---Gets the value of field 'Direction'.
---@return number[] value
function row:GetDirection() end

---Sets the value of field 'Direction'.
---@param value number[]
---@return dbc.row.v335.SoundEmitters self
function row:SetDirection(value) end

---Gets element at 1-based index in 'Direction'.
---@param index integer
---@return number value
function row:GetDirectionItem(index) end

---Gets the value of field 'SoundEntryAdvancedID'.
---@return integer value
function row:GetSoundEntryAdvancedID() end

---Sets the value of field 'SoundEntryAdvancedID'.
---@param value integer
---@return dbc.row.v335.SoundEmitters self
function row:SetSoundEntryAdvancedID(value) end

---Navigates foreign relationship to 'SoundEntriesAdvanced' via 'SoundEntryAdvancedID'.
---@return dbc.row.v335.SoundEntriesAdvanced|nil
function row:GetSoundEntryAdvanced() end

---Creates a related 'SoundEntriesAdvanced' row and automatically links 'SoundEntryAdvancedID'.
---@param data? table
---@return dbc.row.v335.SoundEntriesAdvanced
function row:CreateRelated(data) end

---Gets the value of field 'MapID'.
---@return integer value
function row:GetMapID() end

---Sets the value of field 'MapID'.
---@param value integer
---@return dbc.row.v335.SoundEmitters self
function row:SetMapID(value) end

---Navigates foreign relationship to 'Map' via 'MapID'.
---@return dbc.row.v335.Map|nil
function row:GetMap() end

---Creates a related 'Map' row and automatically links 'MapID'.
---@param data? table
---@return dbc.row.v335.Map
function row:CreateRelated(data) end

---Gets the value of field 'Name'.
---@return string value
function row:GetName() end

---Sets the value of field 'Name'.
---@param value string
---@return dbc.row.v335.SoundEmitters self
function row:SetName(value) end

---Table container for SoundEmitters (Build 3.3.5.12340).
---@class dbc.Table.v335.SoundEmitters : DbcTable
---@field [integer] dbc.row.v335.SoundEmitters
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.SoundEmitters
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.SoundEmitters|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.SoundEmitters
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.SoundEmitters>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.SoundEmitters[]
function tbl:GetByRelation(foreign_id) end

return {}
