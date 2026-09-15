---@meta
-- Generated LuaLS annotations for ModifierTree (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ModifierTree in build 12.1.5.69594.
---@class dbc.row.v1215.ModifierTree : RowProxy
---@field ID integer
---@field Parent integer
---@field Operator integer
---@field Amount integer
---@field Type integer
---@field Asset integer 107: SpellLabel::ID
---@field SecondaryAsset integer
---@field TertiaryAsset integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ModifierTree self
function row:SetID(value) end

---Gets the value of field 'Parent'.
---@return integer value
function row:GetParent() end

---Sets the value of field 'Parent'.
---@param value integer
---@return dbc.row.v1215.ModifierTree self
function row:SetParent(value) end

---Navigates foreign relationship to 'ModifierTree' via 'Parent'.
---@return dbc.row.v1215.ModifierTree|nil
function row:GetParent() end

---Creates a related 'ModifierTree' row and automatically links 'Parent'.
---@param data? table
---@return dbc.row.v1215.ModifierTree
function row:CreateRelated(data) end

---Gets the value of field 'Operator'.
---@return integer value
function row:GetOperator() end

---Sets the value of field 'Operator'.
---@param value integer
---@return dbc.row.v1215.ModifierTree self
function row:SetOperator(value) end

---Gets the value of field 'Amount'.
---@return integer value
function row:GetAmount() end

---Sets the value of field 'Amount'.
---@param value integer
---@return dbc.row.v1215.ModifierTree self
function row:SetAmount(value) end

---Gets the value of field 'Type'.
---@return integer value
function row:GetType() end

---Sets the value of field 'Type'.
---@param value integer
---@return dbc.row.v1215.ModifierTree self
function row:SetType(value) end

---Gets the value of field 'Asset'.
---@return integer value
function row:GetAsset() end

---Sets the value of field 'Asset'.
---@param value integer
---@return dbc.row.v1215.ModifierTree self
function row:SetAsset(value) end

---Gets the value of field 'SecondaryAsset'.
---@return integer value
function row:GetSecondaryAsset() end

---Sets the value of field 'SecondaryAsset'.
---@param value integer
---@return dbc.row.v1215.ModifierTree self
function row:SetSecondaryAsset(value) end

---Gets the value of field 'TertiaryAsset'.
---@return integer value
function row:GetTertiaryAsset() end

---Sets the value of field 'TertiaryAsset'.
---@param value integer
---@return dbc.row.v1215.ModifierTree self
function row:SetTertiaryAsset(value) end

---Table container for ModifierTree (Build 12.1.5.69594).
---@class dbc.Table.v1215.ModifierTree : DbcTable
---@field [integer] dbc.row.v1215.ModifierTree
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ModifierTree
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ModifierTree|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ModifierTree
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ModifierTree>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ModifierTree[]
function tbl:GetByRelation(foreign_id) end

return {}
