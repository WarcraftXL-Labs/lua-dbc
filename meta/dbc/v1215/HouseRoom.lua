---@meta
-- Generated LuaLS annotations for HouseRoom (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of HouseRoom in build 12.1.5.69594.
---@class dbc.row.v1215.HouseRoom : RowProxy
---@field Name_lang string
---@field ID integer
---@field Field_12_0_0_63967_001 integer
---@field Flags integer
---@field Field_12_0_0_63724_002 integer
---@field RoomWmoDataID integer
---@field UiTextureAtlasElementID integer
---@field WeightCost integer
---@field ItemID integer
---@field SortPriority integer

local row = {}

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.HouseRoom self
function row:SetName_lang(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.HouseRoom self
function row:SetID(value) end

---Gets the value of field 'Field_12_0_0_63967_001'.
---@return integer value
function row:GetField_12_0_0_63967_001() end

---Sets the value of field 'Field_12_0_0_63967_001'.
---@param value integer
---@return dbc.row.v1215.HouseRoom self
function row:SetField_12_0_0_63967_001(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.HouseRoom self
function row:SetFlags(value) end

---Gets the value of field 'Field_12_0_0_63724_002'.
---@return integer value
function row:GetField_12_0_0_63724_002() end

---Sets the value of field 'Field_12_0_0_63724_002'.
---@param value integer
---@return dbc.row.v1215.HouseRoom self
function row:SetField_12_0_0_63724_002(value) end

---Gets the value of field 'RoomWmoDataID'.
---@return integer value
function row:GetRoomWmoDataID() end

---Sets the value of field 'RoomWmoDataID'.
---@param value integer
---@return dbc.row.v1215.HouseRoom self
function row:SetRoomWmoDataID(value) end

---Navigates foreign relationship to 'RoomWmoData' via 'RoomWmoDataID'.
---@return dbc.row.v1215.RoomWmoData|nil
function row:GetRoomWmoData() end

---Creates a related 'RoomWmoData' row and automatically links 'RoomWmoDataID'.
---@param data? table
---@return dbc.row.v1215.RoomWmoData
function row:CreateRelated(data) end

---Gets the value of field 'UiTextureAtlasElementID'.
---@return integer value
function row:GetUiTextureAtlasElementID() end

---Sets the value of field 'UiTextureAtlasElementID'.
---@param value integer
---@return dbc.row.v1215.HouseRoom self
function row:SetUiTextureAtlasElementID(value) end

---Navigates foreign relationship to 'UiTextureAtlasElement' via 'UiTextureAtlasElementID'.
---@return dbc.row.v1215.UiTextureAtlasElement|nil
function row:GetUiTextureAtlasElement() end

---Creates a related 'UiTextureAtlasElement' row and automatically links 'UiTextureAtlasElementID'.
---@param data? table
---@return dbc.row.v1215.UiTextureAtlasElement
function row:CreateRelated(data) end

---Gets the value of field 'WeightCost'.
---@return integer value
function row:GetWeightCost() end

---Sets the value of field 'WeightCost'.
---@param value integer
---@return dbc.row.v1215.HouseRoom self
function row:SetWeightCost(value) end

---Gets the value of field 'ItemID'.
---@return integer value
function row:GetItemID() end

---Sets the value of field 'ItemID'.
---@param value integer
---@return dbc.row.v1215.HouseRoom self
function row:SetItemID(value) end

---Navigates foreign relationship to 'Item' via 'ItemID'.
---@return dbc.row.v1215.Item|nil
function row:GetItem() end

---Creates a related 'Item' row and automatically links 'ItemID'.
---@param data? table
---@return dbc.row.v1215.Item
function row:CreateRelated(data) end

---Gets the value of field 'SortPriority'.
---@return integer value
function row:GetSortPriority() end

---Sets the value of field 'SortPriority'.
---@param value integer
---@return dbc.row.v1215.HouseRoom self
function row:SetSortPriority(value) end

---Table container for HouseRoom (Build 12.1.5.69594).
---@class dbc.Table.v1215.HouseRoom : DbcTable
---@field [integer] dbc.row.v1215.HouseRoom
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.HouseRoom
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.HouseRoom|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.HouseRoom
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.HouseRoom>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.HouseRoom[]
function tbl:GetByRelation(foreign_id) end

return {}
