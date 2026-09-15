---@meta
-- Generated LuaLS annotations for EmotesTextData (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of EmotesTextData in build 12.1.5.69594.
---@class dbc.row.v1215.EmotesTextData : RowProxy
---@field ID integer
---@field Text_lang string
---@field RelationshipFlags integer
---@field EmotesTextID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.EmotesTextData self
function row:SetID(value) end

---Gets the value of field 'Text_lang'.
---@return string value
function row:GetText_lang() end

---Sets the value of field 'Text_lang'.
---@param value string
---@return dbc.row.v1215.EmotesTextData self
function row:SetText_lang(value) end

---Gets the value of field 'RelationshipFlags'.
---@return integer value
function row:GetRelationshipFlags() end

---Sets the value of field 'RelationshipFlags'.
---@param value integer
---@return dbc.row.v1215.EmotesTextData self
function row:SetRelationshipFlags(value) end

---Gets the value of field 'EmotesTextID'.
---@return integer value
function row:GetEmotesTextID() end

---Sets the value of field 'EmotesTextID'.
---@param value integer
---@return dbc.row.v1215.EmotesTextData self
function row:SetEmotesTextID(value) end

---Navigates foreign relationship to 'EmotesText' via 'EmotesTextID'.
---@return dbc.row.v1215.EmotesText|nil
function row:GetEmotesText() end

---Creates a related 'EmotesText' row and automatically links 'EmotesTextID'.
---@param data? table
---@return dbc.row.v1215.EmotesText
function row:CreateRelated(data) end

---Table container for EmotesTextData (Build 12.1.5.69594).
---@class dbc.Table.v1215.EmotesTextData : DbcTable
---@field [integer] dbc.row.v1215.EmotesTextData
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.EmotesTextData
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.EmotesTextData|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.EmotesTextData
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.EmotesTextData>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.EmotesTextData[]
function tbl:GetByRelation(foreign_id) end

return {}
