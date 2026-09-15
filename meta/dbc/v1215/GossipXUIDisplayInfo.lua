---@meta
-- Generated LuaLS annotations for GossipXUIDisplayInfo (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GossipXUIDisplayInfo in build 12.1.5.69594.
---@class dbc.row.v1215.GossipXUIDisplayInfo : RowProxy
---@field CustomGossipDescriptionString_lang string
---@field CompletedOptionDescriptionString_lang string
---@field ID integer
---@field GossipMenuID integer but probably not GossipMenuID
---@field UiTextureKitID integer

local row = {}

---Gets the value of field 'CustomGossipDescriptionString_lang'.
---@return string value
function row:GetCustomGossipDescriptionString_lang() end

---Sets the value of field 'CustomGossipDescriptionString_lang'.
---@param value string
---@return dbc.row.v1215.GossipXUIDisplayInfo self
function row:SetCustomGossipDescriptionString_lang(value) end

---Gets the value of field 'CompletedOptionDescriptionString_lang'.
---@return string value
function row:GetCompletedOptionDescriptionString_lang() end

---Sets the value of field 'CompletedOptionDescriptionString_lang'.
---@param value string
---@return dbc.row.v1215.GossipXUIDisplayInfo self
function row:SetCompletedOptionDescriptionString_lang(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GossipXUIDisplayInfo self
function row:SetID(value) end

---Gets the value of field 'GossipMenuID'.
---@return integer value
function row:GetGossipMenuID() end

---Sets the value of field 'GossipMenuID'.
---@param value integer
---@return dbc.row.v1215.GossipXUIDisplayInfo self
function row:SetGossipMenuID(value) end

---Navigates foreign relationship to 'GossipMenu' via 'GossipMenuID'.
---@return dbc.row.v1215.GossipMenu|nil
function row:GetGossipMenu() end

---Creates a related 'GossipMenu' row and automatically links 'GossipMenuID'.
---@param data? table
---@return dbc.row.v1215.GossipMenu
function row:CreateRelated(data) end

---Gets the value of field 'UiTextureKitID'.
---@return integer value
function row:GetUiTextureKitID() end

---Sets the value of field 'UiTextureKitID'.
---@param value integer
---@return dbc.row.v1215.GossipXUIDisplayInfo self
function row:SetUiTextureKitID(value) end

---Navigates foreign relationship to 'UiTextureKit' via 'UiTextureKitID'.
---@return dbc.row.v1215.UiTextureKit|nil
function row:GetUiTextureKit() end

---Creates a related 'UiTextureKit' row and automatically links 'UiTextureKitID'.
---@param data? table
---@return dbc.row.v1215.UiTextureKit
function row:CreateRelated(data) end

---Table container for GossipXUIDisplayInfo (Build 12.1.5.69594).
---@class dbc.Table.v1215.GossipXUIDisplayInfo : DbcTable
---@field [integer] dbc.row.v1215.GossipXUIDisplayInfo
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GossipXUIDisplayInfo
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GossipXUIDisplayInfo|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GossipXUIDisplayInfo
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GossipXUIDisplayInfo>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GossipXUIDisplayInfo[]
function tbl:GetByRelation(foreign_id) end

return {}
