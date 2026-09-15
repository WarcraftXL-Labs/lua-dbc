---@meta
-- Generated LuaLS annotations for BattlePetAbilityState (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of BattlePetAbilityState in build 12.1.5.69594.
---@class dbc.row.v1215.BattlePetAbilityState : RowProxy
---@field ID integer
---@field BattlePetStateID integer
---@field Value integer
---@field BattlePetAbilityID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.BattlePetAbilityState self
function row:SetID(value) end

---Gets the value of field 'BattlePetStateID'.
---@return integer value
function row:GetBattlePetStateID() end

---Sets the value of field 'BattlePetStateID'.
---@param value integer
---@return dbc.row.v1215.BattlePetAbilityState self
function row:SetBattlePetStateID(value) end

---Navigates foreign relationship to 'BattlePetState' via 'BattlePetStateID'.
---@return dbc.row.v1215.BattlePetState|nil
function row:GetBattlePetState() end

---Creates a related 'BattlePetState' row and automatically links 'BattlePetStateID'.
---@param data? table
---@return dbc.row.v1215.BattlePetState
function row:CreateRelated(data) end

---Gets the value of field 'Value'.
---@return integer value
function row:GetValue() end

---Sets the value of field 'Value'.
---@param value integer
---@return dbc.row.v1215.BattlePetAbilityState self
function row:SetValue(value) end

---Gets the value of field 'BattlePetAbilityID'.
---@return integer value
function row:GetBattlePetAbilityID() end

---Sets the value of field 'BattlePetAbilityID'.
---@param value integer
---@return dbc.row.v1215.BattlePetAbilityState self
function row:SetBattlePetAbilityID(value) end

---Navigates foreign relationship to 'BattlePetAbility' via 'BattlePetAbilityID'.
---@return dbc.row.v1215.BattlePetAbility|nil
function row:GetBattlePetAbility() end

---Creates a related 'BattlePetAbility' row and automatically links 'BattlePetAbilityID'.
---@param data? table
---@return dbc.row.v1215.BattlePetAbility
function row:CreateRelated(data) end

---Table container for BattlePetAbilityState (Build 12.1.5.69594).
---@class dbc.Table.v1215.BattlePetAbilityState : DbcTable
---@field [integer] dbc.row.v1215.BattlePetAbilityState
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.BattlePetAbilityState
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.BattlePetAbilityState|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.BattlePetAbilityState
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.BattlePetAbilityState>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.BattlePetAbilityState[]
function tbl:GetByRelation(foreign_id) end

return {}
