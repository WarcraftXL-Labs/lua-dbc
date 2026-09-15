---@meta
-- Generated LuaLS annotations for ExpectedStatMod (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ExpectedStatMod in build 12.1.5.69594.
---@class dbc.row.v1215.ExpectedStatMod : RowProxy
---@field ID integer
---@field CreatureHealthMod number
---@field PlayerHealthMod number
---@field CreatureAutoAttackDPSMod number
---@field CreatureArmorMod number
---@field PlayerManaMod number
---@field PlayerPrimaryStatMod number
---@field PlayerSecondaryStatMod number
---@field ArmorConstantMod number
---@field CreatureSpellDamageMod number

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ExpectedStatMod self
function row:SetID(value) end

---Gets the value of field 'CreatureHealthMod'.
---@return number value
function row:GetCreatureHealthMod() end

---Sets the value of field 'CreatureHealthMod'.
---@param value number
---@return dbc.row.v1215.ExpectedStatMod self
function row:SetCreatureHealthMod(value) end

---Gets the value of field 'PlayerHealthMod'.
---@return number value
function row:GetPlayerHealthMod() end

---Sets the value of field 'PlayerHealthMod'.
---@param value number
---@return dbc.row.v1215.ExpectedStatMod self
function row:SetPlayerHealthMod(value) end

---Gets the value of field 'CreatureAutoAttackDPSMod'.
---@return number value
function row:GetCreatureAutoAttackDPSMod() end

---Sets the value of field 'CreatureAutoAttackDPSMod'.
---@param value number
---@return dbc.row.v1215.ExpectedStatMod self
function row:SetCreatureAutoAttackDPSMod(value) end

---Gets the value of field 'CreatureArmorMod'.
---@return number value
function row:GetCreatureArmorMod() end

---Sets the value of field 'CreatureArmorMod'.
---@param value number
---@return dbc.row.v1215.ExpectedStatMod self
function row:SetCreatureArmorMod(value) end

---Gets the value of field 'PlayerManaMod'.
---@return number value
function row:GetPlayerManaMod() end

---Sets the value of field 'PlayerManaMod'.
---@param value number
---@return dbc.row.v1215.ExpectedStatMod self
function row:SetPlayerManaMod(value) end

---Gets the value of field 'PlayerPrimaryStatMod'.
---@return number value
function row:GetPlayerPrimaryStatMod() end

---Sets the value of field 'PlayerPrimaryStatMod'.
---@param value number
---@return dbc.row.v1215.ExpectedStatMod self
function row:SetPlayerPrimaryStatMod(value) end

---Gets the value of field 'PlayerSecondaryStatMod'.
---@return number value
function row:GetPlayerSecondaryStatMod() end

---Sets the value of field 'PlayerSecondaryStatMod'.
---@param value number
---@return dbc.row.v1215.ExpectedStatMod self
function row:SetPlayerSecondaryStatMod(value) end

---Gets the value of field 'ArmorConstantMod'.
---@return number value
function row:GetArmorConstantMod() end

---Sets the value of field 'ArmorConstantMod'.
---@param value number
---@return dbc.row.v1215.ExpectedStatMod self
function row:SetArmorConstantMod(value) end

---Gets the value of field 'CreatureSpellDamageMod'.
---@return number value
function row:GetCreatureSpellDamageMod() end

---Sets the value of field 'CreatureSpellDamageMod'.
---@param value number
---@return dbc.row.v1215.ExpectedStatMod self
function row:SetCreatureSpellDamageMod(value) end

---Table container for ExpectedStatMod (Build 12.1.5.69594).
---@class dbc.Table.v1215.ExpectedStatMod : DbcTable
---@field [integer] dbc.row.v1215.ExpectedStatMod
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ExpectedStatMod
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ExpectedStatMod|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ExpectedStatMod
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ExpectedStatMod>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ExpectedStatMod[]
function tbl:GetByRelation(foreign_id) end

return {}
