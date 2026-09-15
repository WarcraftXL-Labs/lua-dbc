---@meta
-- Generated LuaLS annotations for LFGDungeonExpansion (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of LFGDungeonExpansion in build 3.3.5.12340.
---@class dbc.row.v335.LFGDungeonExpansion : RowProxy
---@field ID integer
---@field Lfg_ID integer
---@field Expansion_level integer
---@field Random_ID integer
---@field Hard_level_min integer
---@field Hard_level_max integer
---@field Target_level_min integer
---@field Target_level_max integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.LFGDungeonExpansion self
function row:SetID(value) end

---Gets the value of field 'Lfg_ID'.
---@return integer value
function row:GetLfg_ID() end

---Sets the value of field 'Lfg_ID'.
---@param value integer
---@return dbc.row.v335.LFGDungeonExpansion self
function row:SetLfg_ID(value) end

---Navigates foreign relationship to 'Lfg_' via 'Lfg_ID'.
---@return dbc.row.v335.Lfg_|nil
function row:GetLfg_() end

---Creates a related 'Lfg_' row and automatically links 'Lfg_ID'.
---@param data? table
---@return dbc.row.v335.Lfg_
function row:CreateRelated(data) end

---Gets the value of field 'Expansion_level'.
---@return integer value
function row:GetExpansion_level() end

---Sets the value of field 'Expansion_level'.
---@param value integer
---@return dbc.row.v335.LFGDungeonExpansion self
function row:SetExpansion_level(value) end

---Gets the value of field 'Random_ID'.
---@return integer value
function row:GetRandom_ID() end

---Sets the value of field 'Random_ID'.
---@param value integer
---@return dbc.row.v335.LFGDungeonExpansion self
function row:SetRandom_ID(value) end

---Navigates foreign relationship to 'Random_' via 'Random_ID'.
---@return dbc.row.v335.Random_|nil
function row:GetRandom_() end

---Creates a related 'Random_' row and automatically links 'Random_ID'.
---@param data? table
---@return dbc.row.v335.Random_
function row:CreateRelated(data) end

---Gets the value of field 'Hard_level_min'.
---@return integer value
function row:GetHard_level_min() end

---Sets the value of field 'Hard_level_min'.
---@param value integer
---@return dbc.row.v335.LFGDungeonExpansion self
function row:SetHard_level_min(value) end

---Gets the value of field 'Hard_level_max'.
---@return integer value
function row:GetHard_level_max() end

---Sets the value of field 'Hard_level_max'.
---@param value integer
---@return dbc.row.v335.LFGDungeonExpansion self
function row:SetHard_level_max(value) end

---Gets the value of field 'Target_level_min'.
---@return integer value
function row:GetTarget_level_min() end

---Sets the value of field 'Target_level_min'.
---@param value integer
---@return dbc.row.v335.LFGDungeonExpansion self
function row:SetTarget_level_min(value) end

---Gets the value of field 'Target_level_max'.
---@return integer value
function row:GetTarget_level_max() end

---Sets the value of field 'Target_level_max'.
---@param value integer
---@return dbc.row.v335.LFGDungeonExpansion self
function row:SetTarget_level_max(value) end

---Table container for LFGDungeonExpansion (Build 3.3.5.12340).
---@class dbc.Table.v335.LFGDungeonExpansion : DbcTable
---@field [integer] dbc.row.v335.LFGDungeonExpansion
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.LFGDungeonExpansion
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.LFGDungeonExpansion|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.LFGDungeonExpansion
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.LFGDungeonExpansion>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.LFGDungeonExpansion[]
function tbl:GetByRelation(foreign_id) end

return {}
