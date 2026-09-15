---@meta
-- Generated LuaLS annotations for SkillLineAbility (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of SkillLineAbility in build 3.3.5.12340.
---@class dbc.row.v335.SkillLineAbility : RowProxy
---@field ID integer
---@field SkillLine integer
---@field Spell integer
---@field RaceMask integer
---@field ClassMask integer
---@field ExcludeRace integer
---@field ExcludeClass integer
---@field MinSkillLineRank integer
---@field SupercededBySpell integer
---@field AcquireMethod integer
---@field TrivialSkillLineRankHigh integer
---@field TrivialSkillLineRankLow integer
---@field CharacterPoints integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.SkillLineAbility self
function row:SetID(value) end

---Gets the value of field 'SkillLine'.
---@return integer value
function row:GetSkillLine() end

---Sets the value of field 'SkillLine'.
---@param value integer
---@return dbc.row.v335.SkillLineAbility self
function row:SetSkillLine(value) end

---Navigates foreign relationship to 'SkillLine' via 'SkillLine'.
---@return dbc.row.v335.SkillLine|nil
function row:GetSkillLine() end

---Creates a related 'SkillLine' row and automatically links 'SkillLine'.
---@param data? table
---@return dbc.row.v335.SkillLine
function row:CreateRelated(data) end

---Gets the value of field 'Spell'.
---@return integer value
function row:GetSpell() end

---Sets the value of field 'Spell'.
---@param value integer
---@return dbc.row.v335.SkillLineAbility self
function row:SetSpell(value) end

---Navigates foreign relationship to 'Spell' via 'Spell'.
---@return dbc.row.v335.Spell|nil
function row:GetSpell() end

---Creates a related 'Spell' row and automatically links 'Spell'.
---@param data? table
---@return dbc.row.v335.Spell
function row:CreateRelated(data) end

---Gets the value of field 'RaceMask'.
---@return integer value
function row:GetRaceMask() end

---Sets the value of field 'RaceMask'.
---@param value integer
---@return dbc.row.v335.SkillLineAbility self
function row:SetRaceMask(value) end

---Gets the value of field 'ClassMask'.
---@return integer value
function row:GetClassMask() end

---Sets the value of field 'ClassMask'.
---@param value integer
---@return dbc.row.v335.SkillLineAbility self
function row:SetClassMask(value) end

---Gets the value of field 'ExcludeRace'.
---@return integer value
function row:GetExcludeRace() end

---Sets the value of field 'ExcludeRace'.
---@param value integer
---@return dbc.row.v335.SkillLineAbility self
function row:SetExcludeRace(value) end

---Gets the value of field 'ExcludeClass'.
---@return integer value
function row:GetExcludeClass() end

---Sets the value of field 'ExcludeClass'.
---@param value integer
---@return dbc.row.v335.SkillLineAbility self
function row:SetExcludeClass(value) end

---Gets the value of field 'MinSkillLineRank'.
---@return integer value
function row:GetMinSkillLineRank() end

---Sets the value of field 'MinSkillLineRank'.
---@param value integer
---@return dbc.row.v335.SkillLineAbility self
function row:SetMinSkillLineRank(value) end

---Gets the value of field 'SupercededBySpell'.
---@return integer value
function row:GetSupercededBySpell() end

---Sets the value of field 'SupercededBySpell'.
---@param value integer
---@return dbc.row.v335.SkillLineAbility self
function row:SetSupercededBySpell(value) end

---Navigates foreign relationship to 'Spell' via 'SupercededBySpell'.
---@return dbc.row.v335.Spell|nil
function row:GetSupercededBySpell() end

---Creates a related 'Spell' row and automatically links 'SupercededBySpell'.
---@param data? table
---@return dbc.row.v335.Spell
function row:CreateRelated(data) end

---Gets the value of field 'AcquireMethod'.
---@return integer value
function row:GetAcquireMethod() end

---Sets the value of field 'AcquireMethod'.
---@param value integer
---@return dbc.row.v335.SkillLineAbility self
function row:SetAcquireMethod(value) end

---Gets the value of field 'TrivialSkillLineRankHigh'.
---@return integer value
function row:GetTrivialSkillLineRankHigh() end

---Sets the value of field 'TrivialSkillLineRankHigh'.
---@param value integer
---@return dbc.row.v335.SkillLineAbility self
function row:SetTrivialSkillLineRankHigh(value) end

---Gets the value of field 'TrivialSkillLineRankLow'.
---@return integer value
function row:GetTrivialSkillLineRankLow() end

---Sets the value of field 'TrivialSkillLineRankLow'.
---@param value integer
---@return dbc.row.v335.SkillLineAbility self
function row:SetTrivialSkillLineRankLow(value) end

---Gets the value of field 'CharacterPoints'.
---@return integer[] value
function row:GetCharacterPoints() end

---Sets the value of field 'CharacterPoints'.
---@param value integer[]
---@return dbc.row.v335.SkillLineAbility self
function row:SetCharacterPoints(value) end

---Gets element at 1-based index in 'CharacterPoints'.
---@param index integer
---@return integer value
function row:GetCharacterPointsItem(index) end

---Table container for SkillLineAbility (Build 3.3.5.12340).
---@class dbc.Table.v335.SkillLineAbility : DbcTable
---@field [integer] dbc.row.v335.SkillLineAbility
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.SkillLineAbility
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.SkillLineAbility|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.SkillLineAbility
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.SkillLineAbility>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.SkillLineAbility[]
function tbl:GetByRelation(foreign_id) end

return {}
