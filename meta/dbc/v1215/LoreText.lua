---@meta
-- Generated LuaLS annotations for LoreText (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of LoreText in build 12.1.5.69594.
---@class dbc.row.v1215.LoreText : RowProxy
---@field ID integer
---@field Text_lang string
---@field Title_lang string
---@field ConditionID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.LoreText self
function row:SetID(value) end

---Gets the value of field 'Text_lang'.
---@return string value
function row:GetText_lang() end

---Sets the value of field 'Text_lang'.
---@param value string
---@return dbc.row.v1215.LoreText self
function row:SetText_lang(value) end

---Gets the value of field 'Title_lang'.
---@return string value
function row:GetTitle_lang() end

---Sets the value of field 'Title_lang'.
---@param value string
---@return dbc.row.v1215.LoreText self
function row:SetTitle_lang(value) end

---Gets the value of field 'ConditionID'.
---@return integer value
function row:GetConditionID() end

---Sets the value of field 'ConditionID'.
---@param value integer
---@return dbc.row.v1215.LoreText self
function row:SetConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'ConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'ConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Table container for LoreText (Build 12.1.5.69594).
---@class dbc.Table.v1215.LoreText : DbcTable
---@field [integer] dbc.row.v1215.LoreText
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.LoreText
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.LoreText|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.LoreText
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.LoreText>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.LoreText[]
function tbl:GetByRelation(foreign_id) end

return {}
