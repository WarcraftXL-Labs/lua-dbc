---@meta
-- Generated LuaLS annotations for ModifiedCraftingCategory (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ModifiedCraftingCategory in build 12.1.5.69594.
---@class dbc.row.v1215.ModifiedCraftingCategory : RowProxy
---@field ID integer
---@field DisplayName_lang string
---@field Description_lang string
---@field Field_9_0_1_33978_001 integer
---@field MatQualityWeight number Relative contribution of this material to skill bonus
---@field Field_10_0_0_44649_004 integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ModifiedCraftingCategory self
function row:SetID(value) end

---Gets the value of field 'DisplayName_lang'.
---@return string value
function row:GetDisplayName_lang() end

---Sets the value of field 'DisplayName_lang'.
---@param value string
---@return dbc.row.v1215.ModifiedCraftingCategory self
function row:SetDisplayName_lang(value) end

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v1215.ModifiedCraftingCategory self
function row:SetDescription_lang(value) end

---Gets the value of field 'Field_9_0_1_33978_001'.
---@return integer value
function row:GetField_9_0_1_33978_001() end

---Sets the value of field 'Field_9_0_1_33978_001'.
---@param value integer
---@return dbc.row.v1215.ModifiedCraftingCategory self
function row:SetField_9_0_1_33978_001(value) end

---Gets the value of field 'MatQualityWeight'.
---@return number value
function row:GetMatQualityWeight() end

---Sets the value of field 'MatQualityWeight'.
---@param value number
---@return dbc.row.v1215.ModifiedCraftingCategory self
function row:SetMatQualityWeight(value) end

---Gets the value of field 'Field_10_0_0_44649_004'.
---@return integer value
function row:GetField_10_0_0_44649_004() end

---Sets the value of field 'Field_10_0_0_44649_004'.
---@param value integer
---@return dbc.row.v1215.ModifiedCraftingCategory self
function row:SetField_10_0_0_44649_004(value) end

---Table container for ModifiedCraftingCategory (Build 12.1.5.69594).
---@class dbc.Table.v1215.ModifiedCraftingCategory : DbcTable
---@field [integer] dbc.row.v1215.ModifiedCraftingCategory
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ModifiedCraftingCategory
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ModifiedCraftingCategory|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ModifiedCraftingCategory
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ModifiedCraftingCategory>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ModifiedCraftingCategory[]
function tbl:GetByRelation(foreign_id) end

return {}
