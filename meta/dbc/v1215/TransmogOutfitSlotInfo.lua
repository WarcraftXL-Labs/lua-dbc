---@meta
-- Generated LuaLS annotations for TransmogOutfitSlotInfo (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of TransmogOutfitSlotInfo in build 12.1.5.69594.
---@class dbc.row.v1215.TransmogOutfitSlotInfo : RowProxy
---@field InventorySlotName string
---@field ID integer
---@field TransmogOutfitSlotEnum integer
---@field InventorySlotEnum integer EnumeratedString 259
---@field Flags integer 0x1: CannotBeHidden, 0x2: CanHaveIllusions, 0x4: IsSecondarySlot
---@field Field_12_0_0_64339_007 integer TransmogType?
---@field TransmogCollectionType integer
---@field OtherSlot integer
---@field InventorySlotID integer
---@field UnassignedAtlasID integer
---@field UnassignedDisplayAtlasID integer
---@field ItemCostMultiplier number
---@field IllusionCostMultiplier number

local row = {}

---Gets the value of field 'InventorySlotName'.
---@return string value
function row:GetInventorySlotName() end

---Sets the value of field 'InventorySlotName'.
---@param value string
---@return dbc.row.v1215.TransmogOutfitSlotInfo self
function row:SetInventorySlotName(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.TransmogOutfitSlotInfo self
function row:SetID(value) end

---Gets the value of field 'TransmogOutfitSlotEnum'.
---@return integer value
function row:GetTransmogOutfitSlotEnum() end

---Sets the value of field 'TransmogOutfitSlotEnum'.
---@param value integer
---@return dbc.row.v1215.TransmogOutfitSlotInfo self
function row:SetTransmogOutfitSlotEnum(value) end

---Gets the value of field 'InventorySlotEnum'.
---@return integer value
function row:GetInventorySlotEnum() end

---Sets the value of field 'InventorySlotEnum'.
---@param value integer
---@return dbc.row.v1215.TransmogOutfitSlotInfo self
function row:SetInventorySlotEnum(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.TransmogOutfitSlotInfo self
function row:SetFlags(value) end

---Gets the value of field 'Field_12_0_0_64339_007'.
---@return integer value
function row:GetField_12_0_0_64339_007() end

---Sets the value of field 'Field_12_0_0_64339_007'.
---@param value integer
---@return dbc.row.v1215.TransmogOutfitSlotInfo self
function row:SetField_12_0_0_64339_007(value) end

---Gets the value of field 'TransmogCollectionType'.
---@return integer value
function row:GetTransmogCollectionType() end

---Sets the value of field 'TransmogCollectionType'.
---@param value integer
---@return dbc.row.v1215.TransmogOutfitSlotInfo self
function row:SetTransmogCollectionType(value) end

---Gets the value of field 'OtherSlot'.
---@return integer value
function row:GetOtherSlot() end

---Sets the value of field 'OtherSlot'.
---@param value integer
---@return dbc.row.v1215.TransmogOutfitSlotInfo self
function row:SetOtherSlot(value) end

---Navigates foreign relationship to 'TransmogOutfitSlotInfo' via 'OtherSlot'.
---@return dbc.row.v1215.TransmogOutfitSlotInfo|nil
function row:GetOtherSlot() end

---Creates a related 'TransmogOutfitSlotInfo' row and automatically links 'OtherSlot'.
---@param data? table
---@return dbc.row.v1215.TransmogOutfitSlotInfo
function row:CreateRelated(data) end

---Gets the value of field 'InventorySlotID'.
---@return integer value
function row:GetInventorySlotID() end

---Sets the value of field 'InventorySlotID'.
---@param value integer
---@return dbc.row.v1215.TransmogOutfitSlotInfo self
function row:SetInventorySlotID(value) end

---Navigates foreign relationship to 'InventorySlot' via 'InventorySlotID'.
---@return dbc.row.v1215.InventorySlot|nil
function row:GetInventorySlot() end

---Creates a related 'InventorySlot' row and automatically links 'InventorySlotID'.
---@param data? table
---@return dbc.row.v1215.InventorySlot
function row:CreateRelated(data) end

---Gets the value of field 'UnassignedAtlasID'.
---@return integer value
function row:GetUnassignedAtlasID() end

---Sets the value of field 'UnassignedAtlasID'.
---@param value integer
---@return dbc.row.v1215.TransmogOutfitSlotInfo self
function row:SetUnassignedAtlasID(value) end

---Navigates foreign relationship to 'UiTextureAtlasElement' via 'UnassignedAtlasID'.
---@return dbc.row.v1215.UiTextureAtlasElement|nil
function row:GetUnassignedAtlas() end

---Creates a related 'UiTextureAtlasElement' row and automatically links 'UnassignedAtlasID'.
---@param data? table
---@return dbc.row.v1215.UiTextureAtlasElement
function row:CreateRelated(data) end

---Gets the value of field 'UnassignedDisplayAtlasID'.
---@return integer value
function row:GetUnassignedDisplayAtlasID() end

---Sets the value of field 'UnassignedDisplayAtlasID'.
---@param value integer
---@return dbc.row.v1215.TransmogOutfitSlotInfo self
function row:SetUnassignedDisplayAtlasID(value) end

---Navigates foreign relationship to 'UiTextureAtlasElement' via 'UnassignedDisplayAtlasID'.
---@return dbc.row.v1215.UiTextureAtlasElement|nil
function row:GetUnassignedDisplayAtlas() end

---Creates a related 'UiTextureAtlasElement' row and automatically links 'UnassignedDisplayAtlasID'.
---@param data? table
---@return dbc.row.v1215.UiTextureAtlasElement
function row:CreateRelated(data) end

---Gets the value of field 'ItemCostMultiplier'.
---@return number value
function row:GetItemCostMultiplier() end

---Sets the value of field 'ItemCostMultiplier'.
---@param value number
---@return dbc.row.v1215.TransmogOutfitSlotInfo self
function row:SetItemCostMultiplier(value) end

---Gets the value of field 'IllusionCostMultiplier'.
---@return number value
function row:GetIllusionCostMultiplier() end

---Sets the value of field 'IllusionCostMultiplier'.
---@param value number
---@return dbc.row.v1215.TransmogOutfitSlotInfo self
function row:SetIllusionCostMultiplier(value) end

---Table container for TransmogOutfitSlotInfo (Build 12.1.5.69594).
---@class dbc.Table.v1215.TransmogOutfitSlotInfo : DbcTable
---@field [integer] dbc.row.v1215.TransmogOutfitSlotInfo
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.TransmogOutfitSlotInfo
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.TransmogOutfitSlotInfo|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.TransmogOutfitSlotInfo
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.TransmogOutfitSlotInfo>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.TransmogOutfitSlotInfo[]
function tbl:GetByRelation(foreign_id) end

return {}
