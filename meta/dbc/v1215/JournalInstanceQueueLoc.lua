---@meta
-- Generated LuaLS annotations for JournalInstanceQueueLoc (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of JournalInstanceQueueLoc in build 12.1.5.69594.
---@class dbc.row.v1215.JournalInstanceQueueLoc : RowProxy
---@field ID integer
---@field Position number[]
---@field MapID integer
---@field Field_10_1_5_50006_002 integer
---@field Field_10_1_5_50006_003 integer
---@field Field_10_1_5_50006_004 integer
---@field JournalInstanceID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.JournalInstanceQueueLoc self
function row:SetID(value) end

---Gets the value of field 'Position'.
---@return number[] value
function row:GetPosition() end

---Sets the value of field 'Position'.
---@param value number[]
---@return dbc.row.v1215.JournalInstanceQueueLoc self
function row:SetPosition(value) end

---Gets element at 1-based index in 'Position'.
---@param index integer
---@return number value
function row:GetPositionItem(index) end

---Gets the value of field 'MapID'.
---@return integer value
function row:GetMapID() end

---Sets the value of field 'MapID'.
---@param value integer
---@return dbc.row.v1215.JournalInstanceQueueLoc self
function row:SetMapID(value) end

---Navigates foreign relationship to 'Map' via 'MapID'.
---@return dbc.row.v1215.Map|nil
function row:GetMap() end

---Creates a related 'Map' row and automatically links 'MapID'.
---@param data? table
---@return dbc.row.v1215.Map
function row:CreateRelated(data) end

---Gets the value of field 'Field_10_1_5_50006_002'.
---@return integer value
function row:GetField_10_1_5_50006_002() end

---Sets the value of field 'Field_10_1_5_50006_002'.
---@param value integer
---@return dbc.row.v1215.JournalInstanceQueueLoc self
function row:SetField_10_1_5_50006_002(value) end

---Gets the value of field 'Field_10_1_5_50006_003'.
---@return integer value
function row:GetField_10_1_5_50006_003() end

---Sets the value of field 'Field_10_1_5_50006_003'.
---@param value integer
---@return dbc.row.v1215.JournalInstanceQueueLoc self
function row:SetField_10_1_5_50006_003(value) end

---Gets the value of field 'Field_10_1_5_50006_004'.
---@return integer value
function row:GetField_10_1_5_50006_004() end

---Sets the value of field 'Field_10_1_5_50006_004'.
---@param value integer
---@return dbc.row.v1215.JournalInstanceQueueLoc self
function row:SetField_10_1_5_50006_004(value) end

---Gets the value of field 'JournalInstanceID'.
---@return integer value
function row:GetJournalInstanceID() end

---Sets the value of field 'JournalInstanceID'.
---@param value integer
---@return dbc.row.v1215.JournalInstanceQueueLoc self
function row:SetJournalInstanceID(value) end

---Navigates foreign relationship to 'JournalInstance' via 'JournalInstanceID'.
---@return dbc.row.v1215.JournalInstance|nil
function row:GetJournalInstance() end

---Creates a related 'JournalInstance' row and automatically links 'JournalInstanceID'.
---@param data? table
---@return dbc.row.v1215.JournalInstance
function row:CreateRelated(data) end

---Table container for JournalInstanceQueueLoc (Build 12.1.5.69594).
---@class dbc.Table.v1215.JournalInstanceQueueLoc : DbcTable
---@field [integer] dbc.row.v1215.JournalInstanceQueueLoc
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.JournalInstanceQueueLoc
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.JournalInstanceQueueLoc|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.JournalInstanceQueueLoc
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.JournalInstanceQueueLoc>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.JournalInstanceQueueLoc[]
function tbl:GetByRelation(foreign_id) end

return {}
