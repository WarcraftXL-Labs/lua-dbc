---@meta
-- Generated LuaLS annotations for BattlePetSpeciesXAbility (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of BattlePetSpeciesXAbility in build 12.1.5.69594.
---@class dbc.row.v1215.BattlePetSpeciesXAbility : RowProxy
---@field ID integer
---@field BattlePetAbilityID integer
---@field RequiredLevel integer
---@field SlotEnum integer
---@field BattlePetSpeciesID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.BattlePetSpeciesXAbility self
function row:SetID(value) end

---Gets the value of field 'BattlePetAbilityID'.
---@return integer value
function row:GetBattlePetAbilityID() end

---Sets the value of field 'BattlePetAbilityID'.
---@param value integer
---@return dbc.row.v1215.BattlePetSpeciesXAbility self
function row:SetBattlePetAbilityID(value) end

---Navigates foreign relationship to 'BattlePetAbility' via 'BattlePetAbilityID'.
---@return dbc.row.v1215.BattlePetAbility|nil
function row:GetBattlePetAbility() end

---Creates a related 'BattlePetAbility' row and automatically links 'BattlePetAbilityID'.
---@param data? table
---@return dbc.row.v1215.BattlePetAbility
function row:CreateRelated(data) end

---Gets the value of field 'RequiredLevel'.
---@return integer value
function row:GetRequiredLevel() end

---Sets the value of field 'RequiredLevel'.
---@param value integer
---@return dbc.row.v1215.BattlePetSpeciesXAbility self
function row:SetRequiredLevel(value) end

---Gets the value of field 'SlotEnum'.
---@return integer value
function row:GetSlotEnum() end

---Sets the value of field 'SlotEnum'.
---@param value integer
---@return dbc.row.v1215.BattlePetSpeciesXAbility self
function row:SetSlotEnum(value) end

---Gets the value of field 'BattlePetSpeciesID'.
---@return integer value
function row:GetBattlePetSpeciesID() end

---Sets the value of field 'BattlePetSpeciesID'.
---@param value integer
---@return dbc.row.v1215.BattlePetSpeciesXAbility self
function row:SetBattlePetSpeciesID(value) end

---Navigates foreign relationship to 'BattlePetSpecies' via 'BattlePetSpeciesID'.
---@return dbc.row.v1215.BattlePetSpecies|nil
function row:GetBattlePetSpecies() end

---Creates a related 'BattlePetSpecies' row and automatically links 'BattlePetSpeciesID'.
---@param data? table
---@return dbc.row.v1215.BattlePetSpecies
function row:CreateRelated(data) end

---Table container for BattlePetSpeciesXAbility (Build 12.1.5.69594).
---@class dbc.Table.v1215.BattlePetSpeciesXAbility : DbcTable
---@field [integer] dbc.row.v1215.BattlePetSpeciesXAbility
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.BattlePetSpeciesXAbility
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.BattlePetSpeciesXAbility|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.BattlePetSpeciesXAbility
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.BattlePetSpeciesXAbility>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.BattlePetSpeciesXAbility[]
function tbl:GetByRelation(foreign_id) end

return {}
