---@meta
-- Generated LuaLS annotations for TraitCost (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of TraitCost in build 12.1.5.69594.
---@class dbc.row.v1215.TraitCost : RowProxy
---@field InternalName string
---@field ID integer
---@field Amount integer
---@field TraitCurrencyID integer
---@field CurveID integer

local row = {}

---Gets the value of field 'InternalName'.
---@return string value
function row:GetInternalName() end

---Sets the value of field 'InternalName'.
---@param value string
---@return dbc.row.v1215.TraitCost self
function row:SetInternalName(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.TraitCost self
function row:SetID(value) end

---Gets the value of field 'Amount'.
---@return integer value
function row:GetAmount() end

---Sets the value of field 'Amount'.
---@param value integer
---@return dbc.row.v1215.TraitCost self
function row:SetAmount(value) end

---Gets the value of field 'TraitCurrencyID'.
---@return integer value
function row:GetTraitCurrencyID() end

---Sets the value of field 'TraitCurrencyID'.
---@param value integer
---@return dbc.row.v1215.TraitCost self
function row:SetTraitCurrencyID(value) end

---Navigates foreign relationship to 'TraitCurrency' via 'TraitCurrencyID'.
---@return dbc.row.v1215.TraitCurrency|nil
function row:GetTraitCurrency() end

---Creates a related 'TraitCurrency' row and automatically links 'TraitCurrencyID'.
---@param data? table
---@return dbc.row.v1215.TraitCurrency
function row:CreateRelated(data) end

---Gets the value of field 'CurveID'.
---@return integer value
function row:GetCurveID() end

---Sets the value of field 'CurveID'.
---@param value integer
---@return dbc.row.v1215.TraitCost self
function row:SetCurveID(value) end

---Navigates foreign relationship to 'Curve' via 'CurveID'.
---@return dbc.row.v1215.Curve|nil
function row:GetCurve() end

---Creates a related 'Curve' row and automatically links 'CurveID'.
---@param data? table
---@return dbc.row.v1215.Curve
function row:CreateRelated(data) end

---Table container for TraitCost (Build 12.1.5.69594).
---@class dbc.Table.v1215.TraitCost : DbcTable
---@field [integer] dbc.row.v1215.TraitCost
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.TraitCost
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.TraitCost|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.TraitCost
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.TraitCost>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.TraitCost[]
function tbl:GetByRelation(foreign_id) end

return {}
