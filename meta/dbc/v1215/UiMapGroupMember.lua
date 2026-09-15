---@meta
-- Generated LuaLS annotations for UiMapGroupMember (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of UiMapGroupMember in build 12.1.5.69594.
---@class dbc.row.v1215.UiMapGroupMember : RowProxy
---@field ID integer
---@field Name_lang string
---@field UiMapGroupID integer
---@field UiMapID integer
---@field FloorIndex integer
---@field RelativeHeightIndex integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.UiMapGroupMember self
function row:SetID(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.UiMapGroupMember self
function row:SetName_lang(value) end

---Gets the value of field 'UiMapGroupID'.
---@return integer value
function row:GetUiMapGroupID() end

---Sets the value of field 'UiMapGroupID'.
---@param value integer
---@return dbc.row.v1215.UiMapGroupMember self
function row:SetUiMapGroupID(value) end

---Navigates foreign relationship to 'UiMapGroup' via 'UiMapGroupID'.
---@return dbc.row.v1215.UiMapGroup|nil
function row:GetUiMapGroup() end

---Creates a related 'UiMapGroup' row and automatically links 'UiMapGroupID'.
---@param data? table
---@return dbc.row.v1215.UiMapGroup
function row:CreateRelated(data) end

---Gets the value of field 'UiMapID'.
---@return integer value
function row:GetUiMapID() end

---Sets the value of field 'UiMapID'.
---@param value integer
---@return dbc.row.v1215.UiMapGroupMember self
function row:SetUiMapID(value) end

---Navigates foreign relationship to 'UiMap' via 'UiMapID'.
---@return dbc.row.v1215.UiMap|nil
function row:GetUiMap() end

---Creates a related 'UiMap' row and automatically links 'UiMapID'.
---@param data? table
---@return dbc.row.v1215.UiMap
function row:CreateRelated(data) end

---Gets the value of field 'FloorIndex'.
---@return integer value
function row:GetFloorIndex() end

---Sets the value of field 'FloorIndex'.
---@param value integer
---@return dbc.row.v1215.UiMapGroupMember self
function row:SetFloorIndex(value) end

---Gets the value of field 'RelativeHeightIndex'.
---@return integer value
function row:GetRelativeHeightIndex() end

---Sets the value of field 'RelativeHeightIndex'.
---@param value integer
---@return dbc.row.v1215.UiMapGroupMember self
function row:SetRelativeHeightIndex(value) end

---Table container for UiMapGroupMember (Build 12.1.5.69594).
---@class dbc.Table.v1215.UiMapGroupMember : DbcTable
---@field [integer] dbc.row.v1215.UiMapGroupMember
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.UiMapGroupMember
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.UiMapGroupMember|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.UiMapGroupMember
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.UiMapGroupMember>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.UiMapGroupMember[]
function tbl:GetByRelation(foreign_id) end

return {}
