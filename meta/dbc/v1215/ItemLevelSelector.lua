---@meta
-- Generated LuaLS annotations for ItemLevelSelector (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ItemLevelSelector in build 12.1.5.69594.
---@class dbc.row.v1215.ItemLevelSelector : RowProxy
---@field ID integer
---@field MinItemLevel integer
---@field ItemLevelSelectorQualitySetID integer
---@field AzeriteUnlockMappingSetID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ItemLevelSelector self
function row:SetID(value) end

---Gets the value of field 'MinItemLevel'.
---@return integer value
function row:GetMinItemLevel() end

---Sets the value of field 'MinItemLevel'.
---@param value integer
---@return dbc.row.v1215.ItemLevelSelector self
function row:SetMinItemLevel(value) end

---Gets the value of field 'ItemLevelSelectorQualitySetID'.
---@return integer value
function row:GetItemLevelSelectorQualitySetID() end

---Sets the value of field 'ItemLevelSelectorQualitySetID'.
---@param value integer
---@return dbc.row.v1215.ItemLevelSelector self
function row:SetItemLevelSelectorQualitySetID(value) end

---Navigates foreign relationship to 'ItemLevelSelectorQualitySet' via 'ItemLevelSelectorQualitySetID'.
---@return dbc.row.v1215.ItemLevelSelectorQualitySet|nil
function row:GetItemLevelSelectorQualitySet() end

---Creates a related 'ItemLevelSelectorQualitySet' row and automatically links 'ItemLevelSelectorQualitySetID'.
---@param data? table
---@return dbc.row.v1215.ItemLevelSelectorQualitySet
function row:CreateRelated(data) end

---Gets the value of field 'AzeriteUnlockMappingSetID'.
---@return integer value
function row:GetAzeriteUnlockMappingSetID() end

---Sets the value of field 'AzeriteUnlockMappingSetID'.
---@param value integer
---@return dbc.row.v1215.ItemLevelSelector self
function row:SetAzeriteUnlockMappingSetID(value) end

---Navigates foreign relationship to 'AzeriteUnlockMapping' via 'AzeriteUnlockMappingSetID'.
---@return dbc.row.v1215.AzeriteUnlockMapping|nil
function row:GetAzeriteUnlockMappingSet() end

---Creates a related 'AzeriteUnlockMapping' row and automatically links 'AzeriteUnlockMappingSetID'.
---@param data? table
---@return dbc.row.v1215.AzeriteUnlockMapping
function row:CreateRelated(data) end

---Table container for ItemLevelSelector (Build 12.1.5.69594).
---@class dbc.Table.v1215.ItemLevelSelector : DbcTable
---@field [integer] dbc.row.v1215.ItemLevelSelector
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ItemLevelSelector
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ItemLevelSelector|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ItemLevelSelector
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ItemLevelSelector>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ItemLevelSelector[]
function tbl:GetByRelation(foreign_id) end

return {}
