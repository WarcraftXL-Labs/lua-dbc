---@meta
-- Generated LuaLS annotations for SpellTotems (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SpellTotems in build 12.1.5.69594.
---@class dbc.row.v1215.SpellTotems : RowProxy
---@field ID integer
---@field SpellID integer
---@field RequiredTotemCategoryID integer[]
---@field Totem integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SpellTotems self
function row:SetID(value) end

---Gets the value of field 'SpellID'.
---@return integer value
function row:GetSpellID() end

---Sets the value of field 'SpellID'.
---@param value integer
---@return dbc.row.v1215.SpellTotems self
function row:SetSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'SpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetSpell() end

---Creates a related 'Spell' row and automatically links 'SpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'RequiredTotemCategoryID'.
---@return integer[] value
function row:GetRequiredTotemCategoryID() end

---Sets the value of field 'RequiredTotemCategoryID'.
---@param value integer[]
---@return dbc.row.v1215.SpellTotems self
function row:SetRequiredTotemCategoryID(value) end

---Gets element at 1-based index in 'RequiredTotemCategoryID'.
---@param index integer
---@return integer value
function row:GetRequiredTotemCategoryIDItem(index) end

---Navigates foreign relationship to 'TotemCategory' via 'RequiredTotemCategoryID'.
---@return dbc.row.v1215.TotemCategory|nil
function row:GetRequiredTotemCategory() end

---Creates a related 'TotemCategory' row and automatically links 'RequiredTotemCategoryID'.
---@param data? table
---@return dbc.row.v1215.TotemCategory
function row:CreateRelated(data) end

---Gets the value of field 'Totem'.
---@return integer[] value
function row:GetTotem() end

---Sets the value of field 'Totem'.
---@param value integer[]
---@return dbc.row.v1215.SpellTotems self
function row:SetTotem(value) end

---Gets element at 1-based index in 'Totem'.
---@param index integer
---@return integer value
function row:GetTotemItem(index) end

---Table container for SpellTotems (Build 12.1.5.69594).
---@class dbc.Table.v1215.SpellTotems : DbcTable
---@field [integer] dbc.row.v1215.SpellTotems
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SpellTotems
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SpellTotems|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SpellTotems
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SpellTotems>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SpellTotems[]
function tbl:GetByRelation(foreign_id) end

return {}
