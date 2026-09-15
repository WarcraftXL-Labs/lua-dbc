---@meta
-- Generated LuaLS annotations for DeclinedWordCases (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of DeclinedWordCases in build 3.3.5.12340.
---@class dbc.row.v335.DeclinedWordCases : RowProxy
---@field ID integer
---@field DeclinedWordID integer
---@field CaseIndex integer
---@field DeclinedWord string

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.DeclinedWordCases self
function row:SetID(value) end

---Gets the value of field 'DeclinedWordID'.
---@return integer value
function row:GetDeclinedWordID() end

---Sets the value of field 'DeclinedWordID'.
---@param value integer
---@return dbc.row.v335.DeclinedWordCases self
function row:SetDeclinedWordID(value) end

---Navigates foreign relationship to 'DeclinedWord' via 'DeclinedWordID'.
---@return dbc.row.v335.DeclinedWord|nil
function row:GetDeclinedWord() end

---Creates a related 'DeclinedWord' row and automatically links 'DeclinedWordID'.
---@param data? table
---@return dbc.row.v335.DeclinedWord
function row:CreateRelated(data) end

---Gets the value of field 'CaseIndex'.
---@return integer value
function row:GetCaseIndex() end

---Sets the value of field 'CaseIndex'.
---@param value integer
---@return dbc.row.v335.DeclinedWordCases self
function row:SetCaseIndex(value) end

---Gets the value of field 'DeclinedWord'.
---@return string value
function row:GetDeclinedWord() end

---Sets the value of field 'DeclinedWord'.
---@param value string
---@return dbc.row.v335.DeclinedWordCases self
function row:SetDeclinedWord(value) end

---Table container for DeclinedWordCases (Build 3.3.5.12340).
---@class dbc.Table.v335.DeclinedWordCases : DbcTable
---@field [integer] dbc.row.v335.DeclinedWordCases
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.DeclinedWordCases
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.DeclinedWordCases|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.DeclinedWordCases
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.DeclinedWordCases>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.DeclinedWordCases[]
function tbl:GetByRelation(foreign_id) end

return {}
