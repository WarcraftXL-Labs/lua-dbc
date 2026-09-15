---@meta
-- Generated LuaLS annotations for TransmogOutfitSlotOption (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of TransmogOutfitSlotOption in build 12.1.5.69594.
---@class dbc.row.v1215.TransmogOutfitSlotOption : RowProxy
---@field ID integer
---@field Name_lang string
---@field OptionEnum integer
---@field TransmogOutfitSlotInfoID integer
---@field Flags integer 0x1: IllusionNotAllowed, 0x2: DynamicOptionName, 0x4: DisablesOffhandSlot
---@field OtherSlot integer
---@field ItemCostMultiplier number
---@field IllusionCostMultiplier number

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.TransmogOutfitSlotOption self
function row:SetID(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.TransmogOutfitSlotOption self
function row:SetName_lang(value) end

---Gets the value of field 'OptionEnum'.
---@return integer value
function row:GetOptionEnum() end

---Sets the value of field 'OptionEnum'.
---@param value integer
---@return dbc.row.v1215.TransmogOutfitSlotOption self
function row:SetOptionEnum(value) end

---Gets the value of field 'TransmogOutfitSlotInfoID'.
---@return integer value
function row:GetTransmogOutfitSlotInfoID() end

---Sets the value of field 'TransmogOutfitSlotInfoID'.
---@param value integer
---@return dbc.row.v1215.TransmogOutfitSlotOption self
function row:SetTransmogOutfitSlotInfoID(value) end

---Navigates foreign relationship to 'TransmogOutfitSlotInfo' via 'TransmogOutfitSlotInfoID'.
---@return dbc.row.v1215.TransmogOutfitSlotInfo|nil
function row:GetTransmogOutfitSlotInfo() end

---Creates a related 'TransmogOutfitSlotInfo' row and automatically links 'TransmogOutfitSlotInfoID'.
---@param data? table
---@return dbc.row.v1215.TransmogOutfitSlotInfo
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.TransmogOutfitSlotOption self
function row:SetFlags(value) end

---Gets the value of field 'OtherSlot'.
---@return integer value
function row:GetOtherSlot() end

---Sets the value of field 'OtherSlot'.
---@param value integer
---@return dbc.row.v1215.TransmogOutfitSlotOption self
function row:SetOtherSlot(value) end

---Navigates foreign relationship to 'TransmogOutfitSlotOption' via 'OtherSlot'.
---@return dbc.row.v1215.TransmogOutfitSlotOption|nil
function row:GetOtherSlot() end

---Creates a related 'TransmogOutfitSlotOption' row and automatically links 'OtherSlot'.
---@param data? table
---@return dbc.row.v1215.TransmogOutfitSlotOption
function row:CreateRelated(data) end

---Gets the value of field 'ItemCostMultiplier'.
---@return number value
function row:GetItemCostMultiplier() end

---Sets the value of field 'ItemCostMultiplier'.
---@param value number
---@return dbc.row.v1215.TransmogOutfitSlotOption self
function row:SetItemCostMultiplier(value) end

---Gets the value of field 'IllusionCostMultiplier'.
---@return number value
function row:GetIllusionCostMultiplier() end

---Sets the value of field 'IllusionCostMultiplier'.
---@param value number
---@return dbc.row.v1215.TransmogOutfitSlotOption self
function row:SetIllusionCostMultiplier(value) end

---Table container for TransmogOutfitSlotOption (Build 12.1.5.69594).
---@class dbc.Table.v1215.TransmogOutfitSlotOption : DbcTable
---@field [integer] dbc.row.v1215.TransmogOutfitSlotOption
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.TransmogOutfitSlotOption
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.TransmogOutfitSlotOption|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.TransmogOutfitSlotOption
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.TransmogOutfitSlotOption>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.TransmogOutfitSlotOption[]
function tbl:GetByRelation(foreign_id) end

return {}
