---@meta
-- Generated LuaLS annotations for Cfg_Configs (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of Cfg_Configs in build 3.3.5.12340.
---@class dbc.row.v335.Cfg_Configs : RowProxy
---@field ID integer
---@field RealmType integer
---@field PlayerKillingAllowed integer
---@field Roleplaying integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.Cfg_Configs self
function row:SetID(value) end

---Gets the value of field 'RealmType'.
---@return integer value
function row:GetRealmType() end

---Sets the value of field 'RealmType'.
---@param value integer
---@return dbc.row.v335.Cfg_Configs self
function row:SetRealmType(value) end

---Gets the value of field 'PlayerKillingAllowed'.
---@return integer value
function row:GetPlayerKillingAllowed() end

---Sets the value of field 'PlayerKillingAllowed'.
---@param value integer
---@return dbc.row.v335.Cfg_Configs self
function row:SetPlayerKillingAllowed(value) end

---Gets the value of field 'Roleplaying'.
---@return integer value
function row:GetRoleplaying() end

---Sets the value of field 'Roleplaying'.
---@param value integer
---@return dbc.row.v335.Cfg_Configs self
function row:SetRoleplaying(value) end

---Table container for Cfg_Configs (Build 3.3.5.12340).
---@class dbc.Table.v335.Cfg_Configs : DbcTable
---@field [integer] dbc.row.v335.Cfg_Configs
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.Cfg_Configs
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.Cfg_Configs|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.Cfg_Configs
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.Cfg_Configs>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.Cfg_Configs[]
function tbl:GetByRelation(foreign_id) end

return {}
