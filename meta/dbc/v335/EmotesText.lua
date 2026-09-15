---@meta
-- Generated LuaLS annotations for EmotesText (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of EmotesText in build 3.3.5.12340.
---@class dbc.row.v335.EmotesText : RowProxy
---@field ID integer
---@field Name string
---@field EmoteID integer
---@field EmoteText integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.EmotesText self
function row:SetID(value) end

---Gets the value of field 'Name'.
---@return string value
function row:GetName() end

---Sets the value of field 'Name'.
---@param value string
---@return dbc.row.v335.EmotesText self
function row:SetName(value) end

---Gets the value of field 'EmoteID'.
---@return integer value
function row:GetEmoteID() end

---Sets the value of field 'EmoteID'.
---@param value integer
---@return dbc.row.v335.EmotesText self
function row:SetEmoteID(value) end

---Navigates foreign relationship to 'Emotes' via 'EmoteID'.
---@return dbc.row.v335.Emotes|nil
function row:GetEmote() end

---Creates a related 'Emotes' row and automatically links 'EmoteID'.
---@param data? table
---@return dbc.row.v335.Emotes
function row:CreateRelated(data) end

---Gets the value of field 'EmoteText'.
---@return integer[] value
function row:GetEmoteText() end

---Sets the value of field 'EmoteText'.
---@param value integer[]
---@return dbc.row.v335.EmotesText self
function row:SetEmoteText(value) end

---Gets element at 1-based index in 'EmoteText'.
---@param index integer
---@return integer value
function row:GetEmoteTextItem(index) end

---Navigates foreign relationship to 'EmotesTextData' via 'EmoteText'.
---@return dbc.row.v335.EmotesTextData|nil
function row:GetEmoteText() end

---Creates a related 'EmotesTextData' row and automatically links 'EmoteText'.
---@param data? table
---@return dbc.row.v335.EmotesTextData
function row:CreateRelated(data) end

---Table container for EmotesText (Build 3.3.5.12340).
---@class dbc.Table.v335.EmotesText : DbcTable
---@field [integer] dbc.row.v335.EmotesText
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.EmotesText
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.EmotesText|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.EmotesText
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.EmotesText>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.EmotesText[]
function tbl:GetByRelation(foreign_id) end

return {}
