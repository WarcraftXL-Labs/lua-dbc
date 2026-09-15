---@meta
-- Generated LuaLS annotations for UICovenantPreview (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of UICovenantPreview in build 12.1.5.69594.
---@class dbc.row.v1215.UICovenantPreview : RowProxy
---@field FeatureName_lang string
---@field FeatureDescription_lang string
---@field ID integer
---@field CovenantID integer
---@field UiMapID integer used for zone name
---@field Crest integer
---@field TransmogSetID0 integer whatever set is the first the player can use wins
---@field TextureKit integer
---@field MountID integer
---@field PlayerChoiceResponseID integer
---@field Field_9_0_1_33978_008 integer
---@field Field_9_0_1_34902_009 integer
---@field TransmogSetID1 integer whatever set is the first the player can use wins
---@field TransmogSetID2 integer whatever set is the first the player can use wins
---@field TransmogSetID3 integer whatever set is the first the player can use wins
---@field FeatureTextureID integer

local row = {}

---Gets the value of field 'FeatureName_lang'.
---@return string value
function row:GetFeatureName_lang() end

---Sets the value of field 'FeatureName_lang'.
---@param value string
---@return dbc.row.v1215.UICovenantPreview self
function row:SetFeatureName_lang(value) end

---Gets the value of field 'FeatureDescription_lang'.
---@return string value
function row:GetFeatureDescription_lang() end

---Sets the value of field 'FeatureDescription_lang'.
---@param value string
---@return dbc.row.v1215.UICovenantPreview self
function row:SetFeatureDescription_lang(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.UICovenantPreview self
function row:SetID(value) end

---Gets the value of field 'CovenantID'.
---@return integer value
function row:GetCovenantID() end

---Sets the value of field 'CovenantID'.
---@param value integer
---@return dbc.row.v1215.UICovenantPreview self
function row:SetCovenantID(value) end

---Navigates foreign relationship to 'Covenant' via 'CovenantID'.
---@return dbc.row.v1215.Covenant|nil
function row:GetCovenant() end

---Creates a related 'Covenant' row and automatically links 'CovenantID'.
---@param data? table
---@return dbc.row.v1215.Covenant
function row:CreateRelated(data) end

---Gets the value of field 'UiMapID'.
---@return integer value
function row:GetUiMapID() end

---Sets the value of field 'UiMapID'.
---@param value integer
---@return dbc.row.v1215.UICovenantPreview self
function row:SetUiMapID(value) end

---Navigates foreign relationship to 'UiMap' via 'UiMapID'.
---@return dbc.row.v1215.UiMap|nil
function row:GetUiMap() end

---Creates a related 'UiMap' row and automatically links 'UiMapID'.
---@param data? table
---@return dbc.row.v1215.UiMap
function row:CreateRelated(data) end

---Gets the value of field 'Crest'.
---@return integer value
function row:GetCrest() end

---Sets the value of field 'Crest'.
---@param value integer
---@return dbc.row.v1215.UICovenantPreview self
function row:SetCrest(value) end

---Navigates foreign relationship to 'UiTextureAtlasElement' via 'Crest'.
---@return dbc.row.v1215.UiTextureAtlasElement|nil
function row:GetCrest() end

---Creates a related 'UiTextureAtlasElement' row and automatically links 'Crest'.
---@param data? table
---@return dbc.row.v1215.UiTextureAtlasElement
function row:CreateRelated(data) end

---Gets the value of field 'TransmogSetID0'.
---@return integer value
function row:GetTransmogSetID0() end

---Sets the value of field 'TransmogSetID0'.
---@param value integer
---@return dbc.row.v1215.UICovenantPreview self
function row:SetTransmogSetID0(value) end

---Navigates foreign relationship to 'TransmogSet' via 'TransmogSetID0'.
---@return dbc.row.v1215.TransmogSet|nil
function row:GetTransmogSetID0() end

---Creates a related 'TransmogSet' row and automatically links 'TransmogSetID0'.
---@param data? table
---@return dbc.row.v1215.TransmogSet
function row:CreateRelated(data) end

---Gets the value of field 'TextureKit'.
---@return integer value
function row:GetTextureKit() end

---Sets the value of field 'TextureKit'.
---@param value integer
---@return dbc.row.v1215.UICovenantPreview self
function row:SetTextureKit(value) end

---Navigates foreign relationship to 'UiTextureKit' via 'TextureKit'.
---@return dbc.row.v1215.UiTextureKit|nil
function row:GetTextureKit() end

---Creates a related 'UiTextureKit' row and automatically links 'TextureKit'.
---@param data? table
---@return dbc.row.v1215.UiTextureKit
function row:CreateRelated(data) end

---Gets the value of field 'MountID'.
---@return integer value
function row:GetMountID() end

---Sets the value of field 'MountID'.
---@param value integer
---@return dbc.row.v1215.UICovenantPreview self
function row:SetMountID(value) end

---Navigates foreign relationship to 'Mount' via 'MountID'.
---@return dbc.row.v1215.Mount|nil
function row:GetMount() end

---Creates a related 'Mount' row and automatically links 'MountID'.
---@param data? table
---@return dbc.row.v1215.Mount
function row:CreateRelated(data) end

---Gets the value of field 'PlayerChoiceResponseID'.
---@return integer value
function row:GetPlayerChoiceResponseID() end

---Sets the value of field 'PlayerChoiceResponseID'.
---@param value integer
---@return dbc.row.v1215.UICovenantPreview self
function row:SetPlayerChoiceResponseID(value) end

---Navigates foreign relationship to 'PlayerChoiceResponse' via 'PlayerChoiceResponseID'.
---@return dbc.row.v1215.PlayerChoiceResponse|nil
function row:GetPlayerChoiceResponse() end

---Creates a related 'PlayerChoiceResponse' row and automatically links 'PlayerChoiceResponseID'.
---@param data? table
---@return dbc.row.v1215.PlayerChoiceResponse
function row:CreateRelated(data) end

---Gets the value of field 'Field_9_0_1_33978_008'.
---@return integer value
function row:GetField_9_0_1_33978_008() end

---Sets the value of field 'Field_9_0_1_33978_008'.
---@param value integer
---@return dbc.row.v1215.UICovenantPreview self
function row:SetField_9_0_1_33978_008(value) end

---Gets the value of field 'Field_9_0_1_34902_009'.
---@return integer value
function row:GetField_9_0_1_34902_009() end

---Sets the value of field 'Field_9_0_1_34902_009'.
---@param value integer
---@return dbc.row.v1215.UICovenantPreview self
function row:SetField_9_0_1_34902_009(value) end

---Gets the value of field 'TransmogSetID1'.
---@return integer value
function row:GetTransmogSetID1() end

---Sets the value of field 'TransmogSetID1'.
---@param value integer
---@return dbc.row.v1215.UICovenantPreview self
function row:SetTransmogSetID1(value) end

---Navigates foreign relationship to 'TransmogSet' via 'TransmogSetID1'.
---@return dbc.row.v1215.TransmogSet|nil
function row:GetTransmogSetID1() end

---Creates a related 'TransmogSet' row and automatically links 'TransmogSetID1'.
---@param data? table
---@return dbc.row.v1215.TransmogSet
function row:CreateRelated(data) end

---Gets the value of field 'TransmogSetID2'.
---@return integer value
function row:GetTransmogSetID2() end

---Sets the value of field 'TransmogSetID2'.
---@param value integer
---@return dbc.row.v1215.UICovenantPreview self
function row:SetTransmogSetID2(value) end

---Navigates foreign relationship to 'TransmogSet' via 'TransmogSetID2'.
---@return dbc.row.v1215.TransmogSet|nil
function row:GetTransmogSetID2() end

---Creates a related 'TransmogSet' row and automatically links 'TransmogSetID2'.
---@param data? table
---@return dbc.row.v1215.TransmogSet
function row:CreateRelated(data) end

---Gets the value of field 'TransmogSetID3'.
---@return integer value
function row:GetTransmogSetID3() end

---Sets the value of field 'TransmogSetID3'.
---@param value integer
---@return dbc.row.v1215.UICovenantPreview self
function row:SetTransmogSetID3(value) end

---Navigates foreign relationship to 'TransmogSet' via 'TransmogSetID3'.
---@return dbc.row.v1215.TransmogSet|nil
function row:GetTransmogSetID3() end

---Creates a related 'TransmogSet' row and automatically links 'TransmogSetID3'.
---@param data? table
---@return dbc.row.v1215.TransmogSet
function row:CreateRelated(data) end

---Gets the value of field 'FeatureTextureID'.
---@return integer value
function row:GetFeatureTextureID() end

---Sets the value of field 'FeatureTextureID'.
---@param value integer
---@return dbc.row.v1215.UICovenantPreview self
function row:SetFeatureTextureID(value) end

---Navigates foreign relationship to 'FileData' via 'FeatureTextureID'.
---@return dbc.row.v1215.FileData|nil
function row:GetFeatureTexture() end

---Creates a related 'FileData' row and automatically links 'FeatureTextureID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Table container for UICovenantPreview (Build 12.1.5.69594).
---@class dbc.Table.v1215.UICovenantPreview : DbcTable
---@field [integer] dbc.row.v1215.UICovenantPreview
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.UICovenantPreview
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.UICovenantPreview|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.UICovenantPreview
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.UICovenantPreview>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.UICovenantPreview[]
function tbl:GetByRelation(foreign_id) end

return {}
