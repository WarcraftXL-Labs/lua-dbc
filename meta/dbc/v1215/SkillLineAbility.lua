---@meta
-- Generated LuaLS annotations for SkillLineAbility (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SkillLineAbility in build 12.1.5.69594.
---@class dbc.row.v1215.SkillLineAbility : RowProxy
---@field AbilityVerb_lang string
---@field AbilityAllVerb_lang string
---@field ID integer
---@field SkillLine integer
---@field Spell integer
---@field MinSkillLineRank integer
---@field ClassMask integer
---@field SupercedesSpell integer
---@field AcquireMethod integer
---@field TrivialSkillLineRankHigh integer
---@field TrivialSkillLineRankLow integer
---@field Flags integer
---@field NumSkillUps integer
---@field UniqueBit integer
---@field TradeSkillCategoryID integer
---@field SkillupSkillLineID integer
---@field RaceMasks integer[]

local row = {}

---Gets the value of field 'AbilityVerb_lang'.
---@return string value
function row:GetAbilityVerb_lang() end

---Sets the value of field 'AbilityVerb_lang'.
---@param value string
---@return dbc.row.v1215.SkillLineAbility self
function row:SetAbilityVerb_lang(value) end

---Gets the value of field 'AbilityAllVerb_lang'.
---@return string value
function row:GetAbilityAllVerb_lang() end

---Sets the value of field 'AbilityAllVerb_lang'.
---@param value string
---@return dbc.row.v1215.SkillLineAbility self
function row:SetAbilityAllVerb_lang(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SkillLineAbility self
function row:SetID(value) end

---Gets the value of field 'SkillLine'.
---@return integer value
function row:GetSkillLine() end

---Sets the value of field 'SkillLine'.
---@param value integer
---@return dbc.row.v1215.SkillLineAbility self
function row:SetSkillLine(value) end

---Navigates foreign relationship to 'SkillLine' via 'SkillLine'.
---@return dbc.row.v1215.SkillLine|nil
function row:GetSkillLine() end

---Creates a related 'SkillLine' row and automatically links 'SkillLine'.
---@param data? table
---@return dbc.row.v1215.SkillLine
function row:CreateRelated(data) end

---Gets the value of field 'Spell'.
---@return integer value
function row:GetSpell() end

---Sets the value of field 'Spell'.
---@param value integer
---@return dbc.row.v1215.SkillLineAbility self
function row:SetSpell(value) end

---Navigates foreign relationship to 'Spell' via 'Spell'.
---@return dbc.row.v1215.Spell|nil
function row:GetSpell() end

---Creates a related 'Spell' row and automatically links 'Spell'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'MinSkillLineRank'.
---@return integer value
function row:GetMinSkillLineRank() end

---Sets the value of field 'MinSkillLineRank'.
---@param value integer
---@return dbc.row.v1215.SkillLineAbility self
function row:SetMinSkillLineRank(value) end

---Gets the value of field 'ClassMask'.
---@return integer value
function row:GetClassMask() end

---Sets the value of field 'ClassMask'.
---@param value integer
---@return dbc.row.v1215.SkillLineAbility self
function row:SetClassMask(value) end

---Gets the value of field 'SupercedesSpell'.
---@return integer value
function row:GetSupercedesSpell() end

---Sets the value of field 'SupercedesSpell'.
---@param value integer
---@return dbc.row.v1215.SkillLineAbility self
function row:SetSupercedesSpell(value) end

---Navigates foreign relationship to 'Spell' via 'SupercedesSpell'.
---@return dbc.row.v1215.Spell|nil
function row:GetSupercedesSpell() end

---Creates a related 'Spell' row and automatically links 'SupercedesSpell'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'AcquireMethod'.
---@return integer value
function row:GetAcquireMethod() end

---Sets the value of field 'AcquireMethod'.
---@param value integer
---@return dbc.row.v1215.SkillLineAbility self
function row:SetAcquireMethod(value) end

---Gets the value of field 'TrivialSkillLineRankHigh'.
---@return integer value
function row:GetTrivialSkillLineRankHigh() end

---Sets the value of field 'TrivialSkillLineRankHigh'.
---@param value integer
---@return dbc.row.v1215.SkillLineAbility self
function row:SetTrivialSkillLineRankHigh(value) end

---Gets the value of field 'TrivialSkillLineRankLow'.
---@return integer value
function row:GetTrivialSkillLineRankLow() end

---Sets the value of field 'TrivialSkillLineRankLow'.
---@param value integer
---@return dbc.row.v1215.SkillLineAbility self
function row:SetTrivialSkillLineRankLow(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.SkillLineAbility self
function row:SetFlags(value) end

---Gets the value of field 'NumSkillUps'.
---@return integer value
function row:GetNumSkillUps() end

---Sets the value of field 'NumSkillUps'.
---@param value integer
---@return dbc.row.v1215.SkillLineAbility self
function row:SetNumSkillUps(value) end

---Gets the value of field 'UniqueBit'.
---@return integer value
function row:GetUniqueBit() end

---Sets the value of field 'UniqueBit'.
---@param value integer
---@return dbc.row.v1215.SkillLineAbility self
function row:SetUniqueBit(value) end

---Gets the value of field 'TradeSkillCategoryID'.
---@return integer value
function row:GetTradeSkillCategoryID() end

---Sets the value of field 'TradeSkillCategoryID'.
---@param value integer
---@return dbc.row.v1215.SkillLineAbility self
function row:SetTradeSkillCategoryID(value) end

---Navigates foreign relationship to 'TradeSkillCategory' via 'TradeSkillCategoryID'.
---@return dbc.row.v1215.TradeSkillCategory|nil
function row:GetTradeSkillCategory() end

---Creates a related 'TradeSkillCategory' row and automatically links 'TradeSkillCategoryID'.
---@param data? table
---@return dbc.row.v1215.TradeSkillCategory
function row:CreateRelated(data) end

---Gets the value of field 'SkillupSkillLineID'.
---@return integer value
function row:GetSkillupSkillLineID() end

---Sets the value of field 'SkillupSkillLineID'.
---@param value integer
---@return dbc.row.v1215.SkillLineAbility self
function row:SetSkillupSkillLineID(value) end

---Navigates foreign relationship to 'SkillLine' via 'SkillupSkillLineID'.
---@return dbc.row.v1215.SkillLine|nil
function row:GetSkillupSkillLine() end

---Creates a related 'SkillLine' row and automatically links 'SkillupSkillLineID'.
---@param data? table
---@return dbc.row.v1215.SkillLine
function row:CreateRelated(data) end

---Gets the value of field 'RaceMasks'.
---@return integer[] value
function row:GetRaceMasks() end

---Sets the value of field 'RaceMasks'.
---@param value integer[]
---@return dbc.row.v1215.SkillLineAbility self
function row:SetRaceMasks(value) end

---Gets element at 1-based index in 'RaceMasks'.
---@param index integer
---@return integer value
function row:GetRaceMasksItem(index) end

---Table container for SkillLineAbility (Build 12.1.5.69594).
---@class dbc.Table.v1215.SkillLineAbility : DbcTable
---@field [integer] dbc.row.v1215.SkillLineAbility
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SkillLineAbility
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SkillLineAbility|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SkillLineAbility
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SkillLineAbility>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SkillLineAbility[]
function tbl:GetByRelation(foreign_id) end

return {}
