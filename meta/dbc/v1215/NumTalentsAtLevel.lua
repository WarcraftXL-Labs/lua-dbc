---@meta
-- Generated LuaLS annotations for NumTalentsAtLevel (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of NumTalentsAtLevel in build 12.1.5.69594.
---@class dbc.row.v1215.NumTalentsAtLevel : RowProxy
---@field ID integer
---@field NumTalents integer
---@field NumTalentsDeathKnight integer
---@field NumTalentsDemonHunter integer
---@field NumberOfTalents number NumTalents but type is different

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.NumTalentsAtLevel self
function row:SetID(value) end

---Gets the value of field 'NumTalents'.
---@return integer value
function row:GetNumTalents() end

---Sets the value of field 'NumTalents'.
---@param value integer
---@return dbc.row.v1215.NumTalentsAtLevel self
function row:SetNumTalents(value) end

---Gets the value of field 'NumTalentsDeathKnight'.
---@return integer value
function row:GetNumTalentsDeathKnight() end

---Sets the value of field 'NumTalentsDeathKnight'.
---@param value integer
---@return dbc.row.v1215.NumTalentsAtLevel self
function row:SetNumTalentsDeathKnight(value) end

---Gets the value of field 'NumTalentsDemonHunter'.
---@return integer value
function row:GetNumTalentsDemonHunter() end

---Sets the value of field 'NumTalentsDemonHunter'.
---@param value integer
---@return dbc.row.v1215.NumTalentsAtLevel self
function row:SetNumTalentsDemonHunter(value) end

---Gets the value of field 'NumberOfTalents'.
---@return number value
function row:GetNumberOfTalents() end

---Sets the value of field 'NumberOfTalents'.
---@param value number
---@return dbc.row.v1215.NumTalentsAtLevel self
function row:SetNumberOfTalents(value) end

---Table container for NumTalentsAtLevel (Build 12.1.5.69594).
---@class dbc.Table.v1215.NumTalentsAtLevel : DbcTable
---@field [integer] dbc.row.v1215.NumTalentsAtLevel
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.NumTalentsAtLevel
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.NumTalentsAtLevel|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.NumTalentsAtLevel
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.NumTalentsAtLevel>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.NumTalentsAtLevel[]
function tbl:GetByRelation(foreign_id) end

return {}
