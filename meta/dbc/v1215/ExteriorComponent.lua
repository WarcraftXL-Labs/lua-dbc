---@meta
-- Generated LuaLS annotations for ExteriorComponent (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ExteriorComponent in build 12.1.5.69594.
---@class dbc.row.v1215.ExteriorComponent : RowProxy
---@field Name_lang string
---@field EntryOffset number[]
---@field ID integer
---@field Size integer
---@field HouseExteriorWmoDataID integer
---@field ParentComponentID integer
---@field ModelFileDataID integer
---@field Flags integer 0x1 IsDefaultFixture, 0x2 UnlockedByDefault
---@field Field_12_0_0_63534_007 integer
---@field Type integer
---@field Field_12_0_0_63534_009 integer
---@field GameObjectID integer
---@field Field_11_2_7_64044_011 integer
---@field ItemID integer

local row = {}

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.ExteriorComponent self
function row:SetName_lang(value) end

---Gets the value of field 'EntryOffset'.
---@return number[] value
function row:GetEntryOffset() end

---Sets the value of field 'EntryOffset'.
---@param value number[]
---@return dbc.row.v1215.ExteriorComponent self
function row:SetEntryOffset(value) end

---Gets element at 1-based index in 'EntryOffset'.
---@param index integer
---@return number value
function row:GetEntryOffsetItem(index) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ExteriorComponent self
function row:SetID(value) end

---Gets the value of field 'Size'.
---@return integer value
function row:GetSize() end

---Sets the value of field 'Size'.
---@param value integer
---@return dbc.row.v1215.ExteriorComponent self
function row:SetSize(value) end

---Gets the value of field 'HouseExteriorWmoDataID'.
---@return integer value
function row:GetHouseExteriorWmoDataID() end

---Sets the value of field 'HouseExteriorWmoDataID'.
---@param value integer
---@return dbc.row.v1215.ExteriorComponent self
function row:SetHouseExteriorWmoDataID(value) end

---Navigates foreign relationship to 'HouseExteriorWmoData' via 'HouseExteriorWmoDataID'.
---@return dbc.row.v1215.HouseExteriorWmoData|nil
function row:GetHouseExteriorWmoData() end

---Creates a related 'HouseExteriorWmoData' row and automatically links 'HouseExteriorWmoDataID'.
---@param data? table
---@return dbc.row.v1215.HouseExteriorWmoData
function row:CreateRelated(data) end

---Gets the value of field 'ParentComponentID'.
---@return integer value
function row:GetParentComponentID() end

---Sets the value of field 'ParentComponentID'.
---@param value integer
---@return dbc.row.v1215.ExteriorComponent self
function row:SetParentComponentID(value) end

---Navigates foreign relationship to 'ExteriorComponent' via 'ParentComponentID'.
---@return dbc.row.v1215.ExteriorComponent|nil
function row:GetParentComponent() end

---Creates a related 'ExteriorComponent' row and automatically links 'ParentComponentID'.
---@param data? table
---@return dbc.row.v1215.ExteriorComponent
function row:CreateRelated(data) end

---Gets the value of field 'ModelFileDataID'.
---@return integer value
function row:GetModelFileDataID() end

---Sets the value of field 'ModelFileDataID'.
---@param value integer
---@return dbc.row.v1215.ExteriorComponent self
function row:SetModelFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'ModelFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetModelFileData() end

---Creates a related 'FileData' row and automatically links 'ModelFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.ExteriorComponent self
function row:SetFlags(value) end

---Gets the value of field 'Field_12_0_0_63534_007'.
---@return integer value
function row:GetField_12_0_0_63534_007() end

---Sets the value of field 'Field_12_0_0_63534_007'.
---@param value integer
---@return dbc.row.v1215.ExteriorComponent self
function row:SetField_12_0_0_63534_007(value) end

---Gets the value of field 'Type'.
---@return integer value
function row:GetType() end

---Sets the value of field 'Type'.
---@param value integer
---@return dbc.row.v1215.ExteriorComponent self
function row:SetType(value) end

---Navigates foreign relationship to 'ExteriorComponentType' via 'Type'.
---@return dbc.row.v1215.ExteriorComponentType|nil
function row:GetType() end

---Creates a related 'ExteriorComponentType' row and automatically links 'Type'.
---@param data? table
---@return dbc.row.v1215.ExteriorComponentType
function row:CreateRelated(data) end

---Gets the value of field 'Field_12_0_0_63534_009'.
---@return integer value
function row:GetField_12_0_0_63534_009() end

---Sets the value of field 'Field_12_0_0_63534_009'.
---@param value integer
---@return dbc.row.v1215.ExteriorComponent self
function row:SetField_12_0_0_63534_009(value) end

---Gets the value of field 'GameObjectID'.
---@return integer value
function row:GetGameObjectID() end

---Sets the value of field 'GameObjectID'.
---@param value integer
---@return dbc.row.v1215.ExteriorComponent self
function row:SetGameObjectID(value) end

---Navigates foreign relationship to 'GameObjects' via 'GameObjectID'.
---@return dbc.row.v1215.GameObjects|nil
function row:GetGameObject() end

---Creates a related 'GameObjects' row and automatically links 'GameObjectID'.
---@param data? table
---@return dbc.row.v1215.GameObjects
function row:CreateRelated(data) end

---Gets the value of field 'Field_11_2_7_64044_011'.
---@return integer value
function row:GetField_11_2_7_64044_011() end

---Sets the value of field 'Field_11_2_7_64044_011'.
---@param value integer
---@return dbc.row.v1215.ExteriorComponent self
function row:SetField_11_2_7_64044_011(value) end

---Gets the value of field 'ItemID'.
---@return integer value
function row:GetItemID() end

---Sets the value of field 'ItemID'.
---@param value integer
---@return dbc.row.v1215.ExteriorComponent self
function row:SetItemID(value) end

---Navigates foreign relationship to 'Item' via 'ItemID'.
---@return dbc.row.v1215.Item|nil
function row:GetItem() end

---Creates a related 'Item' row and automatically links 'ItemID'.
---@param data? table
---@return dbc.row.v1215.Item
function row:CreateRelated(data) end

---Table container for ExteriorComponent (Build 12.1.5.69594).
---@class dbc.Table.v1215.ExteriorComponent : DbcTable
---@field [integer] dbc.row.v1215.ExteriorComponent
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ExteriorComponent
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ExteriorComponent|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ExteriorComponent
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ExteriorComponent>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ExteriorComponent[]
function tbl:GetByRelation(foreign_id) end

return {}
