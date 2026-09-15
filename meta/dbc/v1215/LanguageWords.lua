---@meta
-- Generated LuaLS annotations for LanguageWords (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of LanguageWords in build 12.1.5.69594.
---@class dbc.row.v1215.LanguageWords : RowProxy
---@field ID integer
---@field Word string
---@field LanguageID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.LanguageWords self
function row:SetID(value) end

---Gets the value of field 'Word'.
---@return string value
function row:GetWord() end

---Sets the value of field 'Word'.
---@param value string
---@return dbc.row.v1215.LanguageWords self
function row:SetWord(value) end

---Gets the value of field 'LanguageID'.
---@return integer value
function row:GetLanguageID() end

---Sets the value of field 'LanguageID'.
---@param value integer
---@return dbc.row.v1215.LanguageWords self
function row:SetLanguageID(value) end

---Navigates foreign relationship to 'Languages' via 'LanguageID'.
---@return dbc.row.v1215.Languages|nil
function row:GetLanguage() end

---Creates a related 'Languages' row and automatically links 'LanguageID'.
---@param data? table
---@return dbc.row.v1215.Languages
function row:CreateRelated(data) end

---Table container for LanguageWords (Build 12.1.5.69594).
---@class dbc.Table.v1215.LanguageWords : DbcTable
---@field [integer] dbc.row.v1215.LanguageWords
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.LanguageWords
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.LanguageWords|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.LanguageWords
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.LanguageWords>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.LanguageWords[]
function tbl:GetByRelation(foreign_id) end

return {}
