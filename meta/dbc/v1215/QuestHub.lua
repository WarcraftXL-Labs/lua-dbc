---@meta
-- Generated LuaLS annotations for QuestHub (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of QuestHub in build 12.1.5.69594.
---@class dbc.row.v1215.QuestHub : RowProxy
---@field ID integer
---@field QuestID integer
---@field AreaPoiID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.QuestHub self
function row:SetID(value) end

---Gets the value of field 'QuestID'.
---@return integer value
function row:GetQuestID() end

---Sets the value of field 'QuestID'.
---@param value integer
---@return dbc.row.v1215.QuestHub self
function row:SetQuestID(value) end

---Navigates foreign relationship to 'QuestV2' via 'QuestID'.
---@return dbc.row.v1215.QuestV2|nil
function row:GetQuest() end

---Creates a related 'QuestV2' row and automatically links 'QuestID'.
---@param data? table
---@return dbc.row.v1215.QuestV2
function row:CreateRelated(data) end

---Gets the value of field 'AreaPoiID'.
---@return integer value
function row:GetAreaPoiID() end

---Sets the value of field 'AreaPoiID'.
---@param value integer
---@return dbc.row.v1215.QuestHub self
function row:SetAreaPoiID(value) end

---Navigates foreign relationship to 'AreaPOI' via 'AreaPoiID'.
---@return dbc.row.v1215.AreaPOI|nil
function row:GetAreaPoi() end

---Creates a related 'AreaPOI' row and automatically links 'AreaPoiID'.
---@param data? table
---@return dbc.row.v1215.AreaPOI
function row:CreateRelated(data) end

---Table container for QuestHub (Build 12.1.5.69594).
---@class dbc.Table.v1215.QuestHub : DbcTable
---@field [integer] dbc.row.v1215.QuestHub
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.QuestHub
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.QuestHub|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.QuestHub
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.QuestHub>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.QuestHub[]
function tbl:GetByRelation(foreign_id) end

return {}
