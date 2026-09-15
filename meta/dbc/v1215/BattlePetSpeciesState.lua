---@meta
-- Generated LuaLS annotations for BattlePetSpeciesState (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of BattlePetSpeciesState in build 12.1.5.69594.
---@class dbc.row.v1215.BattlePetSpeciesState : RowProxy
---@field ID integer
---@field BattlePetStateID integer
---@field Value integer
---@field BattlePetSpeciesID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.BattlePetSpeciesState self
function row:SetID(value) end

---Gets the value of field 'BattlePetStateID'.
---@return integer value
function row:GetBattlePetStateID() end

---Sets the value of field 'BattlePetStateID'.
---@param value integer
---@return dbc.row.v1215.BattlePetSpeciesState self
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
---@return dbc.row.v1215.BattlePetSpeciesState self
function row:SetValue(value) end

---Gets the value of field 'BattlePetSpeciesID'.
---@return integer value
function row:GetBattlePetSpeciesID() end

---Sets the value of field 'BattlePetSpeciesID'.
---@param value integer
---@return dbc.row.v1215.BattlePetSpeciesState self
function row:SetBattlePetSpeciesID(value) end

---Navigates foreign relationship to 'BattlePetSpecies' via 'BattlePetSpeciesID'.
---@return dbc.row.v1215.BattlePetSpecies|nil
function row:GetBattlePetSpecies() end

---Creates a related 'BattlePetSpecies' row and automatically links 'BattlePetSpeciesID'.
---@param data? table
---@return dbc.row.v1215.BattlePetSpecies
function row:CreateRelated(data) end

---Table container for BattlePetSpeciesState (Build 12.1.5.69594).
---@class dbc.Table.v1215.BattlePetSpeciesState : DbcTable
---@field [integer] dbc.row.v1215.BattlePetSpeciesState
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.BattlePetSpeciesState
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.BattlePetSpeciesState|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.BattlePetSpeciesState
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.BattlePetSpeciesState>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.BattlePetSpeciesState[]
function tbl:GetByRelation(foreign_id) end

return {}
