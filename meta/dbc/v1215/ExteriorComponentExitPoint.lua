---@meta
-- Generated LuaLS annotations for ExteriorComponentExitPoint (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ExteriorComponentExitPoint in build 12.1.5.69594.
---@class dbc.row.v1215.ExteriorComponentExitPoint : RowProxy
---@field OffsetPos number[]
---@field OffsetRot number[]
---@field ID integer
---@field ExteriorComponentID integer

local row = {}

---Gets the value of field 'OffsetPos'.
---@return number[] value
function row:GetOffsetPos() end

---Sets the value of field 'OffsetPos'.
---@param value number[]
---@return dbc.row.v1215.ExteriorComponentExitPoint self
function row:SetOffsetPos(value) end

---Gets element at 1-based index in 'OffsetPos'.
---@param index integer
---@return number value
function row:GetOffsetPosItem(index) end

---Gets the value of field 'OffsetRot'.
---@return number[] value
function row:GetOffsetRot() end

---Sets the value of field 'OffsetRot'.
---@param value number[]
---@return dbc.row.v1215.ExteriorComponentExitPoint self
function row:SetOffsetRot(value) end

---Gets element at 1-based index in 'OffsetRot'.
---@param index integer
---@return number value
function row:GetOffsetRotItem(index) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ExteriorComponentExitPoint self
function row:SetID(value) end

---Gets the value of field 'ExteriorComponentID'.
---@return integer value
function row:GetExteriorComponentID() end

---Sets the value of field 'ExteriorComponentID'.
---@param value integer
---@return dbc.row.v1215.ExteriorComponentExitPoint self
function row:SetExteriorComponentID(value) end

---Navigates foreign relationship to 'ExteriorComponent' via 'ExteriorComponentID'.
---@return dbc.row.v1215.ExteriorComponent|nil
function row:GetExteriorComponent() end

---Creates a related 'ExteriorComponent' row and automatically links 'ExteriorComponentID'.
---@param data? table
---@return dbc.row.v1215.ExteriorComponent
function row:CreateRelated(data) end

---Table container for ExteriorComponentExitPoint (Build 12.1.5.69594).
---@class dbc.Table.v1215.ExteriorComponentExitPoint : DbcTable
---@field [integer] dbc.row.v1215.ExteriorComponentExitPoint
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ExteriorComponentExitPoint
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ExteriorComponentExitPoint|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ExteriorComponentExitPoint
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ExteriorComponentExitPoint>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ExteriorComponentExitPoint[]
function tbl:GetByRelation(foreign_id) end

return {}
