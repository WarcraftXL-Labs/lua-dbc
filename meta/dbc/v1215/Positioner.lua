---@meta
-- Generated LuaLS annotations for Positioner (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of Positioner in build 12.1.5.69594.
---@class dbc.row.v1215.Positioner : RowProxy
---@field ID integer
---@field FirstStateID integer
---@field Flags integer &2: ignore some begin, end given, probably some time thing from a parent?
---@field StartLife number
---@field StartLifePercent integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.Positioner self
function row:SetID(value) end

---Gets the value of field 'FirstStateID'.
---@return integer value
function row:GetFirstStateID() end

---Sets the value of field 'FirstStateID'.
---@param value integer
---@return dbc.row.v1215.Positioner self
function row:SetFirstStateID(value) end

---Navigates foreign relationship to 'PositionerState' via 'FirstStateID'.
---@return dbc.row.v1215.PositionerState|nil
function row:GetFirstState() end

---Creates a related 'PositionerState' row and automatically links 'FirstStateID'.
---@param data? table
---@return dbc.row.v1215.PositionerState
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.Positioner self
function row:SetFlags(value) end

---Gets the value of field 'StartLife'.
---@return number value
function row:GetStartLife() end

---Sets the value of field 'StartLife'.
---@param value number
---@return dbc.row.v1215.Positioner self
function row:SetStartLife(value) end

---Gets the value of field 'StartLifePercent'.
---@return integer value
function row:GetStartLifePercent() end

---Sets the value of field 'StartLifePercent'.
---@param value integer
---@return dbc.row.v1215.Positioner self
function row:SetStartLifePercent(value) end

---Table container for Positioner (Build 12.1.5.69594).
---@class dbc.Table.v1215.Positioner : DbcTable
---@field [integer] dbc.row.v1215.Positioner
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.Positioner
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.Positioner|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.Positioner
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.Positioner>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.Positioner[]
function tbl:GetByRelation(foreign_id) end

return {}
