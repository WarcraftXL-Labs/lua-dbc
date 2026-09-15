---@meta
-- Generated LuaLS annotations for ItemBonusSeasonBonusListGroup (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ItemBonusSeasonBonusListGroup in build 12.1.5.69594.
---@class dbc.row.v1215.ItemBonusSeasonBonusListGroup : RowProxy
---@field ID integer
---@field ItemBonusListGroupID integer
---@field Field_10_1_0_48898_002 integer
---@field ItemBonusSeasonID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ItemBonusSeasonBonusListGroup self
function row:SetID(value) end

---Gets the value of field 'ItemBonusListGroupID'.
---@return integer value
function row:GetItemBonusListGroupID() end

---Sets the value of field 'ItemBonusListGroupID'.
---@param value integer
---@return dbc.row.v1215.ItemBonusSeasonBonusListGroup self
function row:SetItemBonusListGroupID(value) end

---Navigates foreign relationship to 'ItemBonusListGroup' via 'ItemBonusListGroupID'.
---@return dbc.row.v1215.ItemBonusListGroup|nil
function row:GetItemBonusListGroup() end

---Creates a related 'ItemBonusListGroup' row and automatically links 'ItemBonusListGroupID'.
---@param data? table
---@return dbc.row.v1215.ItemBonusListGroup
function row:CreateRelated(data) end

---Gets the value of field 'Field_10_1_0_48898_002'.
---@return integer value
function row:GetField_10_1_0_48898_002() end

---Sets the value of field 'Field_10_1_0_48898_002'.
---@param value integer
---@return dbc.row.v1215.ItemBonusSeasonBonusListGroup self
function row:SetField_10_1_0_48898_002(value) end

---Gets the value of field 'ItemBonusSeasonID'.
---@return integer value
function row:GetItemBonusSeasonID() end

---Sets the value of field 'ItemBonusSeasonID'.
---@param value integer
---@return dbc.row.v1215.ItemBonusSeasonBonusListGroup self
function row:SetItemBonusSeasonID(value) end

---Navigates foreign relationship to 'ItemBonusSeason' via 'ItemBonusSeasonID'.
---@return dbc.row.v1215.ItemBonusSeason|nil
function row:GetItemBonusSeason() end

---Creates a related 'ItemBonusSeason' row and automatically links 'ItemBonusSeasonID'.
---@param data? table
---@return dbc.row.v1215.ItemBonusSeason
function row:CreateRelated(data) end

---Table container for ItemBonusSeasonBonusListGroup (Build 12.1.5.69594).
---@class dbc.Table.v1215.ItemBonusSeasonBonusListGroup : DbcTable
---@field [integer] dbc.row.v1215.ItemBonusSeasonBonusListGroup
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ItemBonusSeasonBonusListGroup
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ItemBonusSeasonBonusListGroup|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ItemBonusSeasonBonusListGroup
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ItemBonusSeasonBonusListGroup>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ItemBonusSeasonBonusListGroup[]
function tbl:GetByRelation(foreign_id) end

return {}
