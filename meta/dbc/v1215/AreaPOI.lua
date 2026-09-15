---@meta
-- Generated LuaLS annotations for AreaPOI (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of AreaPOI in build 12.1.5.69594.
---@class dbc.row.v1215.AreaPOI : RowProxy
---@field Name_lang string
---@field Description_lang string
---@field ID integer
---@field Pos number[]
---@field PortLocID integer
---@field PlayerConditionID integer
---@field Field_12_0_5_66529_006 integer Same values as PlayerConditionID in 12.0.5.66529
---@field UiTextureAtlasMemberID integer
---@field Flags integer &0x100000: ShouldGlow
---@field WMOGroupID integer
---@field PoiDataType integer
---@field PoiData integer
---@field Field_9_1_0_38783_011 integer
---@field ContinentID integer
---@field AreaID integer
---@field WorldStateID integer
---@field Field_10_0_0_45141_012 integer
---@field UiWidgetSetID integer
---@field UiTextureKitID integer
---@field Field_9_1_0_38783_017 integer
---@field Importance integer
---@field Icon integer

local row = {}

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.AreaPOI self
function row:SetName_lang(value) end

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v1215.AreaPOI self
function row:SetDescription_lang(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.AreaPOI self
function row:SetID(value) end

---Gets the value of field 'Pos'.
---@return number[] value
function row:GetPos() end

---Sets the value of field 'Pos'.
---@param value number[]
---@return dbc.row.v1215.AreaPOI self
function row:SetPos(value) end

---Gets element at 1-based index in 'Pos'.
---@param index integer
---@return number value
function row:GetPosItem(index) end

---Gets the value of field 'PortLocID'.
---@return integer value
function row:GetPortLocID() end

---Sets the value of field 'PortLocID'.
---@param value integer
---@return dbc.row.v1215.AreaPOI self
function row:SetPortLocID(value) end

---Navigates foreign relationship to 'WorldSafeLocs' via 'PortLocID'.
---@return dbc.row.v1215.WorldSafeLocs|nil
function row:GetPortLoc() end

---Creates a related 'WorldSafeLocs' row and automatically links 'PortLocID'.
---@param data? table
---@return dbc.row.v1215.WorldSafeLocs
function row:CreateRelated(data) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.AreaPOI self
function row:SetPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'Field_12_0_5_66529_006'.
---@return integer value
function row:GetField_12_0_5_66529_006() end

---Sets the value of field 'Field_12_0_5_66529_006'.
---@param value integer
---@return dbc.row.v1215.AreaPOI self
function row:SetField_12_0_5_66529_006(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'Field_12_0_5_66529_006'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetField_12_0_5_66529_006() end

---Creates a related 'PlayerCondition' row and automatically links 'Field_12_0_5_66529_006'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'UiTextureAtlasMemberID'.
---@return integer value
function row:GetUiTextureAtlasMemberID() end

---Sets the value of field 'UiTextureAtlasMemberID'.
---@param value integer
---@return dbc.row.v1215.AreaPOI self
function row:SetUiTextureAtlasMemberID(value) end

---Navigates foreign relationship to 'UiTextureAtlasMember' via 'UiTextureAtlasMemberID'.
---@return dbc.row.v1215.UiTextureAtlasMember|nil
function row:GetUiTextureAtlasMember() end

---Creates a related 'UiTextureAtlasMember' row and automatically links 'UiTextureAtlasMemberID'.
---@param data? table
---@return dbc.row.v1215.UiTextureAtlasMember
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.AreaPOI self
function row:SetFlags(value) end

---Gets the value of field 'WMOGroupID'.
---@return integer value
function row:GetWMOGroupID() end

---Sets the value of field 'WMOGroupID'.
---@param value integer
---@return dbc.row.v1215.AreaPOI self
function row:SetWMOGroupID(value) end

---Navigates foreign relationship to 'WMOGroup' via 'WMOGroupID'.
---@return dbc.row.v1215.WMOGroup|nil
function row:GetWMOGroup() end

---Creates a related 'WMOGroup' row and automatically links 'WMOGroupID'.
---@param data? table
---@return dbc.row.v1215.WMOGroup
function row:CreateRelated(data) end

---Gets the value of field 'PoiDataType'.
---@return integer value
function row:GetPoiDataType() end

---Sets the value of field 'PoiDataType'.
---@param value integer
---@return dbc.row.v1215.AreaPOI self
function row:SetPoiDataType(value) end

---Gets the value of field 'PoiData'.
---@return integer value
function row:GetPoiData() end

---Sets the value of field 'PoiData'.
---@param value integer
---@return dbc.row.v1215.AreaPOI self
function row:SetPoiData(value) end

---Gets the value of field 'Field_9_1_0_38783_011'.
---@return integer value
function row:GetField_9_1_0_38783_011() end

---Sets the value of field 'Field_9_1_0_38783_011'.
---@param value integer
---@return dbc.row.v1215.AreaPOI self
function row:SetField_9_1_0_38783_011(value) end

---Gets the value of field 'ContinentID'.
---@return integer value
function row:GetContinentID() end

---Sets the value of field 'ContinentID'.
---@param value integer
---@return dbc.row.v1215.AreaPOI self
function row:SetContinentID(value) end

---Navigates foreign relationship to 'Map' via 'ContinentID'.
---@return dbc.row.v1215.Map|nil
function row:GetContinent() end

---Creates a related 'Map' row and automatically links 'ContinentID'.
---@param data? table
---@return dbc.row.v1215.Map
function row:CreateRelated(data) end

---Gets the value of field 'AreaID'.
---@return integer value
function row:GetAreaID() end

---Sets the value of field 'AreaID'.
---@param value integer
---@return dbc.row.v1215.AreaPOI self
function row:SetAreaID(value) end

---Navigates foreign relationship to 'AreaTable' via 'AreaID'.
---@return dbc.row.v1215.AreaTable|nil
function row:GetArea() end

---Creates a related 'AreaTable' row and automatically links 'AreaID'.
---@param data? table
---@return dbc.row.v1215.AreaTable
function row:CreateRelated(data) end

---Gets the value of field 'WorldStateID'.
---@return integer value
function row:GetWorldStateID() end

---Sets the value of field 'WorldStateID'.
---@param value integer
---@return dbc.row.v1215.AreaPOI self
function row:SetWorldStateID(value) end

---Navigates foreign relationship to 'WorldState' via 'WorldStateID'.
---@return dbc.row.v1215.WorldState|nil
function row:GetWorldState() end

---Creates a related 'WorldState' row and automatically links 'WorldStateID'.
---@param data? table
---@return dbc.row.v1215.WorldState
function row:CreateRelated(data) end

---Gets the value of field 'Field_10_0_0_45141_012'.
---@return integer value
function row:GetField_10_0_0_45141_012() end

---Sets the value of field 'Field_10_0_0_45141_012'.
---@param value integer
---@return dbc.row.v1215.AreaPOI self
function row:SetField_10_0_0_45141_012(value) end

---Gets the value of field 'UiWidgetSetID'.
---@return integer value
function row:GetUiWidgetSetID() end

---Sets the value of field 'UiWidgetSetID'.
---@param value integer
---@return dbc.row.v1215.AreaPOI self
function row:SetUiWidgetSetID(value) end

---Navigates foreign relationship to 'UiWidgetSet' via 'UiWidgetSetID'.
---@return dbc.row.v1215.UiWidgetSet|nil
function row:GetUiWidgetSet() end

---Creates a related 'UiWidgetSet' row and automatically links 'UiWidgetSetID'.
---@param data? table
---@return dbc.row.v1215.UiWidgetSet
function row:CreateRelated(data) end

---Gets the value of field 'UiTextureKitID'.
---@return integer value
function row:GetUiTextureKitID() end

---Sets the value of field 'UiTextureKitID'.
---@param value integer
---@return dbc.row.v1215.AreaPOI self
function row:SetUiTextureKitID(value) end

---Navigates foreign relationship to 'UiTextureKit' via 'UiTextureKitID'.
---@return dbc.row.v1215.UiTextureKit|nil
function row:GetUiTextureKit() end

---Creates a related 'UiTextureKit' row and automatically links 'UiTextureKitID'.
---@param data? table
---@return dbc.row.v1215.UiTextureKit
function row:CreateRelated(data) end

---Gets the value of field 'Field_9_1_0_38783_017'.
---@return integer value
function row:GetField_9_1_0_38783_017() end

---Sets the value of field 'Field_9_1_0_38783_017'.
---@param value integer
---@return dbc.row.v1215.AreaPOI self
function row:SetField_9_1_0_38783_017(value) end

---Gets the value of field 'Importance'.
---@return integer value
function row:GetImportance() end

---Sets the value of field 'Importance'.
---@param value integer
---@return dbc.row.v1215.AreaPOI self
function row:SetImportance(value) end

---Gets the value of field 'Icon'.
---@return integer value
function row:GetIcon() end

---Sets the value of field 'Icon'.
---@param value integer
---@return dbc.row.v1215.AreaPOI self
function row:SetIcon(value) end

---Table container for AreaPOI (Build 12.1.5.69594).
---@class dbc.Table.v1215.AreaPOI : DbcTable
---@field [integer] dbc.row.v1215.AreaPOI
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.AreaPOI
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.AreaPOI|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.AreaPOI
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.AreaPOI>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.AreaPOI[]
function tbl:GetByRelation(foreign_id) end

return {}
