---@meta
-- Generated LuaLS annotations for ResearchSite (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ResearchSite in build 12.1.5.69594.
---@class dbc.row.v1215.ResearchSite : RowProxy
---@field ID integer
---@field Name_lang string
---@field MapID integer
---@field QuestPOIBlobID integer
---@field AreaPOIIconEnum integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ResearchSite self
function row:SetID(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.ResearchSite self
function row:SetName_lang(value) end

---Gets the value of field 'MapID'.
---@return integer value
function row:GetMapID() end

---Sets the value of field 'MapID'.
---@param value integer
---@return dbc.row.v1215.ResearchSite self
function row:SetMapID(value) end

---Navigates foreign relationship to 'Map' via 'MapID'.
---@return dbc.row.v1215.Map|nil
function row:GetMap() end

---Creates a related 'Map' row and automatically links 'MapID'.
---@param data? table
---@return dbc.row.v1215.Map
function row:CreateRelated(data) end

---Gets the value of field 'QuestPOIBlobID'.
---@return integer value
function row:GetQuestPOIBlobID() end

---Sets the value of field 'QuestPOIBlobID'.
---@param value integer
---@return dbc.row.v1215.ResearchSite self
function row:SetQuestPOIBlobID(value) end

---Navigates foreign relationship to 'QuestPOIBlob' via 'QuestPOIBlobID'.
---@return dbc.row.v1215.QuestPOIBlob|nil
function row:GetQuestPOIBlob() end

---Creates a related 'QuestPOIBlob' row and automatically links 'QuestPOIBlobID'.
---@param data? table
---@return dbc.row.v1215.QuestPOIBlob
function row:CreateRelated(data) end

---Gets the value of field 'AreaPOIIconEnum'.
---@return integer value
function row:GetAreaPOIIconEnum() end

---Sets the value of field 'AreaPOIIconEnum'.
---@param value integer
---@return dbc.row.v1215.ResearchSite self
function row:SetAreaPOIIconEnum(value) end

---Table container for ResearchSite (Build 12.1.5.69594).
---@class dbc.Table.v1215.ResearchSite : DbcTable
---@field [integer] dbc.row.v1215.ResearchSite
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ResearchSite
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ResearchSite|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ResearchSite
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ResearchSite>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ResearchSite[]
function tbl:GetByRelation(foreign_id) end

return {}
