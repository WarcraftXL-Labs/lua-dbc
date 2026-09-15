---@meta
-- Generated LuaLS annotations for TransmogSituationGroup (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of TransmogSituationGroup in build 12.1.5.69594.
---@class dbc.row.v1215.TransmogSituationGroup : RowProxy
---@field ID integer
---@field TransmogSituationTriggerID integer
---@field OrderIndex integer
---@field Flags integer 0x1: DynamicallyCreatesGroups

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.TransmogSituationGroup self
function row:SetID(value) end

---Gets the value of field 'TransmogSituationTriggerID'.
---@return integer value
function row:GetTransmogSituationTriggerID() end

---Sets the value of field 'TransmogSituationTriggerID'.
---@param value integer
---@return dbc.row.v1215.TransmogSituationGroup self
function row:SetTransmogSituationTriggerID(value) end

---Navigates foreign relationship to 'TransmogSituationTrigger' via 'TransmogSituationTriggerID'.
---@return dbc.row.v1215.TransmogSituationTrigger|nil
function row:GetTransmogSituationTrigger() end

---Creates a related 'TransmogSituationTrigger' row and automatically links 'TransmogSituationTriggerID'.
---@param data? table
---@return dbc.row.v1215.TransmogSituationTrigger
function row:CreateRelated(data) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.TransmogSituationGroup self
function row:SetOrderIndex(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.TransmogSituationGroup self
function row:SetFlags(value) end

---Table container for TransmogSituationGroup (Build 12.1.5.69594).
---@class dbc.Table.v1215.TransmogSituationGroup : DbcTable
---@field [integer] dbc.row.v1215.TransmogSituationGroup
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.TransmogSituationGroup
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.TransmogSituationGroup|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.TransmogSituationGroup
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.TransmogSituationGroup>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.TransmogSituationGroup[]
function tbl:GetByRelation(foreign_id) end

return {}
