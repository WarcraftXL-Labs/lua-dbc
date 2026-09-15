---@meta
-- Generated LuaLS annotations for ItemBonusTreeNode (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ItemBonusTreeNode in build 12.1.5.69594.
---@class dbc.row.v1215.ItemBonusTreeNode : RowProxy
---@field ID integer
---@field ItemContext integer
---@field ChildItemBonusTreeID integer
---@field ChildItemBonusListID integer
---@field ChildItemLevelSelectorID integer
---@field ChildItemBonusListGroupID integer
---@field IblGroupPointsModSetID integer
---@field MinMythicPlusLevel integer
---@field MaxMythicPlusLevel integer
---@field ItemCreationContextGroupID integer
---@field Flags integer
---@field ParentItemBonusTreeID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ItemBonusTreeNode self
function row:SetID(value) end

---Gets the value of field 'ItemContext'.
---@return integer value
function row:GetItemContext() end

---Sets the value of field 'ItemContext'.
---@param value integer
---@return dbc.row.v1215.ItemBonusTreeNode self
function row:SetItemContext(value) end

---Gets the value of field 'ChildItemBonusTreeID'.
---@return integer value
function row:GetChildItemBonusTreeID() end

---Sets the value of field 'ChildItemBonusTreeID'.
---@param value integer
---@return dbc.row.v1215.ItemBonusTreeNode self
function row:SetChildItemBonusTreeID(value) end

---Navigates foreign relationship to 'ItemBonusTree' via 'ChildItemBonusTreeID'.
---@return dbc.row.v1215.ItemBonusTree|nil
function row:GetChildItemBonusTree() end

---Creates a related 'ItemBonusTree' row and automatically links 'ChildItemBonusTreeID'.
---@param data? table
---@return dbc.row.v1215.ItemBonusTree
function row:CreateRelated(data) end

---Gets the value of field 'ChildItemBonusListID'.
---@return integer value
function row:GetChildItemBonusListID() end

---Sets the value of field 'ChildItemBonusListID'.
---@param value integer
---@return dbc.row.v1215.ItemBonusTreeNode self
function row:SetChildItemBonusListID(value) end

---Navigates foreign relationship to 'ItemBonusList' via 'ChildItemBonusListID'.
---@return dbc.row.v1215.ItemBonusList|nil
function row:GetChildItemBonusList() end

---Creates a related 'ItemBonusList' row and automatically links 'ChildItemBonusListID'.
---@param data? table
---@return dbc.row.v1215.ItemBonusList
function row:CreateRelated(data) end

---Gets the value of field 'ChildItemLevelSelectorID'.
---@return integer value
function row:GetChildItemLevelSelectorID() end

---Sets the value of field 'ChildItemLevelSelectorID'.
---@param value integer
---@return dbc.row.v1215.ItemBonusTreeNode self
function row:SetChildItemLevelSelectorID(value) end

---Navigates foreign relationship to 'ItemLevelSelector' via 'ChildItemLevelSelectorID'.
---@return dbc.row.v1215.ItemLevelSelector|nil
function row:GetChildItemLevelSelector() end

---Creates a related 'ItemLevelSelector' row and automatically links 'ChildItemLevelSelectorID'.
---@param data? table
---@return dbc.row.v1215.ItemLevelSelector
function row:CreateRelated(data) end

---Gets the value of field 'ChildItemBonusListGroupID'.
---@return integer value
function row:GetChildItemBonusListGroupID() end

---Sets the value of field 'ChildItemBonusListGroupID'.
---@param value integer
---@return dbc.row.v1215.ItemBonusTreeNode self
function row:SetChildItemBonusListGroupID(value) end

---Navigates foreign relationship to 'ItemBonusListGroup' via 'ChildItemBonusListGroupID'.
---@return dbc.row.v1215.ItemBonusListGroup|nil
function row:GetChildItemBonusListGroup() end

---Creates a related 'ItemBonusListGroup' row and automatically links 'ChildItemBonusListGroupID'.
---@param data? table
---@return dbc.row.v1215.ItemBonusListGroup
function row:CreateRelated(data) end

---Gets the value of field 'IblGroupPointsModSetID'.
---@return integer value
function row:GetIblGroupPointsModSetID() end

---Sets the value of field 'IblGroupPointsModSetID'.
---@param value integer
---@return dbc.row.v1215.ItemBonusTreeNode self
function row:SetIblGroupPointsModSetID(value) end

---Navigates foreign relationship to 'IblGroupPointsModSet' via 'IblGroupPointsModSetID'.
---@return dbc.row.v1215.IblGroupPointsModSet|nil
function row:GetIblGroupPointsModSet() end

---Creates a related 'IblGroupPointsModSet' row and automatically links 'IblGroupPointsModSetID'.
---@param data? table
---@return dbc.row.v1215.IblGroupPointsModSet
function row:CreateRelated(data) end

---Gets the value of field 'MinMythicPlusLevel'.
---@return integer value
function row:GetMinMythicPlusLevel() end

---Sets the value of field 'MinMythicPlusLevel'.
---@param value integer
---@return dbc.row.v1215.ItemBonusTreeNode self
function row:SetMinMythicPlusLevel(value) end

---Gets the value of field 'MaxMythicPlusLevel'.
---@return integer value
function row:GetMaxMythicPlusLevel() end

---Sets the value of field 'MaxMythicPlusLevel'.
---@param value integer
---@return dbc.row.v1215.ItemBonusTreeNode self
function row:SetMaxMythicPlusLevel(value) end

---Gets the value of field 'ItemCreationContextGroupID'.
---@return integer value
function row:GetItemCreationContextGroupID() end

---Sets the value of field 'ItemCreationContextGroupID'.
---@param value integer
---@return dbc.row.v1215.ItemBonusTreeNode self
function row:SetItemCreationContextGroupID(value) end

---Navigates foreign relationship to 'ItemCreationContextGroup' via 'ItemCreationContextGroupID'.
---@return dbc.row.v1215.ItemCreationContextGroup|nil
function row:GetItemCreationContextGroup() end

---Creates a related 'ItemCreationContextGroup' row and automatically links 'ItemCreationContextGroupID'.
---@param data? table
---@return dbc.row.v1215.ItemCreationContextGroup
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.ItemBonusTreeNode self
function row:SetFlags(value) end

---Gets the value of field 'ParentItemBonusTreeID'.
---@return integer value
function row:GetParentItemBonusTreeID() end

---Sets the value of field 'ParentItemBonusTreeID'.
---@param value integer
---@return dbc.row.v1215.ItemBonusTreeNode self
function row:SetParentItemBonusTreeID(value) end

---Navigates foreign relationship to 'ItemBonusTree' via 'ParentItemBonusTreeID'.
---@return dbc.row.v1215.ItemBonusTree|nil
function row:GetParentItemBonusTree() end

---Creates a related 'ItemBonusTree' row and automatically links 'ParentItemBonusTreeID'.
---@param data? table
---@return dbc.row.v1215.ItemBonusTree
function row:CreateRelated(data) end

---Table container for ItemBonusTreeNode (Build 12.1.5.69594).
---@class dbc.Table.v1215.ItemBonusTreeNode : DbcTable
---@field [integer] dbc.row.v1215.ItemBonusTreeNode
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ItemBonusTreeNode
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ItemBonusTreeNode|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ItemBonusTreeNode
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ItemBonusTreeNode>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ItemBonusTreeNode[]
function tbl:GetByRelation(foreign_id) end

return {}
