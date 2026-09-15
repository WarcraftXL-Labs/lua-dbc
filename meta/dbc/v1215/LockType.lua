---@meta
-- Generated LuaLS annotations for LockType (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of LockType in build 12.1.5.69594.
---@class dbc.row.v1215.LockType : RowProxy
---@field ID integer
---@field Name_lang string
---@field ResourceName_lang string
---@field Verb_lang string
---@field CursorName string
---@field EnumID integer Something in player struct with 64 slots. 6.0.1.18179
---@field TrackingIcon integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.LockType self
function row:SetID(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.LockType self
function row:SetName_lang(value) end

---Gets the value of field 'ResourceName_lang'.
---@return string value
function row:GetResourceName_lang() end

---Sets the value of field 'ResourceName_lang'.
---@param value string
---@return dbc.row.v1215.LockType self
function row:SetResourceName_lang(value) end

---Gets the value of field 'Verb_lang'.
---@return string value
function row:GetVerb_lang() end

---Sets the value of field 'Verb_lang'.
---@param value string
---@return dbc.row.v1215.LockType self
function row:SetVerb_lang(value) end

---Gets the value of field 'CursorName'.
---@return string value
function row:GetCursorName() end

---Sets the value of field 'CursorName'.
---@param value string
---@return dbc.row.v1215.LockType self
function row:SetCursorName(value) end

---Gets the value of field 'EnumID'.
---@return integer value
function row:GetEnumID() end

---Sets the value of field 'EnumID'.
---@param value integer
---@return dbc.row.v1215.LockType self
function row:SetEnumID(value) end

---Navigates foreign relationship to 'Enum' via 'EnumID'.
---@return dbc.row.v1215.Enum|nil
function row:GetEnum() end

---Creates a related 'Enum' row and automatically links 'EnumID'.
---@param data? table
---@return dbc.row.v1215.Enum
function row:CreateRelated(data) end

---Gets the value of field 'TrackingIcon'.
---@return integer value
function row:GetTrackingIcon() end

---Sets the value of field 'TrackingIcon'.
---@param value integer
---@return dbc.row.v1215.LockType self
function row:SetTrackingIcon(value) end

---Navigates foreign relationship to 'UiTextureAtlasMember' via 'TrackingIcon'.
---@return dbc.row.v1215.UiTextureAtlasMember|nil
function row:GetTrackingIcon() end

---Creates a related 'UiTextureAtlasMember' row and automatically links 'TrackingIcon'.
---@param data? table
---@return dbc.row.v1215.UiTextureAtlasMember
function row:CreateRelated(data) end

---Table container for LockType (Build 12.1.5.69594).
---@class dbc.Table.v1215.LockType : DbcTable
---@field [integer] dbc.row.v1215.LockType
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.LockType
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.LockType|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.LockType
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.LockType>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.LockType[]
function tbl:GetByRelation(foreign_id) end

return {}
