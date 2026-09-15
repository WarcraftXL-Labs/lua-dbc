---@meta
-- Generated LuaLS annotations for PerksVendorItem (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of PerksVendorItem in build 12.1.5.69594.
---@class dbc.row.v1215.PerksVendorItem : RowProxy
---@field ID integer
---@field PerksVendorCategoryID integer
---@field Field_10_0_5_47118_002 integer
---@field ItemID integer
---@field Field_10_0_5_47118_004 integer
---@field CreatureDisplayInfoID integer
---@field Cost integer
---@field UiModelSceneID integer
---@field UiGroupInfo integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.PerksVendorItem self
function row:SetID(value) end

---Gets the value of field 'PerksVendorCategoryID'.
---@return integer value
function row:GetPerksVendorCategoryID() end

---Sets the value of field 'PerksVendorCategoryID'.
---@param value integer
---@return dbc.row.v1215.PerksVendorItem self
function row:SetPerksVendorCategoryID(value) end

---Navigates foreign relationship to 'PerksVendorCategory' via 'PerksVendorCategoryID'.
---@return dbc.row.v1215.PerksVendorCategory|nil
function row:GetPerksVendorCategory() end

---Creates a related 'PerksVendorCategory' row and automatically links 'PerksVendorCategoryID'.
---@param data? table
---@return dbc.row.v1215.PerksVendorCategory
function row:CreateRelated(data) end

---Gets the value of field 'Field_10_0_5_47118_002'.
---@return integer value
function row:GetField_10_0_5_47118_002() end

---Sets the value of field 'Field_10_0_5_47118_002'.
---@param value integer
---@return dbc.row.v1215.PerksVendorItem self
function row:SetField_10_0_5_47118_002(value) end

---Gets the value of field 'ItemID'.
---@return integer value
function row:GetItemID() end

---Sets the value of field 'ItemID'.
---@param value integer
---@return dbc.row.v1215.PerksVendorItem self
function row:SetItemID(value) end

---Navigates foreign relationship to 'Item' via 'ItemID'.
---@return dbc.row.v1215.Item|nil
function row:GetItem() end

---Creates a related 'Item' row and automatically links 'ItemID'.
---@param data? table
---@return dbc.row.v1215.Item
function row:CreateRelated(data) end

---Gets the value of field 'Field_10_0_5_47118_004'.
---@return integer value
function row:GetField_10_0_5_47118_004() end

---Sets the value of field 'Field_10_0_5_47118_004'.
---@param value integer
---@return dbc.row.v1215.PerksVendorItem self
function row:SetField_10_0_5_47118_004(value) end

---Gets the value of field 'CreatureDisplayInfoID'.
---@return integer value
function row:GetCreatureDisplayInfoID() end

---Sets the value of field 'CreatureDisplayInfoID'.
---@param value integer
---@return dbc.row.v1215.PerksVendorItem self
function row:SetCreatureDisplayInfoID(value) end

---Navigates foreign relationship to 'CreatureDisplayInfo' via 'CreatureDisplayInfoID'.
---@return dbc.row.v1215.CreatureDisplayInfo|nil
function row:GetCreatureDisplayInfo() end

---Creates a related 'CreatureDisplayInfo' row and automatically links 'CreatureDisplayInfoID'.
---@param data? table
---@return dbc.row.v1215.CreatureDisplayInfo
function row:CreateRelated(data) end

---Gets the value of field 'Cost'.
---@return integer value
function row:GetCost() end

---Sets the value of field 'Cost'.
---@param value integer
---@return dbc.row.v1215.PerksVendorItem self
function row:SetCost(value) end

---Gets the value of field 'UiModelSceneID'.
---@return integer value
function row:GetUiModelSceneID() end

---Sets the value of field 'UiModelSceneID'.
---@param value integer
---@return dbc.row.v1215.PerksVendorItem self
function row:SetUiModelSceneID(value) end

---Navigates foreign relationship to 'UiModelScene' via 'UiModelSceneID'.
---@return dbc.row.v1215.UiModelScene|nil
function row:GetUiModelScene() end

---Creates a related 'UiModelScene' row and automatically links 'UiModelSceneID'.
---@param data? table
---@return dbc.row.v1215.UiModelScene
function row:CreateRelated(data) end

---Gets the value of field 'UiGroupInfo'.
---@return integer value
function row:GetUiGroupInfo() end

---Sets the value of field 'UiGroupInfo'.
---@param value integer
---@return dbc.row.v1215.PerksVendorItem self
function row:SetUiGroupInfo(value) end

---Navigates foreign relationship to 'PerksVendorItemUIGroup' via 'UiGroupInfo'.
---@return dbc.row.v1215.PerksVendorItemUIGroup|nil
function row:GetUiGroupInfo() end

---Creates a related 'PerksVendorItemUIGroup' row and automatically links 'UiGroupInfo'.
---@param data? table
---@return dbc.row.v1215.PerksVendorItemUIGroup
function row:CreateRelated(data) end

---Table container for PerksVendorItem (Build 12.1.5.69594).
---@class dbc.Table.v1215.PerksVendorItem : DbcTable
---@field [integer] dbc.row.v1215.PerksVendorItem
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.PerksVendorItem
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.PerksVendorItem|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.PerksVendorItem
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.PerksVendorItem>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.PerksVendorItem[]
function tbl:GetByRelation(foreign_id) end

return {}
