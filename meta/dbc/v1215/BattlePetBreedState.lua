---@meta
-- Generated LuaLS annotations for BattlePetBreedState (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of BattlePetBreedState in build 12.1.5.69594.
---@class dbc.row.v1215.BattlePetBreedState : RowProxy
---@field ID integer
---@field BattlePetStateID integer
---@field Value integer
---@field BattlePetBreedID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.BattlePetBreedState self
function row:SetID(value) end

---Gets the value of field 'BattlePetStateID'.
---@return integer value
function row:GetBattlePetStateID() end

---Sets the value of field 'BattlePetStateID'.
---@param value integer
---@return dbc.row.v1215.BattlePetBreedState self
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
---@return dbc.row.v1215.BattlePetBreedState self
function row:SetValue(value) end

---Gets the value of field 'BattlePetBreedID'.
---@return integer value
function row:GetBattlePetBreedID() end

---Sets the value of field 'BattlePetBreedID'.
---@param value integer
---@return dbc.row.v1215.BattlePetBreedState self
function row:SetBattlePetBreedID(value) end

---Navigates foreign relationship to 'BattlePetBreed' via 'BattlePetBreedID'.
---@return dbc.row.v1215.BattlePetBreed|nil
function row:GetBattlePetBreed() end

---Creates a related 'BattlePetBreed' row and automatically links 'BattlePetBreedID'.
---@param data? table
---@return dbc.row.v1215.BattlePetBreed
function row:CreateRelated(data) end

---Table container for BattlePetBreedState (Build 12.1.5.69594).
---@class dbc.Table.v1215.BattlePetBreedState : DbcTable
---@field [integer] dbc.row.v1215.BattlePetBreedState
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.BattlePetBreedState
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.BattlePetBreedState|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.BattlePetBreedState
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.BattlePetBreedState>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.BattlePetBreedState[]
function tbl:GetByRelation(foreign_id) end

return {}
