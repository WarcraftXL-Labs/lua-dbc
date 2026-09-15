---@meta
-- Generated LuaLS annotations for ItemLevelSelectorQuality (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ItemLevelSelectorQuality in build 12.1.5.69594.
---@class dbc.row.v1215.ItemLevelSelectorQuality : RowProxy
---@field ID integer
---@field QualityItemBonusListID integer
---@field Quality integer
---@field ParentILSQualitySetID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ItemLevelSelectorQuality self
function row:SetID(value) end

---Gets the value of field 'QualityItemBonusListID'.
---@return integer value
function row:GetQualityItemBonusListID() end

---Sets the value of field 'QualityItemBonusListID'.
---@param value integer
---@return dbc.row.v1215.ItemLevelSelectorQuality self
function row:SetQualityItemBonusListID(value) end

---Navigates foreign relationship to 'ItemBonusList' via 'QualityItemBonusListID'.
---@return dbc.row.v1215.ItemBonusList|nil
function row:GetQualityItemBonusList() end

---Creates a related 'ItemBonusList' row and automatically links 'QualityItemBonusListID'.
---@param data? table
---@return dbc.row.v1215.ItemBonusList
function row:CreateRelated(data) end

---Gets the value of field 'Quality'.
---@return integer value
function row:GetQuality() end

---Sets the value of field 'Quality'.
---@param value integer
---@return dbc.row.v1215.ItemLevelSelectorQuality self
function row:SetQuality(value) end

---Gets the value of field 'ParentILSQualitySetID'.
---@return integer value
function row:GetParentILSQualitySetID() end

---Sets the value of field 'ParentILSQualitySetID'.
---@param value integer
---@return dbc.row.v1215.ItemLevelSelectorQuality self
function row:SetParentILSQualitySetID(value) end

---Navigates foreign relationship to 'ItemLevelSelectorQualitySet' via 'ParentILSQualitySetID'.
---@return dbc.row.v1215.ItemLevelSelectorQualitySet|nil
function row:GetParentILSQualitySet() end

---Creates a related 'ItemLevelSelectorQualitySet' row and automatically links 'ParentILSQualitySetID'.
---@param data? table
---@return dbc.row.v1215.ItemLevelSelectorQualitySet
function row:CreateRelated(data) end

---Table container for ItemLevelSelectorQuality (Build 12.1.5.69594).
---@class dbc.Table.v1215.ItemLevelSelectorQuality : DbcTable
---@field [integer] dbc.row.v1215.ItemLevelSelectorQuality
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ItemLevelSelectorQuality
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ItemLevelSelectorQuality|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ItemLevelSelectorQuality
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ItemLevelSelectorQuality>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ItemLevelSelectorQuality[]
function tbl:GetByRelation(foreign_id) end

return {}
