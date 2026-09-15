---@meta
-- Generated LuaLS annotations for SpellShapeshift (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SpellShapeshift in build 12.1.5.69594.
---@class dbc.row.v1215.SpellShapeshift : RowProxy
---@field ID integer
---@field SpellID integer
---@field StanceBarOrder integer
---@field ShapeshiftExclude integer[]
---@field ShapeshiftMask integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SpellShapeshift self
function row:SetID(value) end

---Gets the value of field 'SpellID'.
---@return integer value
function row:GetSpellID() end

---Sets the value of field 'SpellID'.
---@param value integer
---@return dbc.row.v1215.SpellShapeshift self
function row:SetSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'SpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetSpell() end

---Creates a related 'Spell' row and automatically links 'SpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'StanceBarOrder'.
---@return integer value
function row:GetStanceBarOrder() end

---Sets the value of field 'StanceBarOrder'.
---@param value integer
---@return dbc.row.v1215.SpellShapeshift self
function row:SetStanceBarOrder(value) end

---Gets the value of field 'ShapeshiftExclude'.
---@return integer[] value
function row:GetShapeshiftExclude() end

---Sets the value of field 'ShapeshiftExclude'.
---@param value integer[]
---@return dbc.row.v1215.SpellShapeshift self
function row:SetShapeshiftExclude(value) end

---Gets element at 1-based index in 'ShapeshiftExclude'.
---@param index integer
---@return integer value
function row:GetShapeshiftExcludeItem(index) end

---Gets the value of field 'ShapeshiftMask'.
---@return integer[] value
function row:GetShapeshiftMask() end

---Sets the value of field 'ShapeshiftMask'.
---@param value integer[]
---@return dbc.row.v1215.SpellShapeshift self
function row:SetShapeshiftMask(value) end

---Gets element at 1-based index in 'ShapeshiftMask'.
---@param index integer
---@return integer value
function row:GetShapeshiftMaskItem(index) end

---Table container for SpellShapeshift (Build 12.1.5.69594).
---@class dbc.Table.v1215.SpellShapeshift : DbcTable
---@field [integer] dbc.row.v1215.SpellShapeshift
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SpellShapeshift
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SpellShapeshift|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SpellShapeshift
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SpellShapeshift>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SpellShapeshift[]
function tbl:GetByRelation(foreign_id) end

return {}
