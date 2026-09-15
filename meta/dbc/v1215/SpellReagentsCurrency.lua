---@meta
-- Generated LuaLS annotations for SpellReagentsCurrency (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SpellReagentsCurrency in build 12.1.5.69594.
---@class dbc.row.v1215.SpellReagentsCurrency : RowProxy
---@field ID integer
---@field SpellID integer
---@field CurrencyTypesID integer
---@field CurrencyCount integer
---@field OverrideRecraftCurrencyCount integer if not 0 then recrafting item costs this amount of currency instead of CurrencyCount * CurrencyTypes::RecraftReagentCountPercentage
---@field OrderSource integer CraftingOrderReagentSource enum

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SpellReagentsCurrency self
function row:SetID(value) end

---Gets the value of field 'SpellID'.
---@return integer value
function row:GetSpellID() end

---Sets the value of field 'SpellID'.
---@param value integer
---@return dbc.row.v1215.SpellReagentsCurrency self
function row:SetSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'SpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetSpell() end

---Creates a related 'Spell' row and automatically links 'SpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'CurrencyTypesID'.
---@return integer value
function row:GetCurrencyTypesID() end

---Sets the value of field 'CurrencyTypesID'.
---@param value integer
---@return dbc.row.v1215.SpellReagentsCurrency self
function row:SetCurrencyTypesID(value) end

---Navigates foreign relationship to 'CurrencyTypes' via 'CurrencyTypesID'.
---@return dbc.row.v1215.CurrencyTypes|nil
function row:GetCurrencyTypes() end

---Creates a related 'CurrencyTypes' row and automatically links 'CurrencyTypesID'.
---@param data? table
---@return dbc.row.v1215.CurrencyTypes
function row:CreateRelated(data) end

---Gets the value of field 'CurrencyCount'.
---@return integer value
function row:GetCurrencyCount() end

---Sets the value of field 'CurrencyCount'.
---@param value integer
---@return dbc.row.v1215.SpellReagentsCurrency self
function row:SetCurrencyCount(value) end

---Gets the value of field 'OverrideRecraftCurrencyCount'.
---@return integer value
function row:GetOverrideRecraftCurrencyCount() end

---Sets the value of field 'OverrideRecraftCurrencyCount'.
---@param value integer
---@return dbc.row.v1215.SpellReagentsCurrency self
function row:SetOverrideRecraftCurrencyCount(value) end

---Gets the value of field 'OrderSource'.
---@return integer value
function row:GetOrderSource() end

---Sets the value of field 'OrderSource'.
---@param value integer
---@return dbc.row.v1215.SpellReagentsCurrency self
function row:SetOrderSource(value) end

---Table container for SpellReagentsCurrency (Build 12.1.5.69594).
---@class dbc.Table.v1215.SpellReagentsCurrency : DbcTable
---@field [integer] dbc.row.v1215.SpellReagentsCurrency
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SpellReagentsCurrency
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SpellReagentsCurrency|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SpellReagentsCurrency
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SpellReagentsCurrency>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SpellReagentsCurrency[]
function tbl:GetByRelation(foreign_id) end

return {}
