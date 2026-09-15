---@meta
-- Generated LuaLS annotations for GarrTalentSocketProperties (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GarrTalentSocketProperties in build 12.1.5.69594.
---@class dbc.row.v1215.GarrTalentSocketProperties : RowProxy
---@field ID integer
---@field GarrTalentSocketType integer
---@field GarrTalentSocketSubtype integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GarrTalentSocketProperties self
function row:SetID(value) end

---Gets the value of field 'GarrTalentSocketType'.
---@return integer value
function row:GetGarrTalentSocketType() end

---Sets the value of field 'GarrTalentSocketType'.
---@param value integer
---@return dbc.row.v1215.GarrTalentSocketProperties self
function row:SetGarrTalentSocketType(value) end

---Gets the value of field 'GarrTalentSocketSubtype'.
---@return integer value
function row:GetGarrTalentSocketSubtype() end

---Sets the value of field 'GarrTalentSocketSubtype'.
---@param value integer
---@return dbc.row.v1215.GarrTalentSocketProperties self
function row:SetGarrTalentSocketSubtype(value) end

---Table container for GarrTalentSocketProperties (Build 12.1.5.69594).
---@class dbc.Table.v1215.GarrTalentSocketProperties : DbcTable
---@field [integer] dbc.row.v1215.GarrTalentSocketProperties
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GarrTalentSocketProperties
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GarrTalentSocketProperties|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GarrTalentSocketProperties
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GarrTalentSocketProperties>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GarrTalentSocketProperties[]
function tbl:GetByRelation(foreign_id) end

return {}
