---@meta
-- Generated LuaLS annotations for AzeritePowerSetMember (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of AzeritePowerSetMember in build 12.1.5.69594.
---@class dbc.row.v1215.AzeritePowerSetMember : RowProxy
---@field ID integer
---@field AzeritePowerSetID integer
---@field AzeritePowerID integer
---@field Class integer
---@field Tier integer
---@field OrderIndex integer within set x tier x class

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.AzeritePowerSetMember self
function row:SetID(value) end

---Gets the value of field 'AzeritePowerSetID'.
---@return integer value
function row:GetAzeritePowerSetID() end

---Sets the value of field 'AzeritePowerSetID'.
---@param value integer
---@return dbc.row.v1215.AzeritePowerSetMember self
function row:SetAzeritePowerSetID(value) end

---Navigates foreign relationship to 'AzeritePowerSet' via 'AzeritePowerSetID'.
---@return dbc.row.v1215.AzeritePowerSet|nil
function row:GetAzeritePowerSet() end

---Creates a related 'AzeritePowerSet' row and automatically links 'AzeritePowerSetID'.
---@param data? table
---@return dbc.row.v1215.AzeritePowerSet
function row:CreateRelated(data) end

---Gets the value of field 'AzeritePowerID'.
---@return integer value
function row:GetAzeritePowerID() end

---Sets the value of field 'AzeritePowerID'.
---@param value integer
---@return dbc.row.v1215.AzeritePowerSetMember self
function row:SetAzeritePowerID(value) end

---Navigates foreign relationship to 'AzeritePower' via 'AzeritePowerID'.
---@return dbc.row.v1215.AzeritePower|nil
function row:GetAzeritePower() end

---Creates a related 'AzeritePower' row and automatically links 'AzeritePowerID'.
---@param data? table
---@return dbc.row.v1215.AzeritePower
function row:CreateRelated(data) end

---Gets the value of field 'Class'.
---@return integer value
function row:GetClass() end

---Sets the value of field 'Class'.
---@param value integer
---@return dbc.row.v1215.AzeritePowerSetMember self
function row:SetClass(value) end

---Gets the value of field 'Tier'.
---@return integer value
function row:GetTier() end

---Sets the value of field 'Tier'.
---@param value integer
---@return dbc.row.v1215.AzeritePowerSetMember self
function row:SetTier(value) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.AzeritePowerSetMember self
function row:SetOrderIndex(value) end

---Table container for AzeritePowerSetMember (Build 12.1.5.69594).
---@class dbc.Table.v1215.AzeritePowerSetMember : DbcTable
---@field [integer] dbc.row.v1215.AzeritePowerSetMember
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.AzeritePowerSetMember
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.AzeritePowerSetMember|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.AzeritePowerSetMember
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.AzeritePowerSetMember>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.AzeritePowerSetMember[]
function tbl:GetByRelation(foreign_id) end

return {}
