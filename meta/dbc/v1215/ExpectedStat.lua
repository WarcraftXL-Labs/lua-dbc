---@meta
-- Generated LuaLS annotations for ExpectedStat (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ExpectedStat in build 12.1.5.69594.
---@class dbc.row.v1215.ExpectedStat : RowProxy
---@field ID integer
---@field ExpansionID integer
---@field CreatureHealth number
---@field PlayerHealth number
---@field CreatureAutoAttackDps number
---@field CreatureArmor number
---@field PlayerMana number
---@field PlayerPrimaryStat number
---@field PlayerSecondaryStat number
---@field ArmorConstant number
---@field CreatureSpellDamage number
---@field ContentSetID integer
---@field Lvl integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ExpectedStat self
function row:SetID(value) end

---Gets the value of field 'ExpansionID'.
---@return integer value
function row:GetExpansionID() end

---Sets the value of field 'ExpansionID'.
---@param value integer
---@return dbc.row.v1215.ExpectedStat self
function row:SetExpansionID(value) end

---Navigates foreign relationship to 'Expansion' via 'ExpansionID'.
---@return dbc.row.v1215.Expansion|nil
function row:GetExpansion() end

---Creates a related 'Expansion' row and automatically links 'ExpansionID'.
---@param data? table
---@return dbc.row.v1215.Expansion
function row:CreateRelated(data) end

---Gets the value of field 'CreatureHealth'.
---@return number value
function row:GetCreatureHealth() end

---Sets the value of field 'CreatureHealth'.
---@param value number
---@return dbc.row.v1215.ExpectedStat self
function row:SetCreatureHealth(value) end

---Gets the value of field 'PlayerHealth'.
---@return number value
function row:GetPlayerHealth() end

---Sets the value of field 'PlayerHealth'.
---@param value number
---@return dbc.row.v1215.ExpectedStat self
function row:SetPlayerHealth(value) end

---Gets the value of field 'CreatureAutoAttackDps'.
---@return number value
function row:GetCreatureAutoAttackDps() end

---Sets the value of field 'CreatureAutoAttackDps'.
---@param value number
---@return dbc.row.v1215.ExpectedStat self
function row:SetCreatureAutoAttackDps(value) end

---Gets the value of field 'CreatureArmor'.
---@return number value
function row:GetCreatureArmor() end

---Sets the value of field 'CreatureArmor'.
---@param value number
---@return dbc.row.v1215.ExpectedStat self
function row:SetCreatureArmor(value) end

---Gets the value of field 'PlayerMana'.
---@return number value
function row:GetPlayerMana() end

---Sets the value of field 'PlayerMana'.
---@param value number
---@return dbc.row.v1215.ExpectedStat self
function row:SetPlayerMana(value) end

---Gets the value of field 'PlayerPrimaryStat'.
---@return number value
function row:GetPlayerPrimaryStat() end

---Sets the value of field 'PlayerPrimaryStat'.
---@param value number
---@return dbc.row.v1215.ExpectedStat self
function row:SetPlayerPrimaryStat(value) end

---Gets the value of field 'PlayerSecondaryStat'.
---@return number value
function row:GetPlayerSecondaryStat() end

---Sets the value of field 'PlayerSecondaryStat'.
---@param value number
---@return dbc.row.v1215.ExpectedStat self
function row:SetPlayerSecondaryStat(value) end

---Gets the value of field 'ArmorConstant'.
---@return number value
function row:GetArmorConstant() end

---Sets the value of field 'ArmorConstant'.
---@param value number
---@return dbc.row.v1215.ExpectedStat self
function row:SetArmorConstant(value) end

---Gets the value of field 'CreatureSpellDamage'.
---@return number value
function row:GetCreatureSpellDamage() end

---Sets the value of field 'CreatureSpellDamage'.
---@param value number
---@return dbc.row.v1215.ExpectedStat self
function row:SetCreatureSpellDamage(value) end

---Gets the value of field 'ContentSetID'.
---@return integer value
function row:GetContentSetID() end

---Sets the value of field 'ContentSetID'.
---@param value integer
---@return dbc.row.v1215.ExpectedStat self
function row:SetContentSetID(value) end

---Navigates foreign relationship to 'ContentSet' via 'ContentSetID'.
---@return dbc.row.v1215.ContentSet|nil
function row:GetContentSet() end

---Creates a related 'ContentSet' row and automatically links 'ContentSetID'.
---@param data? table
---@return dbc.row.v1215.ContentSet
function row:CreateRelated(data) end

---Gets the value of field 'Lvl'.
---@return integer value
function row:GetLvl() end

---Sets the value of field 'Lvl'.
---@param value integer
---@return dbc.row.v1215.ExpectedStat self
function row:SetLvl(value) end

---Table container for ExpectedStat (Build 12.1.5.69594).
---@class dbc.Table.v1215.ExpectedStat : DbcTable
---@field [integer] dbc.row.v1215.ExpectedStat
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ExpectedStat
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ExpectedStat|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ExpectedStat
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ExpectedStat>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ExpectedStat[]
function tbl:GetByRelation(foreign_id) end

return {}
