---@meta
-- Generated LuaLS annotations for CharacterServiceInfo (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CharacterServiceInfo in build 12.1.5.69594.
---@class dbc.row.v1215.CharacterServiceInfo : RowProxy
---@field ID integer
---@field FlowTitle_lang string
---@field PopupTitle_lang string
---@field PopupDescription_lang string
---@field ServiceType integer 0: Generic, 1: Level Boost, 2: Change
---@field BoostType integer
---@field IconFileDataID integer
---@field Priority integer
---@field Flags integer
---@field ProfessionLevel integer
---@field BoostLevel integer
---@field Expansion integer
---@field PopupUITextureKitID integer
---@field Field_11_0_0_54675_012 integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CharacterServiceInfo self
function row:SetID(value) end

---Gets the value of field 'FlowTitle_lang'.
---@return string value
function row:GetFlowTitle_lang() end

---Sets the value of field 'FlowTitle_lang'.
---@param value string
---@return dbc.row.v1215.CharacterServiceInfo self
function row:SetFlowTitle_lang(value) end

---Gets the value of field 'PopupTitle_lang'.
---@return string value
function row:GetPopupTitle_lang() end

---Sets the value of field 'PopupTitle_lang'.
---@param value string
---@return dbc.row.v1215.CharacterServiceInfo self
function row:SetPopupTitle_lang(value) end

---Gets the value of field 'PopupDescription_lang'.
---@return string value
function row:GetPopupDescription_lang() end

---Sets the value of field 'PopupDescription_lang'.
---@param value string
---@return dbc.row.v1215.CharacterServiceInfo self
function row:SetPopupDescription_lang(value) end

---Gets the value of field 'ServiceType'.
---@return integer value
function row:GetServiceType() end

---Sets the value of field 'ServiceType'.
---@param value integer
---@return dbc.row.v1215.CharacterServiceInfo self
function row:SetServiceType(value) end

---Gets the value of field 'BoostType'.
---@return integer value
function row:GetBoostType() end

---Sets the value of field 'BoostType'.
---@param value integer
---@return dbc.row.v1215.CharacterServiceInfo self
function row:SetBoostType(value) end

---Gets the value of field 'IconFileDataID'.
---@return integer value
function row:GetIconFileDataID() end

---Sets the value of field 'IconFileDataID'.
---@param value integer
---@return dbc.row.v1215.CharacterServiceInfo self
function row:SetIconFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'IconFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetIconFileData() end

---Creates a related 'FileData' row and automatically links 'IconFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'Priority'.
---@return integer value
function row:GetPriority() end

---Sets the value of field 'Priority'.
---@param value integer
---@return dbc.row.v1215.CharacterServiceInfo self
function row:SetPriority(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.CharacterServiceInfo self
function row:SetFlags(value) end

---Gets the value of field 'ProfessionLevel'.
---@return integer value
function row:GetProfessionLevel() end

---Sets the value of field 'ProfessionLevel'.
---@param value integer
---@return dbc.row.v1215.CharacterServiceInfo self
function row:SetProfessionLevel(value) end

---Gets the value of field 'BoostLevel'.
---@return integer value
function row:GetBoostLevel() end

---Sets the value of field 'BoostLevel'.
---@param value integer
---@return dbc.row.v1215.CharacterServiceInfo self
function row:SetBoostLevel(value) end

---Gets the value of field 'Expansion'.
---@return integer value
function row:GetExpansion() end

---Sets the value of field 'Expansion'.
---@param value integer
---@return dbc.row.v1215.CharacterServiceInfo self
function row:SetExpansion(value) end

---Gets the value of field 'PopupUITextureKitID'.
---@return integer value
function row:GetPopupUITextureKitID() end

---Sets the value of field 'PopupUITextureKitID'.
---@param value integer
---@return dbc.row.v1215.CharacterServiceInfo self
function row:SetPopupUITextureKitID(value) end

---Navigates foreign relationship to 'UiTextureKit' via 'PopupUITextureKitID'.
---@return dbc.row.v1215.UiTextureKit|nil
function row:GetPopupUITextureKit() end

---Creates a related 'UiTextureKit' row and automatically links 'PopupUITextureKitID'.
---@param data? table
---@return dbc.row.v1215.UiTextureKit
function row:CreateRelated(data) end

---Gets the value of field 'Field_11_0_0_54675_012'.
---@return integer value
function row:GetField_11_0_0_54675_012() end

---Sets the value of field 'Field_11_0_0_54675_012'.
---@param value integer
---@return dbc.row.v1215.CharacterServiceInfo self
function row:SetField_11_0_0_54675_012(value) end

---Table container for CharacterServiceInfo (Build 12.1.5.69594).
---@class dbc.Table.v1215.CharacterServiceInfo : DbcTable
---@field [integer] dbc.row.v1215.CharacterServiceInfo
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CharacterServiceInfo
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CharacterServiceInfo|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CharacterServiceInfo
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CharacterServiceInfo>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CharacterServiceInfo[]
function tbl:GetByRelation(foreign_id) end

return {}
