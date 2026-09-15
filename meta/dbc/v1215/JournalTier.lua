---@meta
-- Generated LuaLS annotations for JournalTier (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of JournalTier in build 12.1.5.69594.
---@class dbc.row.v1215.JournalTier : RowProxy
---@field ID integer
---@field Name_lang string
---@field Expansion integer expansion indentifier
---@field PlayerConditionID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.JournalTier self
function row:SetID(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.JournalTier self
function row:SetName_lang(value) end

---Gets the value of field 'Expansion'.
---@return integer value
function row:GetExpansion() end

---Sets the value of field 'Expansion'.
---@param value integer
---@return dbc.row.v1215.JournalTier self
function row:SetExpansion(value) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.JournalTier self
function row:SetPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Table container for JournalTier (Build 12.1.5.69594).
---@class dbc.Table.v1215.JournalTier : DbcTable
---@field [integer] dbc.row.v1215.JournalTier
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.JournalTier
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.JournalTier|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.JournalTier
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.JournalTier>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.JournalTier[]
function tbl:GetByRelation(foreign_id) end

return {}
