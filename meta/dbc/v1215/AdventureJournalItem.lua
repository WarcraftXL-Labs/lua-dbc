---@meta
-- Generated LuaLS annotations for AdventureJournalItem (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of AdventureJournalItem in build 12.1.5.69594.
---@class dbc.row.v1215.AdventureJournalItem : RowProxy
---@field ID integer
---@field ItemID integer
---@field Field_4_4_0_53627_001 integer
---@field PlayerConditionID integer
---@field Field_4_4_0_53627_003 integer
---@field AdventureJournalID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.AdventureJournalItem self
function row:SetID(value) end

---Gets the value of field 'ItemID'.
---@return integer value
function row:GetItemID() end

---Sets the value of field 'ItemID'.
---@param value integer
---@return dbc.row.v1215.AdventureJournalItem self
function row:SetItemID(value) end

---Navigates foreign relationship to 'Item' via 'ItemID'.
---@return dbc.row.v1215.Item|nil
function row:GetItem() end

---Creates a related 'Item' row and automatically links 'ItemID'.
---@param data? table
---@return dbc.row.v1215.Item
function row:CreateRelated(data) end

---Gets the value of field 'Field_4_4_0_53627_001'.
---@return integer value
function row:GetField_4_4_0_53627_001() end

---Sets the value of field 'Field_4_4_0_53627_001'.
---@param value integer
---@return dbc.row.v1215.AdventureJournalItem self
function row:SetField_4_4_0_53627_001(value) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.AdventureJournalItem self
function row:SetPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'Field_4_4_0_53627_003'.
---@return integer value
function row:GetField_4_4_0_53627_003() end

---Sets the value of field 'Field_4_4_0_53627_003'.
---@param value integer
---@return dbc.row.v1215.AdventureJournalItem self
function row:SetField_4_4_0_53627_003(value) end

---Gets the value of field 'AdventureJournalID'.
---@return integer value
function row:GetAdventureJournalID() end

---Sets the value of field 'AdventureJournalID'.
---@param value integer
---@return dbc.row.v1215.AdventureJournalItem self
function row:SetAdventureJournalID(value) end

---Navigates foreign relationship to 'AdventureJournal' via 'AdventureJournalID'.
---@return dbc.row.v1215.AdventureJournal|nil
function row:GetAdventureJournal() end

---Creates a related 'AdventureJournal' row and automatically links 'AdventureJournalID'.
---@param data? table
---@return dbc.row.v1215.AdventureJournal
function row:CreateRelated(data) end

---Table container for AdventureJournalItem (Build 12.1.5.69594).
---@class dbc.Table.v1215.AdventureJournalItem : DbcTable
---@field [integer] dbc.row.v1215.AdventureJournalItem
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.AdventureJournalItem
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.AdventureJournalItem|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.AdventureJournalItem
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.AdventureJournalItem>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.AdventureJournalItem[]
function tbl:GetByRelation(foreign_id) end

return {}
