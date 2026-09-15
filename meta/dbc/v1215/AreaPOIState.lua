---@meta
-- Generated LuaLS annotations for AreaPOIState (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of AreaPOIState in build 12.1.5.69594.
---@class dbc.row.v1215.AreaPOIState : RowProxy
---@field ID integer
---@field Description_lang string
---@field WorldStateValue integer
---@field IconEnumValue integer
---@field UiTextureAtlasMemberID integer
---@field AreaPoiID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.AreaPOIState self
function row:SetID(value) end

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v1215.AreaPOIState self
function row:SetDescription_lang(value) end

---Gets the value of field 'WorldStateValue'.
---@return integer value
function row:GetWorldStateValue() end

---Sets the value of field 'WorldStateValue'.
---@param value integer
---@return dbc.row.v1215.AreaPOIState self
function row:SetWorldStateValue(value) end

---Gets the value of field 'IconEnumValue'.
---@return integer value
function row:GetIconEnumValue() end

---Sets the value of field 'IconEnumValue'.
---@param value integer
---@return dbc.row.v1215.AreaPOIState self
function row:SetIconEnumValue(value) end

---Gets the value of field 'UiTextureAtlasMemberID'.
---@return integer value
function row:GetUiTextureAtlasMemberID() end

---Sets the value of field 'UiTextureAtlasMemberID'.
---@param value integer
---@return dbc.row.v1215.AreaPOIState self
function row:SetUiTextureAtlasMemberID(value) end

---Navigates foreign relationship to 'UiTextureAtlasMember' via 'UiTextureAtlasMemberID'.
---@return dbc.row.v1215.UiTextureAtlasMember|nil
function row:GetUiTextureAtlasMember() end

---Creates a related 'UiTextureAtlasMember' row and automatically links 'UiTextureAtlasMemberID'.
---@param data? table
---@return dbc.row.v1215.UiTextureAtlasMember
function row:CreateRelated(data) end

---Gets the value of field 'AreaPoiID'.
---@return integer value
function row:GetAreaPoiID() end

---Sets the value of field 'AreaPoiID'.
---@param value integer
---@return dbc.row.v1215.AreaPOIState self
function row:SetAreaPoiID(value) end

---Navigates foreign relationship to 'AreaPOI' via 'AreaPoiID'.
---@return dbc.row.v1215.AreaPOI|nil
function row:GetAreaPoi() end

---Creates a related 'AreaPOI' row and automatically links 'AreaPoiID'.
---@param data? table
---@return dbc.row.v1215.AreaPOI
function row:CreateRelated(data) end

---Table container for AreaPOIState (Build 12.1.5.69594).
---@class dbc.Table.v1215.AreaPOIState : DbcTable
---@field [integer] dbc.row.v1215.AreaPOIState
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.AreaPOIState
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.AreaPOIState|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.AreaPOIState
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.AreaPOIState>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.AreaPOIState[]
function tbl:GetByRelation(foreign_id) end

return {}
