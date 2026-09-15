---@meta
-- Generated LuaLS annotations for GarrTalentRank (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GarrTalentRank in build 12.1.5.69594.
---@class dbc.row.v1215.GarrTalentRank : RowProxy
---@field ID integer
---@field Rank integer
---@field PerkSpellID integer
---@field PerkPlayerConditionID integer
---@field Points number $p in GarrTalent description
---@field ResearchCost integer
---@field ResearchCostCurrencyTypesID integer
---@field ResearchGoldCost integer
---@field ResearchDurationSecs integer
---@field RespecCost integer
---@field RespecCostCurrencyTypesID integer
---@field RespecGoldCost integer
---@field RespecDurationSecs integer
---@field AlternateResearchCost integer
---@field AlternateResearchCostCurrencyTypesID integer
---@field AlternateResearchGoldCost integer
---@field AlternateResearchDurationSecs integer
---@field GarrTalentID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GarrTalentRank self
function row:SetID(value) end

---Gets the value of field 'Rank'.
---@return integer value
function row:GetRank() end

---Sets the value of field 'Rank'.
---@param value integer
---@return dbc.row.v1215.GarrTalentRank self
function row:SetRank(value) end

---Gets the value of field 'PerkSpellID'.
---@return integer value
function row:GetPerkSpellID() end

---Sets the value of field 'PerkSpellID'.
---@param value integer
---@return dbc.row.v1215.GarrTalentRank self
function row:SetPerkSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'PerkSpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetPerkSpell() end

---Creates a related 'Spell' row and automatically links 'PerkSpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'PerkPlayerConditionID'.
---@return integer value
function row:GetPerkPlayerConditionID() end

---Sets the value of field 'PerkPlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.GarrTalentRank self
function row:SetPerkPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PerkPlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPerkPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PerkPlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'Points'.
---@return number value
function row:GetPoints() end

---Sets the value of field 'Points'.
---@param value number
---@return dbc.row.v1215.GarrTalentRank self
function row:SetPoints(value) end

---Gets the value of field 'ResearchCost'.
---@return integer value
function row:GetResearchCost() end

---Sets the value of field 'ResearchCost'.
---@param value integer
---@return dbc.row.v1215.GarrTalentRank self
function row:SetResearchCost(value) end

---Gets the value of field 'ResearchCostCurrencyTypesID'.
---@return integer value
function row:GetResearchCostCurrencyTypesID() end

---Sets the value of field 'ResearchCostCurrencyTypesID'.
---@param value integer
---@return dbc.row.v1215.GarrTalentRank self
function row:SetResearchCostCurrencyTypesID(value) end

---Navigates foreign relationship to 'CurrencyTypes' via 'ResearchCostCurrencyTypesID'.
---@return dbc.row.v1215.CurrencyTypes|nil
function row:GetResearchCostCurrencyTypes() end

---Creates a related 'CurrencyTypes' row and automatically links 'ResearchCostCurrencyTypesID'.
---@param data? table
---@return dbc.row.v1215.CurrencyTypes
function row:CreateRelated(data) end

---Gets the value of field 'ResearchGoldCost'.
---@return integer value
function row:GetResearchGoldCost() end

---Sets the value of field 'ResearchGoldCost'.
---@param value integer
---@return dbc.row.v1215.GarrTalentRank self
function row:SetResearchGoldCost(value) end

---Gets the value of field 'ResearchDurationSecs'.
---@return integer value
function row:GetResearchDurationSecs() end

---Sets the value of field 'ResearchDurationSecs'.
---@param value integer
---@return dbc.row.v1215.GarrTalentRank self
function row:SetResearchDurationSecs(value) end

---Gets the value of field 'RespecCost'.
---@return integer value
function row:GetRespecCost() end

---Sets the value of field 'RespecCost'.
---@param value integer
---@return dbc.row.v1215.GarrTalentRank self
function row:SetRespecCost(value) end

---Gets the value of field 'RespecCostCurrencyTypesID'.
---@return integer value
function row:GetRespecCostCurrencyTypesID() end

---Sets the value of field 'RespecCostCurrencyTypesID'.
---@param value integer
---@return dbc.row.v1215.GarrTalentRank self
function row:SetRespecCostCurrencyTypesID(value) end

---Navigates foreign relationship to 'CurrencyTypes' via 'RespecCostCurrencyTypesID'.
---@return dbc.row.v1215.CurrencyTypes|nil
function row:GetRespecCostCurrencyTypes() end

---Creates a related 'CurrencyTypes' row and automatically links 'RespecCostCurrencyTypesID'.
---@param data? table
---@return dbc.row.v1215.CurrencyTypes
function row:CreateRelated(data) end

---Gets the value of field 'RespecGoldCost'.
---@return integer value
function row:GetRespecGoldCost() end

---Sets the value of field 'RespecGoldCost'.
---@param value integer
---@return dbc.row.v1215.GarrTalentRank self
function row:SetRespecGoldCost(value) end

---Gets the value of field 'RespecDurationSecs'.
---@return integer value
function row:GetRespecDurationSecs() end

---Sets the value of field 'RespecDurationSecs'.
---@param value integer
---@return dbc.row.v1215.GarrTalentRank self
function row:SetRespecDurationSecs(value) end

---Gets the value of field 'AlternateResearchCost'.
---@return integer value
function row:GetAlternateResearchCost() end

---Sets the value of field 'AlternateResearchCost'.
---@param value integer
---@return dbc.row.v1215.GarrTalentRank self
function row:SetAlternateResearchCost(value) end

---Gets the value of field 'AlternateResearchCostCurrencyTypesID'.
---@return integer value
function row:GetAlternateResearchCostCurrencyTypesID() end

---Sets the value of field 'AlternateResearchCostCurrencyTypesID'.
---@param value integer
---@return dbc.row.v1215.GarrTalentRank self
function row:SetAlternateResearchCostCurrencyTypesID(value) end

---Navigates foreign relationship to 'CurrencyTypes' via 'AlternateResearchCostCurrencyTypesID'.
---@return dbc.row.v1215.CurrencyTypes|nil
function row:GetAlternateResearchCostCurrencyTypes() end

---Creates a related 'CurrencyTypes' row and automatically links 'AlternateResearchCostCurrencyTypesID'.
---@param data? table
---@return dbc.row.v1215.CurrencyTypes
function row:CreateRelated(data) end

---Gets the value of field 'AlternateResearchGoldCost'.
---@return integer value
function row:GetAlternateResearchGoldCost() end

---Sets the value of field 'AlternateResearchGoldCost'.
---@param value integer
---@return dbc.row.v1215.GarrTalentRank self
function row:SetAlternateResearchGoldCost(value) end

---Gets the value of field 'AlternateResearchDurationSecs'.
---@return integer value
function row:GetAlternateResearchDurationSecs() end

---Sets the value of field 'AlternateResearchDurationSecs'.
---@param value integer
---@return dbc.row.v1215.GarrTalentRank self
function row:SetAlternateResearchDurationSecs(value) end

---Gets the value of field 'GarrTalentID'.
---@return integer value
function row:GetGarrTalentID() end

---Sets the value of field 'GarrTalentID'.
---@param value integer
---@return dbc.row.v1215.GarrTalentRank self
function row:SetGarrTalentID(value) end

---Navigates foreign relationship to 'GarrTalent' via 'GarrTalentID'.
---@return dbc.row.v1215.GarrTalent|nil
function row:GetGarrTalent() end

---Creates a related 'GarrTalent' row and automatically links 'GarrTalentID'.
---@param data? table
---@return dbc.row.v1215.GarrTalent
function row:CreateRelated(data) end

---Table container for GarrTalentRank (Build 12.1.5.69594).
---@class dbc.Table.v1215.GarrTalentRank : DbcTable
---@field [integer] dbc.row.v1215.GarrTalentRank
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GarrTalentRank
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GarrTalentRank|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GarrTalentRank
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GarrTalentRank>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GarrTalentRank[]
function tbl:GetByRelation(foreign_id) end

return {}
