---@meta
-- Generated LuaLS annotations for AttackAnimTypes (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of AttackAnimTypes in build 3.3.5.12340.
---@class dbc.row.v335.AttackAnimTypes : RowProxy
---@field AnimID integer
---@field AnimName string

local row = {}

---Gets the value of field 'AnimID'.
---@return integer value
function row:GetAnimID() end

---Sets the value of field 'AnimID'.
---@param value integer
---@return dbc.row.v335.AttackAnimTypes self
function row:SetAnimID(value) end

---Navigates foreign relationship to 'Anim' via 'AnimID'.
---@return dbc.row.v335.Anim|nil
function row:GetAnim() end

---Creates a related 'Anim' row and automatically links 'AnimID'.
---@param data? table
---@return dbc.row.v335.Anim
function row:CreateRelated(data) end

---Gets the value of field 'AnimName'.
---@return string value
function row:GetAnimName() end

---Sets the value of field 'AnimName'.
---@param value string
---@return dbc.row.v335.AttackAnimTypes self
function row:SetAnimName(value) end

---Table container for AttackAnimTypes (Build 3.3.5.12340).
---@class dbc.Table.v335.AttackAnimTypes : DbcTable
---@field [integer] dbc.row.v335.AttackAnimTypes
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.AttackAnimTypes
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.AttackAnimTypes|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.AttackAnimTypes
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.AttackAnimTypes>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.AttackAnimTypes[]
function tbl:GetByRelation(foreign_id) end

return {}
