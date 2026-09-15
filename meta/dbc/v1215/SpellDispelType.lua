---@meta
-- Generated LuaLS annotations for SpellDispelType (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SpellDispelType in build 12.1.5.69594.
---@class dbc.row.v1215.SpellDispelType : RowProxy
---@field ID integer
---@field Name_lang string
---@field InternalName string
---@field ImmunityPossible integer
---@field Mask integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SpellDispelType self
function row:SetID(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.SpellDispelType self
function row:SetName_lang(value) end

---Gets the value of field 'InternalName'.
---@return string value
function row:GetInternalName() end

---Sets the value of field 'InternalName'.
---@param value string
---@return dbc.row.v1215.SpellDispelType self
function row:SetInternalName(value) end

---Gets the value of field 'ImmunityPossible'.
---@return integer value
function row:GetImmunityPossible() end

---Sets the value of field 'ImmunityPossible'.
---@param value integer
---@return dbc.row.v1215.SpellDispelType self
function row:SetImmunityPossible(value) end

---Gets the value of field 'Mask'.
---@return integer value
function row:GetMask() end

---Sets the value of field 'Mask'.
---@param value integer
---@return dbc.row.v1215.SpellDispelType self
function row:SetMask(value) end

---Table container for SpellDispelType (Build 12.1.5.69594).
---@class dbc.Table.v1215.SpellDispelType : DbcTable
---@field [integer] dbc.row.v1215.SpellDispelType
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SpellDispelType
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SpellDispelType|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SpellDispelType
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SpellDispelType>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SpellDispelType[]
function tbl:GetByRelation(foreign_id) end

return {}
