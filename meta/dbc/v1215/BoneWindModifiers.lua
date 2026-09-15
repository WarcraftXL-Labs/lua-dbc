---@meta
-- Generated LuaLS annotations for BoneWindModifiers (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of BoneWindModifiers in build 12.1.5.69594.
---@class dbc.row.v1215.BoneWindModifiers : RowProxy
---@field ID integer
---@field Multiplier number[]
---@field PhaseMultiplier number <= 3500

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.BoneWindModifiers self
function row:SetID(value) end

---Gets the value of field 'Multiplier'.
---@return number[] value
function row:GetMultiplier() end

---Sets the value of field 'Multiplier'.
---@param value number[]
---@return dbc.row.v1215.BoneWindModifiers self
function row:SetMultiplier(value) end

---Gets element at 1-based index in 'Multiplier'.
---@param index integer
---@return number value
function row:GetMultiplierItem(index) end

---Gets the value of field 'PhaseMultiplier'.
---@return number value
function row:GetPhaseMultiplier() end

---Sets the value of field 'PhaseMultiplier'.
---@param value number
---@return dbc.row.v1215.BoneWindModifiers self
function row:SetPhaseMultiplier(value) end

---Table container for BoneWindModifiers (Build 12.1.5.69594).
---@class dbc.Table.v1215.BoneWindModifiers : DbcTable
---@field [integer] dbc.row.v1215.BoneWindModifiers
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.BoneWindModifiers
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.BoneWindModifiers|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.BoneWindModifiers
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.BoneWindModifiers>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.BoneWindModifiers[]
function tbl:GetByRelation(foreign_id) end

return {}
