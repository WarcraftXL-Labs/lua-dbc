---@meta
-- Generated LuaLS annotations for ActionBarGroupEntry (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ActionBarGroupEntry in build 12.1.5.69594.
---@class dbc.row.v1215.ActionBarGroupEntry : RowProxy
---@field ID integer
---@field Type integer 0 = InventorySlotID, 1 = SpellID
---@field Action integer Depending on Type: 0: ???, 1: Spell::ID
---@field SlotID integer
---@field ActionBar integer
---@field ActionBarGroupID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ActionBarGroupEntry self
function row:SetID(value) end

---Gets the value of field 'Type'.
---@return integer value
function row:GetType() end

---Sets the value of field 'Type'.
---@param value integer
---@return dbc.row.v1215.ActionBarGroupEntry self
function row:SetType(value) end

---Gets the value of field 'Action'.
---@return integer value
function row:GetAction() end

---Sets the value of field 'Action'.
---@param value integer
---@return dbc.row.v1215.ActionBarGroupEntry self
function row:SetAction(value) end

---Gets the value of field 'SlotID'.
---@return integer value
function row:GetSlotID() end

---Sets the value of field 'SlotID'.
---@param value integer
---@return dbc.row.v1215.ActionBarGroupEntry self
function row:SetSlotID(value) end

---Navigates foreign relationship to 'Slot' via 'SlotID'.
---@return dbc.row.v1215.Slot|nil
function row:GetSlot() end

---Creates a related 'Slot' row and automatically links 'SlotID'.
---@param data? table
---@return dbc.row.v1215.Slot
function row:CreateRelated(data) end

---Gets the value of field 'ActionBar'.
---@return integer value
function row:GetActionBar() end

---Sets the value of field 'ActionBar'.
---@param value integer
---@return dbc.row.v1215.ActionBarGroupEntry self
function row:SetActionBar(value) end

---Gets the value of field 'ActionBarGroupID'.
---@return integer value
function row:GetActionBarGroupID() end

---Sets the value of field 'ActionBarGroupID'.
---@param value integer
---@return dbc.row.v1215.ActionBarGroupEntry self
function row:SetActionBarGroupID(value) end

---Navigates foreign relationship to 'ActionBarGroup' via 'ActionBarGroupID'.
---@return dbc.row.v1215.ActionBarGroup|nil
function row:GetActionBarGroup() end

---Creates a related 'ActionBarGroup' row and automatically links 'ActionBarGroupID'.
---@param data? table
---@return dbc.row.v1215.ActionBarGroup
function row:CreateRelated(data) end

---Table container for ActionBarGroupEntry (Build 12.1.5.69594).
---@class dbc.Table.v1215.ActionBarGroupEntry : DbcTable
---@field [integer] dbc.row.v1215.ActionBarGroupEntry
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ActionBarGroupEntry
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ActionBarGroupEntry|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ActionBarGroupEntry
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ActionBarGroupEntry>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ActionBarGroupEntry[]
function tbl:GetByRelation(foreign_id) end

return {}
