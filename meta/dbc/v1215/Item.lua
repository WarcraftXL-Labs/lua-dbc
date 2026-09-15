---@meta
-- Generated LuaLS annotations for Item (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of Item in build 12.1.5.69594.
---@class dbc.row.v1215.Item : RowProxy
---@field ID integer
---@field ClassID integer
---@field SubclassID integer
---@field Material integer
---@field InventoryType integer
---@field SheatheType integer
---@field Sound_override_subclassID integer
---@field IconFileDataID integer
---@field ItemGroupSoundsID integer
---@field ContentTuningID integer
---@field ModifiedCraftingReagentItemID integer
---@field Field_12_0_0_63534_010 integer
---@field CraftingQualityID integer
---@field ItemSquishEraID integer
---@field RecraftReagentCountPercentage number
---@field OrderSource integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.Item self
function row:SetID(value) end

---Gets the value of field 'ClassID'.
---@return integer value
function row:GetClassID() end

---Sets the value of field 'ClassID'.
---@param value integer
---@return dbc.row.v1215.Item self
function row:SetClassID(value) end

---Navigates foreign relationship to 'ItemClass' via 'ClassID'.
---@return dbc.row.v1215.ItemClass|nil
function row:GetClass() end

---Creates a related 'ItemClass' row and automatically links 'ClassID'.
---@param data? table
---@return dbc.row.v1215.ItemClass
function row:CreateRelated(data) end

---Gets the value of field 'SubclassID'.
---@return integer value
function row:GetSubclassID() end

---Sets the value of field 'SubclassID'.
---@param value integer
---@return dbc.row.v1215.Item self
function row:SetSubclassID(value) end

---Navigates foreign relationship to 'Subclass' via 'SubclassID'.
---@return dbc.row.v1215.Subclass|nil
function row:GetSubclass() end

---Creates a related 'Subclass' row and automatically links 'SubclassID'.
---@param data? table
---@return dbc.row.v1215.Subclass
function row:CreateRelated(data) end

---Gets the value of field 'Material'.
---@return integer value
function row:GetMaterial() end

---Sets the value of field 'Material'.
---@param value integer
---@return dbc.row.v1215.Item self
function row:SetMaterial(value) end

---Navigates foreign relationship to 'Material' via 'Material'.
---@return dbc.row.v1215.Material|nil
function row:GetMaterial() end

---Creates a related 'Material' row and automatically links 'Material'.
---@param data? table
---@return dbc.row.v1215.Material
function row:CreateRelated(data) end

---Gets the value of field 'InventoryType'.
---@return integer value
function row:GetInventoryType() end

---Sets the value of field 'InventoryType'.
---@param value integer
---@return dbc.row.v1215.Item self
function row:SetInventoryType(value) end

---Gets the value of field 'SheatheType'.
---@return integer value
function row:GetSheatheType() end

---Sets the value of field 'SheatheType'.
---@param value integer
---@return dbc.row.v1215.Item self
function row:SetSheatheType(value) end

---Gets the value of field 'Sound_override_subclassID'.
---@return integer value
function row:GetSound_override_subclassID() end

---Sets the value of field 'Sound_override_subclassID'.
---@param value integer
---@return dbc.row.v1215.Item self
function row:SetSound_override_subclassID(value) end

---Navigates foreign relationship to 'Sound_override_subclass' via 'Sound_override_subclassID'.
---@return dbc.row.v1215.Sound_override_subclass|nil
function row:GetSound_override_subclass() end

---Creates a related 'Sound_override_subclass' row and automatically links 'Sound_override_subclassID'.
---@param data? table
---@return dbc.row.v1215.Sound_override_subclass
function row:CreateRelated(data) end

---Gets the value of field 'IconFileDataID'.
---@return integer value
function row:GetIconFileDataID() end

---Sets the value of field 'IconFileDataID'.
---@param value integer
---@return dbc.row.v1215.Item self
function row:SetIconFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'IconFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetIconFileData() end

---Creates a related 'FileData' row and automatically links 'IconFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'ItemGroupSoundsID'.
---@return integer value
function row:GetItemGroupSoundsID() end

---Sets the value of field 'ItemGroupSoundsID'.
---@param value integer
---@return dbc.row.v1215.Item self
function row:SetItemGroupSoundsID(value) end

---Navigates foreign relationship to 'ItemGroupSounds' via 'ItemGroupSoundsID'.
---@return dbc.row.v1215.ItemGroupSounds|nil
function row:GetItemGroupSounds() end

---Creates a related 'ItemGroupSounds' row and automatically links 'ItemGroupSoundsID'.
---@param data? table
---@return dbc.row.v1215.ItemGroupSounds
function row:CreateRelated(data) end

---Gets the value of field 'ContentTuningID'.
---@return integer value
function row:GetContentTuningID() end

---Sets the value of field 'ContentTuningID'.
---@param value integer
---@return dbc.row.v1215.Item self
function row:SetContentTuningID(value) end

---Navigates foreign relationship to 'ContentTuning' via 'ContentTuningID'.
---@return dbc.row.v1215.ContentTuning|nil
function row:GetContentTuning() end

---Creates a related 'ContentTuning' row and automatically links 'ContentTuningID'.
---@param data? table
---@return dbc.row.v1215.ContentTuning
function row:CreateRelated(data) end

---Gets the value of field 'ModifiedCraftingReagentItemID'.
---@return integer value
function row:GetModifiedCraftingReagentItemID() end

---Sets the value of field 'ModifiedCraftingReagentItemID'.
---@param value integer
---@return dbc.row.v1215.Item self
function row:SetModifiedCraftingReagentItemID(value) end

---Navigates foreign relationship to 'ModifiedCraftingReagentItem' via 'ModifiedCraftingReagentItemID'.
---@return dbc.row.v1215.ModifiedCraftingReagentItem|nil
function row:GetModifiedCraftingReagentItem() end

---Creates a related 'ModifiedCraftingReagentItem' row and automatically links 'ModifiedCraftingReagentItemID'.
---@param data? table
---@return dbc.row.v1215.ModifiedCraftingReagentItem
function row:CreateRelated(data) end

---Gets the value of field 'Field_12_0_0_63534_010'.
---@return integer value
function row:GetField_12_0_0_63534_010() end

---Sets the value of field 'Field_12_0_0_63534_010'.
---@param value integer
---@return dbc.row.v1215.Item self
function row:SetField_12_0_0_63534_010(value) end

---Gets the value of field 'CraftingQualityID'.
---@return integer value
function row:GetCraftingQualityID() end

---Sets the value of field 'CraftingQualityID'.
---@param value integer
---@return dbc.row.v1215.Item self
function row:SetCraftingQualityID(value) end

---Navigates foreign relationship to 'CraftingQuality' via 'CraftingQualityID'.
---@return dbc.row.v1215.CraftingQuality|nil
function row:GetCraftingQuality() end

---Creates a related 'CraftingQuality' row and automatically links 'CraftingQualityID'.
---@param data? table
---@return dbc.row.v1215.CraftingQuality
function row:CreateRelated(data) end

---Gets the value of field 'ItemSquishEraID'.
---@return integer value
function row:GetItemSquishEraID() end

---Sets the value of field 'ItemSquishEraID'.
---@param value integer
---@return dbc.row.v1215.Item self
function row:SetItemSquishEraID(value) end

---Navigates foreign relationship to 'ItemSquishEra' via 'ItemSquishEraID'.
---@return dbc.row.v1215.ItemSquishEra|nil
function row:GetItemSquishEra() end

---Creates a related 'ItemSquishEra' row and automatically links 'ItemSquishEraID'.
---@param data? table
---@return dbc.row.v1215.ItemSquishEra
function row:CreateRelated(data) end

---Gets the value of field 'RecraftReagentCountPercentage'.
---@return number value
function row:GetRecraftReagentCountPercentage() end

---Sets the value of field 'RecraftReagentCountPercentage'.
---@param value number
---@return dbc.row.v1215.Item self
function row:SetRecraftReagentCountPercentage(value) end

---Gets the value of field 'OrderSource'.
---@return integer value
function row:GetOrderSource() end

---Sets the value of field 'OrderSource'.
---@param value integer
---@return dbc.row.v1215.Item self
function row:SetOrderSource(value) end

---Table container for Item (Build 12.1.5.69594).
---@class dbc.Table.v1215.Item : DbcTable
---@field [integer] dbc.row.v1215.Item
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.Item
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.Item|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.Item
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.Item>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.Item[]
function tbl:GetByRelation(foreign_id) end

return {}
