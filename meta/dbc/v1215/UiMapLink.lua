---@meta
-- Generated LuaLS annotations for UiMapLink (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of UiMapLink in build 12.1.5.69594.
---@class dbc.row.v1215.UiMapLink : RowProxy
---@field UiMin number[]
---@field UiMax number[]
---@field ID integer
---@field ParentUiMapID integer
---@field OrderIndex integer
---@field ChildUiMapID integer
---@field PlayerConditionID integer
---@field OverrideHighlightFdID integer
---@field OverrideHighlightAtlasID integer
---@field Flags integer &0x1: force continuing to parent regardless of coords

local row = {}

---Gets the value of field 'UiMin'.
---@return number[] value
function row:GetUiMin() end

---Sets the value of field 'UiMin'.
---@param value number[]
---@return dbc.row.v1215.UiMapLink self
function row:SetUiMin(value) end

---Gets element at 1-based index in 'UiMin'.
---@param index integer
---@return number value
function row:GetUiMinItem(index) end

---Gets the value of field 'UiMax'.
---@return number[] value
function row:GetUiMax() end

---Sets the value of field 'UiMax'.
---@param value number[]
---@return dbc.row.v1215.UiMapLink self
function row:SetUiMax(value) end

---Gets element at 1-based index in 'UiMax'.
---@param index integer
---@return number value
function row:GetUiMaxItem(index) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.UiMapLink self
function row:SetID(value) end

---Gets the value of field 'ParentUiMapID'.
---@return integer value
function row:GetParentUiMapID() end

---Sets the value of field 'ParentUiMapID'.
---@param value integer
---@return dbc.row.v1215.UiMapLink self
function row:SetParentUiMapID(value) end

---Navigates foreign relationship to 'UiMap' via 'ParentUiMapID'.
---@return dbc.row.v1215.UiMap|nil
function row:GetParentUiMap() end

---Creates a related 'UiMap' row and automatically links 'ParentUiMapID'.
---@param data? table
---@return dbc.row.v1215.UiMap
function row:CreateRelated(data) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.UiMapLink self
function row:SetOrderIndex(value) end

---Gets the value of field 'ChildUiMapID'.
---@return integer value
function row:GetChildUiMapID() end

---Sets the value of field 'ChildUiMapID'.
---@param value integer
---@return dbc.row.v1215.UiMapLink self
function row:SetChildUiMapID(value) end

---Navigates foreign relationship to 'UiMap' via 'ChildUiMapID'.
---@return dbc.row.v1215.UiMap|nil
function row:GetChildUiMap() end

---Creates a related 'UiMap' row and automatically links 'ChildUiMapID'.
---@param data? table
---@return dbc.row.v1215.UiMap
function row:CreateRelated(data) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.UiMapLink self
function row:SetPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'OverrideHighlightFdID'.
---@return integer value
function row:GetOverrideHighlightFdID() end

---Sets the value of field 'OverrideHighlightFdID'.
---@param value integer
---@return dbc.row.v1215.UiMapLink self
function row:SetOverrideHighlightFdID(value) end

---Navigates foreign relationship to 'FileData' via 'OverrideHighlightFdID'.
---@return dbc.row.v1215.FileData|nil
function row:GetOverrideHighlightFd() end

---Creates a related 'FileData' row and automatically links 'OverrideHighlightFdID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'OverrideHighlightAtlasID'.
---@return integer value
function row:GetOverrideHighlightAtlasID() end

---Sets the value of field 'OverrideHighlightAtlasID'.
---@param value integer
---@return dbc.row.v1215.UiMapLink self
function row:SetOverrideHighlightAtlasID(value) end

---Navigates foreign relationship to 'UiTextureAtlasMember' via 'OverrideHighlightAtlasID'.
---@return dbc.row.v1215.UiTextureAtlasMember|nil
function row:GetOverrideHighlightAtlas() end

---Creates a related 'UiTextureAtlasMember' row and automatically links 'OverrideHighlightAtlasID'.
---@param data? table
---@return dbc.row.v1215.UiTextureAtlasMember
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.UiMapLink self
function row:SetFlags(value) end

---Table container for UiMapLink (Build 12.1.5.69594).
---@class dbc.Table.v1215.UiMapLink : DbcTable
---@field [integer] dbc.row.v1215.UiMapLink
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.UiMapLink
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.UiMapLink|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.UiMapLink
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.UiMapLink>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.UiMapLink[]
function tbl:GetByRelation(foreign_id) end

return {}
