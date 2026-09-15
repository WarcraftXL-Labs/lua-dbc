---@meta
-- Generated LuaLS annotations for Lock (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of Lock in build 3.3.5.12340.
---@class dbc.row.v335.Lock : RowProxy
---@field ID integer
---@field Type integer[] 0: ignore, 1: item, 2: skill level, 3: spell
---@field Index integer[] depending on Type: 1: Item::ID, 2: LockType::ID, 3: Spell::ID
---@field Skill integer[] if Type != skill: 0
---@field Action integer[] 0: open, 1: open_unlock, 2: close, 3: destroy, 4: rebuild

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.Lock self
function row:SetID(value) end

---Gets the value of field 'Type'.
---@return integer[] value
function row:GetType() end

---Sets the value of field 'Type'.
---@param value integer[]
---@return dbc.row.v335.Lock self
function row:SetType(value) end

---Gets element at 1-based index in 'Type'.
---@param index integer
---@return integer value
function row:GetTypeItem(index) end

---Gets the value of field 'Index'.
---@return integer[] value
function row:GetIndex() end

---Sets the value of field 'Index'.
---@param value integer[]
---@return dbc.row.v335.Lock self
function row:SetIndex(value) end

---Gets element at 1-based index in 'Index'.
---@param index integer
---@return integer value
function row:GetIndexItem(index) end

---Gets the value of field 'Skill'.
---@return integer[] value
function row:GetSkill() end

---Sets the value of field 'Skill'.
---@param value integer[]
---@return dbc.row.v335.Lock self
function row:SetSkill(value) end

---Gets element at 1-based index in 'Skill'.
---@param index integer
---@return integer value
function row:GetSkillItem(index) end

---Gets the value of field 'Action'.
---@return integer[] value
function row:GetAction() end

---Sets the value of field 'Action'.
---@param value integer[]
---@return dbc.row.v335.Lock self
function row:SetAction(value) end

---Gets element at 1-based index in 'Action'.
---@param index integer
---@return integer value
function row:GetActionItem(index) end

---Table container for Lock (Build 3.3.5.12340).
---@class dbc.Table.v335.Lock : DbcTable
---@field [integer] dbc.row.v335.Lock
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.Lock
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.Lock|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.Lock
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.Lock>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.Lock[]
function tbl:GetByRelation(foreign_id) end

return {}
