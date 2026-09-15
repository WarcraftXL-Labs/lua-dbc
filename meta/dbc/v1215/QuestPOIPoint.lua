---@meta
-- Generated LuaLS annotations for QuestPOIPoint (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of QuestPOIPoint in build 12.1.5.69594.
---@class dbc.row.v1215.QuestPOIPoint : RowProxy
---@field ID integer
---@field X integer
---@field Y integer
---@field Z integer
---@field QuestPOIBlobID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.QuestPOIPoint self
function row:SetID(value) end

---Gets the value of field 'X'.
---@return integer value
function row:GetX() end

---Sets the value of field 'X'.
---@param value integer
---@return dbc.row.v1215.QuestPOIPoint self
function row:SetX(value) end

---Gets the value of field 'Y'.
---@return integer value
function row:GetY() end

---Sets the value of field 'Y'.
---@param value integer
---@return dbc.row.v1215.QuestPOIPoint self
function row:SetY(value) end

---Gets the value of field 'Z'.
---@return integer value
function row:GetZ() end

---Sets the value of field 'Z'.
---@param value integer
---@return dbc.row.v1215.QuestPOIPoint self
function row:SetZ(value) end

---Gets the value of field 'QuestPOIBlobID'.
---@return integer value
function row:GetQuestPOIBlobID() end

---Sets the value of field 'QuestPOIBlobID'.
---@param value integer
---@return dbc.row.v1215.QuestPOIPoint self
function row:SetQuestPOIBlobID(value) end

---Navigates foreign relationship to 'QuestPOIBlob' via 'QuestPOIBlobID'.
---@return dbc.row.v1215.QuestPOIBlob|nil
function row:GetQuestPOIBlob() end

---Creates a related 'QuestPOIBlob' row and automatically links 'QuestPOIBlobID'.
---@param data? table
---@return dbc.row.v1215.QuestPOIBlob
function row:CreateRelated(data) end

---Table container for QuestPOIPoint (Build 12.1.5.69594).
---@class dbc.Table.v1215.QuestPOIPoint : DbcTable
---@field [integer] dbc.row.v1215.QuestPOIPoint
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.QuestPOIPoint
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.QuestPOIPoint|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.QuestPOIPoint
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.QuestPOIPoint>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.QuestPOIPoint[]
function tbl:GetByRelation(foreign_id) end

return {}
