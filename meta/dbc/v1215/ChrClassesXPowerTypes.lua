---@meta
-- Generated LuaLS annotations for ChrClassesXPowerTypes (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ChrClassesXPowerTypes in build 12.1.5.69594.
---@class dbc.row.v1215.ChrClassesXPowerTypes : RowProxy
---@field ID integer
---@field PowerType integer
---@field ClassID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ChrClassesXPowerTypes self
function row:SetID(value) end

---Gets the value of field 'PowerType'.
---@return integer value
function row:GetPowerType() end

---Sets the value of field 'PowerType'.
---@param value integer
---@return dbc.row.v1215.ChrClassesXPowerTypes self
function row:SetPowerType(value) end

---Navigates foreign relationship to 'PowerType' via 'PowerType'.
---@return dbc.row.v1215.PowerType|nil
function row:GetPowerType() end

---Creates a related 'PowerType' row and automatically links 'PowerType'.
---@param data? table
---@return dbc.row.v1215.PowerType
function row:CreateRelated(data) end

---Gets the value of field 'ClassID'.
---@return integer value
function row:GetClassID() end

---Sets the value of field 'ClassID'.
---@param value integer
---@return dbc.row.v1215.ChrClassesXPowerTypes self
function row:SetClassID(value) end

---Navigates foreign relationship to 'ChrClasses' via 'ClassID'.
---@return dbc.row.v1215.ChrClasses|nil
function row:GetClass() end

---Creates a related 'ChrClasses' row and automatically links 'ClassID'.
---@param data? table
---@return dbc.row.v1215.ChrClasses
function row:CreateRelated(data) end

---Table container for ChrClassesXPowerTypes (Build 12.1.5.69594).
---@class dbc.Table.v1215.ChrClassesXPowerTypes : DbcTable
---@field [integer] dbc.row.v1215.ChrClassesXPowerTypes
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ChrClassesXPowerTypes
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ChrClassesXPowerTypes|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ChrClassesXPowerTypes
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ChrClassesXPowerTypes>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ChrClassesXPowerTypes[]
function tbl:GetByRelation(foreign_id) end

return {}
