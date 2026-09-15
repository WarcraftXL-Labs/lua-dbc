---@meta
-- Generated LuaLS annotations for CreatureSoundFidget (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CreatureSoundFidget in build 12.1.5.69594.
---@class dbc.row.v1215.CreatureSoundFidget : RowProxy
---@field ID integer
---@field Fidget integer
---@field Index integer
---@field CreatureSoundDataID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CreatureSoundFidget self
function row:SetID(value) end

---Gets the value of field 'Fidget'.
---@return integer value
function row:GetFidget() end

---Sets the value of field 'Fidget'.
---@param value integer
---@return dbc.row.v1215.CreatureSoundFidget self
function row:SetFidget(value) end

---Navigates foreign relationship to 'SoundKit' via 'Fidget'.
---@return dbc.row.v1215.SoundKit|nil
function row:GetFidget() end

---Creates a related 'SoundKit' row and automatically links 'Fidget'.
---@param data? table
---@return dbc.row.v1215.SoundKit
function row:CreateRelated(data) end

---Gets the value of field 'Index'.
---@return integer value
function row:GetIndex() end

---Sets the value of field 'Index'.
---@param value integer
---@return dbc.row.v1215.CreatureSoundFidget self
function row:SetIndex(value) end

---Gets the value of field 'CreatureSoundDataID'.
---@return integer value
function row:GetCreatureSoundDataID() end

---Sets the value of field 'CreatureSoundDataID'.
---@param value integer
---@return dbc.row.v1215.CreatureSoundFidget self
function row:SetCreatureSoundDataID(value) end

---Navigates foreign relationship to 'CreatureSoundData' via 'CreatureSoundDataID'.
---@return dbc.row.v1215.CreatureSoundData|nil
function row:GetCreatureSoundData() end

---Creates a related 'CreatureSoundData' row and automatically links 'CreatureSoundDataID'.
---@param data? table
---@return dbc.row.v1215.CreatureSoundData
function row:CreateRelated(data) end

---Table container for CreatureSoundFidget (Build 12.1.5.69594).
---@class dbc.Table.v1215.CreatureSoundFidget : DbcTable
---@field [integer] dbc.row.v1215.CreatureSoundFidget
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CreatureSoundFidget
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CreatureSoundFidget|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CreatureSoundFidget
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CreatureSoundFidget>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CreatureSoundFidget[]
function tbl:GetByRelation(foreign_id) end

return {}
