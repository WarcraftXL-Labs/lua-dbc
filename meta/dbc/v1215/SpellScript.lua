---@meta
-- Generated LuaLS annotations for SpellScript (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SpellScript in build 12.1.5.69594.
---@class dbc.row.v1215.SpellScript : RowProxy
---@field ID integer
---@field Name string
---@field Script string If empty: Use SceneScriptText instead.
---@field LastEditUser string
---@field Field_9_0_1_33978_004 integer
---@field Arguments integer enum

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SpellScript self
function row:SetID(value) end

---Gets the value of field 'Name'.
---@return string value
function row:GetName() end

---Sets the value of field 'Name'.
---@param value string
---@return dbc.row.v1215.SpellScript self
function row:SetName(value) end

---Gets the value of field 'Script'.
---@return string value
function row:GetScript() end

---Sets the value of field 'Script'.
---@param value string
---@return dbc.row.v1215.SpellScript self
function row:SetScript(value) end

---Gets the value of field 'LastEditUser'.
---@return string value
function row:GetLastEditUser() end

---Sets the value of field 'LastEditUser'.
---@param value string
---@return dbc.row.v1215.SpellScript self
function row:SetLastEditUser(value) end

---Gets the value of field 'Field_9_0_1_33978_004'.
---@return integer value
function row:GetField_9_0_1_33978_004() end

---Sets the value of field 'Field_9_0_1_33978_004'.
---@param value integer
---@return dbc.row.v1215.SpellScript self
function row:SetField_9_0_1_33978_004(value) end

---Gets the value of field 'Arguments'.
---@return integer value
function row:GetArguments() end

---Sets the value of field 'Arguments'.
---@param value integer
---@return dbc.row.v1215.SpellScript self
function row:SetArguments(value) end

---Table container for SpellScript (Build 12.1.5.69594).
---@class dbc.Table.v1215.SpellScript : DbcTable
---@field [integer] dbc.row.v1215.SpellScript
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SpellScript
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SpellScript|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SpellScript
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SpellScript>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SpellScript[]
function tbl:GetByRelation(foreign_id) end

return {}
