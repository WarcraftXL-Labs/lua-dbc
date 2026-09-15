---@meta
-- Generated LuaLS annotations for HouseDecor (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of HouseDecor in build 12.1.5.69594.
---@class dbc.row.v1215.HouseDecor : RowProxy
---@field Name_lang string
---@field InitialRotation number[]
---@field ID integer
---@field GameObjectID integer
---@field Flags integer
---@field Type integer
---@field ModelType integer
---@field ModelFileDataID integer
---@field ThumbnailFileDataID integer
---@field WeightCost integer
---@field ItemID integer
---@field InitialScale number
---@field FirstTimeAcquisitionXP integer
---@field OrderIndex integer
---@field Field_12_0_0_63534_015 integer
---@field StartingQuantity integer
---@field UiModelSceneID integer

local row = {}

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.HouseDecor self
function row:SetName_lang(value) end

---Gets the value of field 'InitialRotation'.
---@return number[] value
function row:GetInitialRotation() end

---Sets the value of field 'InitialRotation'.
---@param value number[]
---@return dbc.row.v1215.HouseDecor self
function row:SetInitialRotation(value) end

---Gets element at 1-based index in 'InitialRotation'.
---@param index integer
---@return number value
function row:GetInitialRotationItem(index) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.HouseDecor self
function row:SetID(value) end

---Gets the value of field 'GameObjectID'.
---@return integer value
function row:GetGameObjectID() end

---Sets the value of field 'GameObjectID'.
---@param value integer
---@return dbc.row.v1215.HouseDecor self
function row:SetGameObjectID(value) end

---Navigates foreign relationship to 'GameObject' via 'GameObjectID'.
---@return dbc.row.v1215.GameObject|nil
function row:GetGameObject() end

---Creates a related 'GameObject' row and automatically links 'GameObjectID'.
---@param data? table
---@return dbc.row.v1215.GameObject
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.HouseDecor self
function row:SetFlags(value) end

---Gets the value of field 'Type'.
---@return integer value
function row:GetType() end

---Sets the value of field 'Type'.
---@param value integer
---@return dbc.row.v1215.HouseDecor self
function row:SetType(value) end

---Gets the value of field 'ModelType'.
---@return integer value
function row:GetModelType() end

---Sets the value of field 'ModelType'.
---@param value integer
---@return dbc.row.v1215.HouseDecor self
function row:SetModelType(value) end

---Gets the value of field 'ModelFileDataID'.
---@return integer value
function row:GetModelFileDataID() end

---Sets the value of field 'ModelFileDataID'.
---@param value integer
---@return dbc.row.v1215.HouseDecor self
function row:SetModelFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'ModelFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetModelFileData() end

---Creates a related 'FileData' row and automatically links 'ModelFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'ThumbnailFileDataID'.
---@return integer value
function row:GetThumbnailFileDataID() end

---Sets the value of field 'ThumbnailFileDataID'.
---@param value integer
---@return dbc.row.v1215.HouseDecor self
function row:SetThumbnailFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'ThumbnailFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetThumbnailFileData() end

---Creates a related 'FileData' row and automatically links 'ThumbnailFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'WeightCost'.
---@return integer value
function row:GetWeightCost() end

---Sets the value of field 'WeightCost'.
---@param value integer
---@return dbc.row.v1215.HouseDecor self
function row:SetWeightCost(value) end

---Gets the value of field 'ItemID'.
---@return integer value
function row:GetItemID() end

---Sets the value of field 'ItemID'.
---@param value integer
---@return dbc.row.v1215.HouseDecor self
function row:SetItemID(value) end

---Navigates foreign relationship to 'Item' via 'ItemID'.
---@return dbc.row.v1215.Item|nil
function row:GetItem() end

---Creates a related 'Item' row and automatically links 'ItemID'.
---@param data? table
---@return dbc.row.v1215.Item
function row:CreateRelated(data) end

---Gets the value of field 'InitialScale'.
---@return number value
function row:GetInitialScale() end

---Sets the value of field 'InitialScale'.
---@param value number
---@return dbc.row.v1215.HouseDecor self
function row:SetInitialScale(value) end

---Gets the value of field 'FirstTimeAcquisitionXP'.
---@return integer value
function row:GetFirstTimeAcquisitionXP() end

---Sets the value of field 'FirstTimeAcquisitionXP'.
---@param value integer
---@return dbc.row.v1215.HouseDecor self
function row:SetFirstTimeAcquisitionXP(value) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.HouseDecor self
function row:SetOrderIndex(value) end

---Gets the value of field 'Field_12_0_0_63534_015'.
---@return integer value
function row:GetField_12_0_0_63534_015() end

---Sets the value of field 'Field_12_0_0_63534_015'.
---@param value integer
---@return dbc.row.v1215.HouseDecor self
function row:SetField_12_0_0_63534_015(value) end

---Gets the value of field 'StartingQuantity'.
---@return integer value
function row:GetStartingQuantity() end

---Sets the value of field 'StartingQuantity'.
---@param value integer
---@return dbc.row.v1215.HouseDecor self
function row:SetStartingQuantity(value) end

---Gets the value of field 'UiModelSceneID'.
---@return integer value
function row:GetUiModelSceneID() end

---Sets the value of field 'UiModelSceneID'.
---@param value integer
---@return dbc.row.v1215.HouseDecor self
function row:SetUiModelSceneID(value) end

---Navigates foreign relationship to 'UiModelScene' via 'UiModelSceneID'.
---@return dbc.row.v1215.UiModelScene|nil
function row:GetUiModelScene() end

---Creates a related 'UiModelScene' row and automatically links 'UiModelSceneID'.
---@param data? table
---@return dbc.row.v1215.UiModelScene
function row:CreateRelated(data) end

---Table container for HouseDecor (Build 12.1.5.69594).
---@class dbc.Table.v1215.HouseDecor : DbcTable
---@field [integer] dbc.row.v1215.HouseDecor
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.HouseDecor
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.HouseDecor|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.HouseDecor
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.HouseDecor>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.HouseDecor[]
function tbl:GetByRelation(foreign_id) end

return {}
