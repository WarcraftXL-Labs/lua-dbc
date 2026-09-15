---@meta
-- Generated LuaLS annotations for CharacterLoadoutPet (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CharacterLoadoutPet in build 12.1.5.69594.
---@class dbc.row.v1215.CharacterLoadoutPet : RowProxy
---@field ID integer
---@field CreatureID integer
---@field PetDisplayID integer
---@field PetFamilyID integer
---@field CharacterLoadoutID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CharacterLoadoutPet self
function row:SetID(value) end

---Gets the value of field 'CreatureID'.
---@return integer value
function row:GetCreatureID() end

---Sets the value of field 'CreatureID'.
---@param value integer
---@return dbc.row.v1215.CharacterLoadoutPet self
function row:SetCreatureID(value) end

---Navigates foreign relationship to 'Creature' via 'CreatureID'.
---@return dbc.row.v1215.Creature|nil
function row:GetCreature() end

---Creates a related 'Creature' row and automatically links 'CreatureID'.
---@param data? table
---@return dbc.row.v1215.Creature
function row:CreateRelated(data) end

---Gets the value of field 'PetDisplayID'.
---@return integer value
function row:GetPetDisplayID() end

---Sets the value of field 'PetDisplayID'.
---@param value integer
---@return dbc.row.v1215.CharacterLoadoutPet self
function row:SetPetDisplayID(value) end

---Navigates foreign relationship to 'CreatureDisplayInfo' via 'PetDisplayID'.
---@return dbc.row.v1215.CreatureDisplayInfo|nil
function row:GetPetDisplay() end

---Creates a related 'CreatureDisplayInfo' row and automatically links 'PetDisplayID'.
---@param data? table
---@return dbc.row.v1215.CreatureDisplayInfo
function row:CreateRelated(data) end

---Gets the value of field 'PetFamilyID'.
---@return integer value
function row:GetPetFamilyID() end

---Sets the value of field 'PetFamilyID'.
---@param value integer
---@return dbc.row.v1215.CharacterLoadoutPet self
function row:SetPetFamilyID(value) end

---Navigates foreign relationship to 'CreatureFamily' via 'PetFamilyID'.
---@return dbc.row.v1215.CreatureFamily|nil
function row:GetPetFamily() end

---Creates a related 'CreatureFamily' row and automatically links 'PetFamilyID'.
---@param data? table
---@return dbc.row.v1215.CreatureFamily
function row:CreateRelated(data) end

---Gets the value of field 'CharacterLoadoutID'.
---@return integer value
function row:GetCharacterLoadoutID() end

---Sets the value of field 'CharacterLoadoutID'.
---@param value integer
---@return dbc.row.v1215.CharacterLoadoutPet self
function row:SetCharacterLoadoutID(value) end

---Navigates foreign relationship to 'CharacterLoadout' via 'CharacterLoadoutID'.
---@return dbc.row.v1215.CharacterLoadout|nil
function row:GetCharacterLoadout() end

---Creates a related 'CharacterLoadout' row and automatically links 'CharacterLoadoutID'.
---@param data? table
---@return dbc.row.v1215.CharacterLoadout
function row:CreateRelated(data) end

---Table container for CharacterLoadoutPet (Build 12.1.5.69594).
---@class dbc.Table.v1215.CharacterLoadoutPet : DbcTable
---@field [integer] dbc.row.v1215.CharacterLoadoutPet
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CharacterLoadoutPet
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CharacterLoadoutPet|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CharacterLoadoutPet
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CharacterLoadoutPet>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CharacterLoadoutPet[]
function tbl:GetByRelation(foreign_id) end

return {}
