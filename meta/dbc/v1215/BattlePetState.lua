---@meta
-- Generated LuaLS annotations for BattlePetState (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of BattlePetState in build 12.1.5.69594.
---@class dbc.row.v1215.BattlePetState : RowProxy
---@field ID integer
---@field LuaName string
---@field Flags integer &0x004: Stat_Speed, &0x010: maxHealthBonus (+bonus * level), &0x020: Stat_Stamina, &0x100: Stat_Power, &0x200: secondary speed modifier (+speed2 * speed * 0.01)
---@field BattlePetVisualID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.BattlePetState self
function row:SetID(value) end

---Gets the value of field 'LuaName'.
---@return string value
function row:GetLuaName() end

---Sets the value of field 'LuaName'.
---@param value string
---@return dbc.row.v1215.BattlePetState self
function row:SetLuaName(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.BattlePetState self
function row:SetFlags(value) end

---Gets the value of field 'BattlePetVisualID'.
---@return integer value
function row:GetBattlePetVisualID() end

---Sets the value of field 'BattlePetVisualID'.
---@param value integer
---@return dbc.row.v1215.BattlePetState self
function row:SetBattlePetVisualID(value) end

---Navigates foreign relationship to 'BattlePetVisual' via 'BattlePetVisualID'.
---@return dbc.row.v1215.BattlePetVisual|nil
function row:GetBattlePetVisual() end

---Creates a related 'BattlePetVisual' row and automatically links 'BattlePetVisualID'.
---@param data? table
---@return dbc.row.v1215.BattlePetVisual
function row:CreateRelated(data) end

---Table container for BattlePetState (Build 12.1.5.69594).
---@class dbc.Table.v1215.BattlePetState : DbcTable
---@field [integer] dbc.row.v1215.BattlePetState
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.BattlePetState
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.BattlePetState|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.BattlePetState
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.BattlePetState>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.BattlePetState[]
function tbl:GetByRelation(foreign_id) end

return {}
