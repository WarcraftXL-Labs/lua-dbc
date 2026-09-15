---@meta
-- Generated LuaLS annotations for UiItemInteraction (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of UiItemInteraction in build 12.1.5.69594.
---@class dbc.row.v1215.UiItemInteraction : RowProxy
---@field ID integer
---@field TutorialText_lang string
---@field TitleText_lang string
---@field Description_lang string
---@field ButtonText_lang string
---@field Field_9_1_5_40196_004_lang string
---@field ConfirmationQuestion_lang string
---@field Field_10_0_2_46479_006_lang string
---@field UiTextureKitID integer
---@field OpenSoundKitID integer
---@field CloseSoundKitID integer
---@field Cost integer
---@field ItemInteractionFrameType integer ItemInteractionUI.ItemInteractionFrameType. 0 = CleanseCorruption
---@field InteractionSpellID integer
---@field CurrencyTypeID integer
---@field Field_8_3_0_32414_012 integer
---@field DropInSlotSoundKitID integer has GO_8BL_CultistChest_Open_TitanMagic
---@field TakeOutSlotSoundKitID integer has GO_8FX_VISIONS_TITAN_CLEANSINGLIGHT_Close

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.UiItemInteraction self
function row:SetID(value) end

---Gets the value of field 'TutorialText_lang'.
---@return string value
function row:GetTutorialText_lang() end

---Sets the value of field 'TutorialText_lang'.
---@param value string
---@return dbc.row.v1215.UiItemInteraction self
function row:SetTutorialText_lang(value) end

---Gets the value of field 'TitleText_lang'.
---@return string value
function row:GetTitleText_lang() end

---Sets the value of field 'TitleText_lang'.
---@param value string
---@return dbc.row.v1215.UiItemInteraction self
function row:SetTitleText_lang(value) end

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v1215.UiItemInteraction self
function row:SetDescription_lang(value) end

---Gets the value of field 'ButtonText_lang'.
---@return string value
function row:GetButtonText_lang() end

---Sets the value of field 'ButtonText_lang'.
---@param value string
---@return dbc.row.v1215.UiItemInteraction self
function row:SetButtonText_lang(value) end

---Gets the value of field 'Field_9_1_5_40196_004_lang'.
---@return string value
function row:GetField_9_1_5_40196_004_lang() end

---Sets the value of field 'Field_9_1_5_40196_004_lang'.
---@param value string
---@return dbc.row.v1215.UiItemInteraction self
function row:SetField_9_1_5_40196_004_lang(value) end

---Gets the value of field 'ConfirmationQuestion_lang'.
---@return string value
function row:GetConfirmationQuestion_lang() end

---Sets the value of field 'ConfirmationQuestion_lang'.
---@param value string
---@return dbc.row.v1215.UiItemInteraction self
function row:SetConfirmationQuestion_lang(value) end

---Gets the value of field 'Field_10_0_2_46479_006_lang'.
---@return string value
function row:GetField_10_0_2_46479_006_lang() end

---Sets the value of field 'Field_10_0_2_46479_006_lang'.
---@param value string
---@return dbc.row.v1215.UiItemInteraction self
function row:SetField_10_0_2_46479_006_lang(value) end

---Gets the value of field 'UiTextureKitID'.
---@return integer value
function row:GetUiTextureKitID() end

---Sets the value of field 'UiTextureKitID'.
---@param value integer
---@return dbc.row.v1215.UiItemInteraction self
function row:SetUiTextureKitID(value) end

---Navigates foreign relationship to 'UiTextureKit' via 'UiTextureKitID'.
---@return dbc.row.v1215.UiTextureKit|nil
function row:GetUiTextureKit() end

---Creates a related 'UiTextureKit' row and automatically links 'UiTextureKitID'.
---@param data? table
---@return dbc.row.v1215.UiTextureKit
function row:CreateRelated(data) end

---Gets the value of field 'OpenSoundKitID'.
---@return integer value
function row:GetOpenSoundKitID() end

---Sets the value of field 'OpenSoundKitID'.
---@param value integer
---@return dbc.row.v1215.UiItemInteraction self
function row:SetOpenSoundKitID(value) end

---Navigates foreign relationship to 'SoundKit' via 'OpenSoundKitID'.
---@return dbc.row.v1215.SoundKit|nil
function row:GetOpenSoundKit() end

---Creates a related 'SoundKit' row and automatically links 'OpenSoundKitID'.
---@param data? table
---@return dbc.row.v1215.SoundKit
function row:CreateRelated(data) end

---Gets the value of field 'CloseSoundKitID'.
---@return integer value
function row:GetCloseSoundKitID() end

---Sets the value of field 'CloseSoundKitID'.
---@param value integer
---@return dbc.row.v1215.UiItemInteraction self
function row:SetCloseSoundKitID(value) end

---Navigates foreign relationship to 'SoundKit' via 'CloseSoundKitID'.
---@return dbc.row.v1215.SoundKit|nil
function row:GetCloseSoundKit() end

---Creates a related 'SoundKit' row and automatically links 'CloseSoundKitID'.
---@param data? table
---@return dbc.row.v1215.SoundKit
function row:CreateRelated(data) end

---Gets the value of field 'Cost'.
---@return integer value
function row:GetCost() end

---Sets the value of field 'Cost'.
---@param value integer
---@return dbc.row.v1215.UiItemInteraction self
function row:SetCost(value) end

---Gets the value of field 'ItemInteractionFrameType'.
---@return integer value
function row:GetItemInteractionFrameType() end

---Sets the value of field 'ItemInteractionFrameType'.
---@param value integer
---@return dbc.row.v1215.UiItemInteraction self
function row:SetItemInteractionFrameType(value) end

---Gets the value of field 'InteractionSpellID'.
---@return integer value
function row:GetInteractionSpellID() end

---Sets the value of field 'InteractionSpellID'.
---@param value integer
---@return dbc.row.v1215.UiItemInteraction self
function row:SetInteractionSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'InteractionSpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetInteractionSpell() end

---Creates a related 'Spell' row and automatically links 'InteractionSpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'CurrencyTypeID'.
---@return integer value
function row:GetCurrencyTypeID() end

---Sets the value of field 'CurrencyTypeID'.
---@param value integer
---@return dbc.row.v1215.UiItemInteraction self
function row:SetCurrencyTypeID(value) end

---Navigates foreign relationship to 'CurrencyTypes' via 'CurrencyTypeID'.
---@return dbc.row.v1215.CurrencyTypes|nil
function row:GetCurrencyType() end

---Creates a related 'CurrencyTypes' row and automatically links 'CurrencyTypeID'.
---@param data? table
---@return dbc.row.v1215.CurrencyTypes
function row:CreateRelated(data) end

---Gets the value of field 'Field_8_3_0_32414_012'.
---@return integer value
function row:GetField_8_3_0_32414_012() end

---Sets the value of field 'Field_8_3_0_32414_012'.
---@param value integer
---@return dbc.row.v1215.UiItemInteraction self
function row:SetField_8_3_0_32414_012(value) end

---Gets the value of field 'DropInSlotSoundKitID'.
---@return integer value
function row:GetDropInSlotSoundKitID() end

---Sets the value of field 'DropInSlotSoundKitID'.
---@param value integer
---@return dbc.row.v1215.UiItemInteraction self
function row:SetDropInSlotSoundKitID(value) end

---Navigates foreign relationship to 'SoundKit' via 'DropInSlotSoundKitID'.
---@return dbc.row.v1215.SoundKit|nil
function row:GetDropInSlotSoundKit() end

---Creates a related 'SoundKit' row and automatically links 'DropInSlotSoundKitID'.
---@param data? table
---@return dbc.row.v1215.SoundKit
function row:CreateRelated(data) end

---Gets the value of field 'TakeOutSlotSoundKitID'.
---@return integer value
function row:GetTakeOutSlotSoundKitID() end

---Sets the value of field 'TakeOutSlotSoundKitID'.
---@param value integer
---@return dbc.row.v1215.UiItemInteraction self
function row:SetTakeOutSlotSoundKitID(value) end

---Navigates foreign relationship to 'SoundKit' via 'TakeOutSlotSoundKitID'.
---@return dbc.row.v1215.SoundKit|nil
function row:GetTakeOutSlotSoundKit() end

---Creates a related 'SoundKit' row and automatically links 'TakeOutSlotSoundKitID'.
---@param data? table
---@return dbc.row.v1215.SoundKit
function row:CreateRelated(data) end

---Table container for UiItemInteraction (Build 12.1.5.69594).
---@class dbc.Table.v1215.UiItemInteraction : DbcTable
---@field [integer] dbc.row.v1215.UiItemInteraction
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.UiItemInteraction
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.UiItemInteraction|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.UiItemInteraction
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.UiItemInteraction>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.UiItemInteraction[]
function tbl:GetByRelation(foreign_id) end

return {}
