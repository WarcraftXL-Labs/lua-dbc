---@meta
-- Generated LuaLS annotations for PositionerState (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of PositionerState in build 12.1.5.69594.
---@class dbc.row.v1215.PositionerState : RowProxy
---@field ID integer
---@field NextStateID integer
---@field TransformMatrixID integer
---@field PosEntryID integer
---@field RotEntryID integer
---@field ScaleEntryID integer
---@field Flags integer
---@field EndLife number
---@field EndLifePercent integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.PositionerState self
function row:SetID(value) end

---Gets the value of field 'NextStateID'.
---@return integer value
function row:GetNextStateID() end

---Sets the value of field 'NextStateID'.
---@param value integer
---@return dbc.row.v1215.PositionerState self
function row:SetNextStateID(value) end

---Navigates foreign relationship to 'PositionerState' via 'NextStateID'.
---@return dbc.row.v1215.PositionerState|nil
function row:GetNextState() end

---Creates a related 'PositionerState' row and automatically links 'NextStateID'.
---@param data? table
---@return dbc.row.v1215.PositionerState
function row:CreateRelated(data) end

---Gets the value of field 'TransformMatrixID'.
---@return integer value
function row:GetTransformMatrixID() end

---Sets the value of field 'TransformMatrixID'.
---@param value integer
---@return dbc.row.v1215.PositionerState self
function row:SetTransformMatrixID(value) end

---Navigates foreign relationship to 'TransformMatrix' via 'TransformMatrixID'.
---@return dbc.row.v1215.TransformMatrix|nil
function row:GetTransformMatrix() end

---Creates a related 'TransformMatrix' row and automatically links 'TransformMatrixID'.
---@param data? table
---@return dbc.row.v1215.TransformMatrix
function row:CreateRelated(data) end

---Gets the value of field 'PosEntryID'.
---@return integer value
function row:GetPosEntryID() end

---Sets the value of field 'PosEntryID'.
---@param value integer
---@return dbc.row.v1215.PositionerState self
function row:SetPosEntryID(value) end

---Navigates foreign relationship to 'PositionerStateEntry' via 'PosEntryID'.
---@return dbc.row.v1215.PositionerStateEntry|nil
function row:GetPosEntry() end

---Creates a related 'PositionerStateEntry' row and automatically links 'PosEntryID'.
---@param data? table
---@return dbc.row.v1215.PositionerStateEntry
function row:CreateRelated(data) end

---Gets the value of field 'RotEntryID'.
---@return integer value
function row:GetRotEntryID() end

---Sets the value of field 'RotEntryID'.
---@param value integer
---@return dbc.row.v1215.PositionerState self
function row:SetRotEntryID(value) end

---Navigates foreign relationship to 'PositionerStateEntry' via 'RotEntryID'.
---@return dbc.row.v1215.PositionerStateEntry|nil
function row:GetRotEntry() end

---Creates a related 'PositionerStateEntry' row and automatically links 'RotEntryID'.
---@param data? table
---@return dbc.row.v1215.PositionerStateEntry
function row:CreateRelated(data) end

---Gets the value of field 'ScaleEntryID'.
---@return integer value
function row:GetScaleEntryID() end

---Sets the value of field 'ScaleEntryID'.
---@param value integer
---@return dbc.row.v1215.PositionerState self
function row:SetScaleEntryID(value) end

---Navigates foreign relationship to 'PositionerStateEntry' via 'ScaleEntryID'.
---@return dbc.row.v1215.PositionerStateEntry|nil
function row:GetScaleEntry() end

---Creates a related 'PositionerStateEntry' row and automatically links 'ScaleEntryID'.
---@param data? table
---@return dbc.row.v1215.PositionerStateEntry
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.PositionerState self
function row:SetFlags(value) end

---Gets the value of field 'EndLife'.
---@return number value
function row:GetEndLife() end

---Sets the value of field 'EndLife'.
---@param value number
---@return dbc.row.v1215.PositionerState self
function row:SetEndLife(value) end

---Gets the value of field 'EndLifePercent'.
---@return integer value
function row:GetEndLifePercent() end

---Sets the value of field 'EndLifePercent'.
---@param value integer
---@return dbc.row.v1215.PositionerState self
function row:SetEndLifePercent(value) end

---Table container for PositionerState (Build 12.1.5.69594).
---@class dbc.Table.v1215.PositionerState : DbcTable
---@field [integer] dbc.row.v1215.PositionerState
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.PositionerState
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.PositionerState|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.PositionerState
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.PositionerState>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.PositionerState[]
function tbl:GetByRelation(foreign_id) end

return {}
