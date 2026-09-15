---@meta
-- Generated LuaLS annotations for TraitSystem (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of TraitSystem in build 12.1.5.69594.
---@class dbc.row.v1215.TraitSystem : RowProxy
---@field ID integer
---@field Flags integer
---@field WidgetSetID integer
---@field TraitChangeSpell integer
---@field ItemID integer
---@field VariationType integer 0 = None, 1 = Spec

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.TraitSystem self
function row:SetID(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.TraitSystem self
function row:SetFlags(value) end

---Gets the value of field 'WidgetSetID'.
---@return integer value
function row:GetWidgetSetID() end

---Sets the value of field 'WidgetSetID'.
---@param value integer
---@return dbc.row.v1215.TraitSystem self
function row:SetWidgetSetID(value) end

---Navigates foreign relationship to 'UiWidgetSet' via 'WidgetSetID'.
---@return dbc.row.v1215.UiWidgetSet|nil
function row:GetWidgetSet() end

---Creates a related 'UiWidgetSet' row and automatically links 'WidgetSetID'.
---@param data? table
---@return dbc.row.v1215.UiWidgetSet
function row:CreateRelated(data) end

---Gets the value of field 'TraitChangeSpell'.
---@return integer value
function row:GetTraitChangeSpell() end

---Sets the value of field 'TraitChangeSpell'.
---@param value integer
---@return dbc.row.v1215.TraitSystem self
function row:SetTraitChangeSpell(value) end

---Navigates foreign relationship to 'Spell' via 'TraitChangeSpell'.
---@return dbc.row.v1215.Spell|nil
function row:GetTraitChangeSpell() end

---Creates a related 'Spell' row and automatically links 'TraitChangeSpell'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'ItemID'.
---@return integer value
function row:GetItemID() end

---Sets the value of field 'ItemID'.
---@param value integer
---@return dbc.row.v1215.TraitSystem self
function row:SetItemID(value) end

---Navigates foreign relationship to 'Item' via 'ItemID'.
---@return dbc.row.v1215.Item|nil
function row:GetItem() end

---Creates a related 'Item' row and automatically links 'ItemID'.
---@param data? table
---@return dbc.row.v1215.Item
function row:CreateRelated(data) end

---Gets the value of field 'VariationType'.
---@return integer value
function row:GetVariationType() end

---Sets the value of field 'VariationType'.
---@param value integer
---@return dbc.row.v1215.TraitSystem self
function row:SetVariationType(value) end

---Table container for TraitSystem (Build 12.1.5.69594).
---@class dbc.Table.v1215.TraitSystem : DbcTable
---@field [integer] dbc.row.v1215.TraitSystem
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.TraitSystem
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.TraitSystem|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.TraitSystem
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.TraitSystem>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.TraitSystem[]
function tbl:GetByRelation(foreign_id) end

return {}
