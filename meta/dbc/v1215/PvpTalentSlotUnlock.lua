---@meta
-- Generated LuaLS annotations for PvpTalentSlotUnlock (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of PvpTalentSlotUnlock in build 12.1.5.69594.
---@class dbc.row.v1215.PvpTalentSlotUnlock : RowProxy
---@field ID integer
---@field Slot integer
---@field LevelRequired integer
---@field DeathKnightLevelRequired integer
---@field DemonHunterLevelRequired integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.PvpTalentSlotUnlock self
function row:SetID(value) end

---Gets the value of field 'Slot'.
---@return integer value
function row:GetSlot() end

---Sets the value of field 'Slot'.
---@param value integer
---@return dbc.row.v1215.PvpTalentSlotUnlock self
function row:SetSlot(value) end

---Gets the value of field 'LevelRequired'.
---@return integer value
function row:GetLevelRequired() end

---Sets the value of field 'LevelRequired'.
---@param value integer
---@return dbc.row.v1215.PvpTalentSlotUnlock self
function row:SetLevelRequired(value) end

---Gets the value of field 'DeathKnightLevelRequired'.
---@return integer value
function row:GetDeathKnightLevelRequired() end

---Sets the value of field 'DeathKnightLevelRequired'.
---@param value integer
---@return dbc.row.v1215.PvpTalentSlotUnlock self
function row:SetDeathKnightLevelRequired(value) end

---Gets the value of field 'DemonHunterLevelRequired'.
---@return integer value
function row:GetDemonHunterLevelRequired() end

---Sets the value of field 'DemonHunterLevelRequired'.
---@param value integer
---@return dbc.row.v1215.PvpTalentSlotUnlock self
function row:SetDemonHunterLevelRequired(value) end

---Table container for PvpTalentSlotUnlock (Build 12.1.5.69594).
---@class dbc.Table.v1215.PvpTalentSlotUnlock : DbcTable
---@field [integer] dbc.row.v1215.PvpTalentSlotUnlock
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.PvpTalentSlotUnlock
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.PvpTalentSlotUnlock|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.PvpTalentSlotUnlock
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.PvpTalentSlotUnlock>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.PvpTalentSlotUnlock[]
function tbl:GetByRelation(foreign_id) end

return {}
