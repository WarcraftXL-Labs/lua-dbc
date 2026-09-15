---@meta
-- Generated LuaLS annotations for ItemDisenchantLoot (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ItemDisenchantLoot in build 12.1.5.69594.
---@class dbc.row.v1215.ItemDisenchantLoot : RowProxy
---@field ID integer
---@field Subclass integer
---@field Quality integer
---@field MinLevel integer
---@field MaxLevel integer
---@field SkillRequired integer
---@field ExpansionID integer
---@field Class integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ItemDisenchantLoot self
function row:SetID(value) end

---Gets the value of field 'Subclass'.
---@return integer value
function row:GetSubclass() end

---Sets the value of field 'Subclass'.
---@param value integer
---@return dbc.row.v1215.ItemDisenchantLoot self
function row:SetSubclass(value) end

---Gets the value of field 'Quality'.
---@return integer value
function row:GetQuality() end

---Sets the value of field 'Quality'.
---@param value integer
---@return dbc.row.v1215.ItemDisenchantLoot self
function row:SetQuality(value) end

---Gets the value of field 'MinLevel'.
---@return integer value
function row:GetMinLevel() end

---Sets the value of field 'MinLevel'.
---@param value integer
---@return dbc.row.v1215.ItemDisenchantLoot self
function row:SetMinLevel(value) end

---Gets the value of field 'MaxLevel'.
---@return integer value
function row:GetMaxLevel() end

---Sets the value of field 'MaxLevel'.
---@param value integer
---@return dbc.row.v1215.ItemDisenchantLoot self
function row:SetMaxLevel(value) end

---Gets the value of field 'SkillRequired'.
---@return integer value
function row:GetSkillRequired() end

---Sets the value of field 'SkillRequired'.
---@param value integer
---@return dbc.row.v1215.ItemDisenchantLoot self
function row:SetSkillRequired(value) end

---Gets the value of field 'ExpansionID'.
---@return integer value
function row:GetExpansionID() end

---Sets the value of field 'ExpansionID'.
---@param value integer
---@return dbc.row.v1215.ItemDisenchantLoot self
function row:SetExpansionID(value) end

---Navigates foreign relationship to 'Expansion' via 'ExpansionID'.
---@return dbc.row.v1215.Expansion|nil
function row:GetExpansion() end

---Creates a related 'Expansion' row and automatically links 'ExpansionID'.
---@param data? table
---@return dbc.row.v1215.Expansion
function row:CreateRelated(data) end

---Gets the value of field 'Class'.
---@return integer value
function row:GetClass() end

---Sets the value of field 'Class'.
---@param value integer
---@return dbc.row.v1215.ItemDisenchantLoot self
function row:SetClass(value) end

---Table container for ItemDisenchantLoot (Build 12.1.5.69594).
---@class dbc.Table.v1215.ItemDisenchantLoot : DbcTable
---@field [integer] dbc.row.v1215.ItemDisenchantLoot
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ItemDisenchantLoot
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ItemDisenchantLoot|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ItemDisenchantLoot
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ItemDisenchantLoot>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ItemDisenchantLoot[]
function tbl:GetByRelation(foreign_id) end

return {}
