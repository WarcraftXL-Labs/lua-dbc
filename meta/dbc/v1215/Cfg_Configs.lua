---@meta
-- Generated LuaLS annotations for Cfg_Configs (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of Cfg_Configs in build 12.1.5.69594.
---@class dbc.row.v1215.Cfg_Configs : RowProxy
---@field ID integer
---@field PlayerKillingAllowed integer
---@field Roleplaying integer
---@field PlayerAttackSpeedBase integer
---@field MaxDamageReductionPctPhysical number

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.Cfg_Configs self
function row:SetID(value) end

---Gets the value of field 'PlayerKillingAllowed'.
---@return integer value
function row:GetPlayerKillingAllowed() end

---Sets the value of field 'PlayerKillingAllowed'.
---@param value integer
---@return dbc.row.v1215.Cfg_Configs self
function row:SetPlayerKillingAllowed(value) end

---Gets the value of field 'Roleplaying'.
---@return integer value
function row:GetRoleplaying() end

---Sets the value of field 'Roleplaying'.
---@param value integer
---@return dbc.row.v1215.Cfg_Configs self
function row:SetRoleplaying(value) end

---Gets the value of field 'PlayerAttackSpeedBase'.
---@return integer value
function row:GetPlayerAttackSpeedBase() end

---Sets the value of field 'PlayerAttackSpeedBase'.
---@param value integer
---@return dbc.row.v1215.Cfg_Configs self
function row:SetPlayerAttackSpeedBase(value) end

---Gets the value of field 'MaxDamageReductionPctPhysical'.
---@return number value
function row:GetMaxDamageReductionPctPhysical() end

---Sets the value of field 'MaxDamageReductionPctPhysical'.
---@param value number
---@return dbc.row.v1215.Cfg_Configs self
function row:SetMaxDamageReductionPctPhysical(value) end

---Table container for Cfg_Configs (Build 12.1.5.69594).
---@class dbc.Table.v1215.Cfg_Configs : DbcTable
---@field [integer] dbc.row.v1215.Cfg_Configs
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.Cfg_Configs
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.Cfg_Configs|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.Cfg_Configs
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.Cfg_Configs>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.Cfg_Configs[]
function tbl:GetByRelation(foreign_id) end

return {}
