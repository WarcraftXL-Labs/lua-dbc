---@meta
-- Generated LuaLS annotations for LiquidObject (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of LiquidObject in build 12.1.5.69594.
---@class dbc.row.v1215.LiquidObject : RowProxy
---@field ID integer
---@field FlowDirection number
---@field FlowSpeed number
---@field LiquidTypeID integer
---@field Fishable integer
---@field Reflection integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.LiquidObject self
function row:SetID(value) end

---Gets the value of field 'FlowDirection'.
---@return number value
function row:GetFlowDirection() end

---Sets the value of field 'FlowDirection'.
---@param value number
---@return dbc.row.v1215.LiquidObject self
function row:SetFlowDirection(value) end

---Gets the value of field 'FlowSpeed'.
---@return number value
function row:GetFlowSpeed() end

---Sets the value of field 'FlowSpeed'.
---@param value number
---@return dbc.row.v1215.LiquidObject self
function row:SetFlowSpeed(value) end

---Gets the value of field 'LiquidTypeID'.
---@return integer value
function row:GetLiquidTypeID() end

---Sets the value of field 'LiquidTypeID'.
---@param value integer
---@return dbc.row.v1215.LiquidObject self
function row:SetLiquidTypeID(value) end

---Navigates foreign relationship to 'LiquidType' via 'LiquidTypeID'.
---@return dbc.row.v1215.LiquidType|nil
function row:GetLiquidType() end

---Creates a related 'LiquidType' row and automatically links 'LiquidTypeID'.
---@param data? table
---@return dbc.row.v1215.LiquidType
function row:CreateRelated(data) end

---Gets the value of field 'Fishable'.
---@return integer value
function row:GetFishable() end

---Sets the value of field 'Fishable'.
---@param value integer
---@return dbc.row.v1215.LiquidObject self
function row:SetFishable(value) end

---Gets the value of field 'Reflection'.
---@return integer value
function row:GetReflection() end

---Sets the value of field 'Reflection'.
---@param value integer
---@return dbc.row.v1215.LiquidObject self
function row:SetReflection(value) end

---Table container for LiquidObject (Build 12.1.5.69594).
---@class dbc.Table.v1215.LiquidObject : DbcTable
---@field [integer] dbc.row.v1215.LiquidObject
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.LiquidObject
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.LiquidObject|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.LiquidObject
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.LiquidObject>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.LiquidObject[]
function tbl:GetByRelation(foreign_id) end

return {}
