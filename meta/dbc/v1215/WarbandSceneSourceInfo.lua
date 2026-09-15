---@meta
-- Generated LuaLS annotations for WarbandSceneSourceInfo (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of WarbandSceneSourceInfo in build 12.1.5.69594.
---@class dbc.row.v1215.WarbandSceneSourceInfo : RowProxy
---@field Source_lang string
---@field ID integer
---@field WarbandSceneID integer
---@field SourceType integer

local row = {}

---Gets the value of field 'Source_lang'.
---@return string value
function row:GetSource_lang() end

---Sets the value of field 'Source_lang'.
---@param value string
---@return dbc.row.v1215.WarbandSceneSourceInfo self
function row:SetSource_lang(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.WarbandSceneSourceInfo self
function row:SetID(value) end

---Gets the value of field 'WarbandSceneID'.
---@return integer value
function row:GetWarbandSceneID() end

---Sets the value of field 'WarbandSceneID'.
---@param value integer
---@return dbc.row.v1215.WarbandSceneSourceInfo self
function row:SetWarbandSceneID(value) end

---Navigates foreign relationship to 'WarbandScene' via 'WarbandSceneID'.
---@return dbc.row.v1215.WarbandScene|nil
function row:GetWarbandScene() end

---Creates a related 'WarbandScene' row and automatically links 'WarbandSceneID'.
---@param data? table
---@return dbc.row.v1215.WarbandScene
function row:CreateRelated(data) end

---Gets the value of field 'SourceType'.
---@return integer value
function row:GetSourceType() end

---Sets the value of field 'SourceType'.
---@param value integer
---@return dbc.row.v1215.WarbandSceneSourceInfo self
function row:SetSourceType(value) end

---Table container for WarbandSceneSourceInfo (Build 12.1.5.69594).
---@class dbc.Table.v1215.WarbandSceneSourceInfo : DbcTable
---@field [integer] dbc.row.v1215.WarbandSceneSourceInfo
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.WarbandSceneSourceInfo
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.WarbandSceneSourceInfo|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.WarbandSceneSourceInfo
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.WarbandSceneSourceInfo>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.WarbandSceneSourceInfo[]
function tbl:GetByRelation(foreign_id) end

return {}
