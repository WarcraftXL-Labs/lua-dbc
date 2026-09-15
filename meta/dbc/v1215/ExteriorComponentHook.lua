---@meta
-- Generated LuaLS annotations for ExteriorComponentHook (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ExteriorComponentHook in build 12.1.5.69594.
---@class dbc.row.v1215.ExteriorComponentHook : RowProxy
---@field OffsetPos number[]
---@field OffsetRot number[]
---@field ID integer
---@field ComponentType integer
---@field ExteriorComponentID integer

local row = {}

---Gets the value of field 'OffsetPos'.
---@return number[] value
function row:GetOffsetPos() end

---Sets the value of field 'OffsetPos'.
---@param value number[]
---@return dbc.row.v1215.ExteriorComponentHook self
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
---@return dbc.row.v1215.ExteriorComponentHook self
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
---@return dbc.row.v1215.ExteriorComponentHook self
function row:SetID(value) end

---Gets the value of field 'ComponentType'.
---@return integer value
function row:GetComponentType() end

---Sets the value of field 'ComponentType'.
---@param value integer
---@return dbc.row.v1215.ExteriorComponentHook self
function row:SetComponentType(value) end

---Navigates foreign relationship to 'ExteriorComponentType' via 'ComponentType'.
---@return dbc.row.v1215.ExteriorComponentType|nil
function row:GetComponentType() end

---Creates a related 'ExteriorComponentType' row and automatically links 'ComponentType'.
---@param data? table
---@return dbc.row.v1215.ExteriorComponentType
function row:CreateRelated(data) end

---Gets the value of field 'ExteriorComponentID'.
---@return integer value
function row:GetExteriorComponentID() end

---Sets the value of field 'ExteriorComponentID'.
---@param value integer
---@return dbc.row.v1215.ExteriorComponentHook self
function row:SetExteriorComponentID(value) end

---Navigates foreign relationship to 'ExteriorComponent' via 'ExteriorComponentID'.
---@return dbc.row.v1215.ExteriorComponent|nil
function row:GetExteriorComponent() end

---Creates a related 'ExteriorComponent' row and automatically links 'ExteriorComponentID'.
---@param data? table
---@return dbc.row.v1215.ExteriorComponent
function row:CreateRelated(data) end

---Table container for ExteriorComponentHook (Build 12.1.5.69594).
---@class dbc.Table.v1215.ExteriorComponentHook : DbcTable
---@field [integer] dbc.row.v1215.ExteriorComponentHook
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ExteriorComponentHook
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ExteriorComponentHook|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ExteriorComponentHook
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ExteriorComponentHook>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ExteriorComponentHook[]
function tbl:GetByRelation(foreign_id) end

return {}
