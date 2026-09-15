---@meta
-- Generated LuaLS annotations for JournalTierXInstance (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of JournalTierXInstance in build 12.1.5.69594.
---@class dbc.row.v1215.JournalTierXInstance : RowProxy
---@field ID integer
---@field JournalTierID integer
---@field JournalInstanceID integer
---@field OrderIndex integer
---@field AvailabilityCondition integer Used for M+ season switchovers

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.JournalTierXInstance self
function row:SetID(value) end

---Gets the value of field 'JournalTierID'.
---@return integer value
function row:GetJournalTierID() end

---Sets the value of field 'JournalTierID'.
---@param value integer
---@return dbc.row.v1215.JournalTierXInstance self
function row:SetJournalTierID(value) end

---Navigates foreign relationship to 'JournalTier' via 'JournalTierID'.
---@return dbc.row.v1215.JournalTier|nil
function row:GetJournalTier() end

---Creates a related 'JournalTier' row and automatically links 'JournalTierID'.
---@param data? table
---@return dbc.row.v1215.JournalTier
function row:CreateRelated(data) end

---Gets the value of field 'JournalInstanceID'.
---@return integer value
function row:GetJournalInstanceID() end

---Sets the value of field 'JournalInstanceID'.
---@param value integer
---@return dbc.row.v1215.JournalTierXInstance self
function row:SetJournalInstanceID(value) end

---Navigates foreign relationship to 'JournalInstance' via 'JournalInstanceID'.
---@return dbc.row.v1215.JournalInstance|nil
function row:GetJournalInstance() end

---Creates a related 'JournalInstance' row and automatically links 'JournalInstanceID'.
---@param data? table
---@return dbc.row.v1215.JournalInstance
function row:CreateRelated(data) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.JournalTierXInstance self
function row:SetOrderIndex(value) end

---Gets the value of field 'AvailabilityCondition'.
---@return integer value
function row:GetAvailabilityCondition() end

---Sets the value of field 'AvailabilityCondition'.
---@param value integer
---@return dbc.row.v1215.JournalTierXInstance self
function row:SetAvailabilityCondition(value) end

---Table container for JournalTierXInstance (Build 12.1.5.69594).
---@class dbc.Table.v1215.JournalTierXInstance : DbcTable
---@field [integer] dbc.row.v1215.JournalTierXInstance
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.JournalTierXInstance
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.JournalTierXInstance|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.JournalTierXInstance
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.JournalTierXInstance>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.JournalTierXInstance[]
function tbl:GetByRelation(foreign_id) end

return {}
