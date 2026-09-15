---@meta
-- Generated LuaLS annotations for ObjectEffectPackageElem (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of ObjectEffectPackageElem in build 3.3.5.12340.
---@class dbc.row.v335.ObjectEffectPackageElem : RowProxy
---@field ID integer
---@field ObjectEffectPackageID integer
---@field ObjectEffectGroupID integer
---@field StateType integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.ObjectEffectPackageElem self
function row:SetID(value) end

---Gets the value of field 'ObjectEffectPackageID'.
---@return integer value
function row:GetObjectEffectPackageID() end

---Sets the value of field 'ObjectEffectPackageID'.
---@param value integer
---@return dbc.row.v335.ObjectEffectPackageElem self
function row:SetObjectEffectPackageID(value) end

---Navigates foreign relationship to 'ObjectEffectPackage' via 'ObjectEffectPackageID'.
---@return dbc.row.v335.ObjectEffectPackage|nil
function row:GetObjectEffectPackage() end

---Creates a related 'ObjectEffectPackage' row and automatically links 'ObjectEffectPackageID'.
---@param data? table
---@return dbc.row.v335.ObjectEffectPackage
function row:CreateRelated(data) end

---Gets the value of field 'ObjectEffectGroupID'.
---@return integer value
function row:GetObjectEffectGroupID() end

---Sets the value of field 'ObjectEffectGroupID'.
---@param value integer
---@return dbc.row.v335.ObjectEffectPackageElem self
function row:SetObjectEffectGroupID(value) end

---Navigates foreign relationship to 'ObjectEffectGroup' via 'ObjectEffectGroupID'.
---@return dbc.row.v335.ObjectEffectGroup|nil
function row:GetObjectEffectGroup() end

---Creates a related 'ObjectEffectGroup' row and automatically links 'ObjectEffectGroupID'.
---@param data? table
---@return dbc.row.v335.ObjectEffectGroup
function row:CreateRelated(data) end

---Gets the value of field 'StateType'.
---@return integer value
function row:GetStateType() end

---Sets the value of field 'StateType'.
---@param value integer
---@return dbc.row.v335.ObjectEffectPackageElem self
function row:SetStateType(value) end

---Table container for ObjectEffectPackageElem (Build 3.3.5.12340).
---@class dbc.Table.v335.ObjectEffectPackageElem : DbcTable
---@field [integer] dbc.row.v335.ObjectEffectPackageElem
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.ObjectEffectPackageElem
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.ObjectEffectPackageElem|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.ObjectEffectPackageElem
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.ObjectEffectPackageElem>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.ObjectEffectPackageElem[]
function tbl:GetByRelation(foreign_id) end

return {}
