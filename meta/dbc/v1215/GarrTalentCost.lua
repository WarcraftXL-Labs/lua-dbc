---@meta
-- Generated LuaLS annotations for GarrTalentCost (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GarrTalentCost in build 12.1.5.69594.
---@class dbc.row.v1215.GarrTalentCost : RowProxy
---@field MoneyQuantity integer
---@field ID integer
---@field GarrTalentTreeID integer
---@field GarrTalentID integer
---@field RankIndex integer instead of giving cost per GarrTalentID and GarrTalentRankID, give cost depending on number of chosen talents in this tree
---@field GarrTalentRankID integer
---@field CostType integer 0: Initial, 1: Respec, 2: MakePermanent, 3: TreeReset (soulbinds)
---@field CurrencyTypesID integer
---@field CurrencyQuantity integer

local row = {}

---Gets the value of field 'MoneyQuantity'.
---@return integer value
function row:GetMoneyQuantity() end

---Sets the value of field 'MoneyQuantity'.
---@param value integer
---@return dbc.row.v1215.GarrTalentCost self
function row:SetMoneyQuantity(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GarrTalentCost self
function row:SetID(value) end

---Gets the value of field 'GarrTalentTreeID'.
---@return integer value
function row:GetGarrTalentTreeID() end

---Sets the value of field 'GarrTalentTreeID'.
---@param value integer
---@return dbc.row.v1215.GarrTalentCost self
function row:SetGarrTalentTreeID(value) end

---Navigates foreign relationship to 'GarrTalentTree' via 'GarrTalentTreeID'.
---@return dbc.row.v1215.GarrTalentTree|nil
function row:GetGarrTalentTree() end

---Creates a related 'GarrTalentTree' row and automatically links 'GarrTalentTreeID'.
---@param data? table
---@return dbc.row.v1215.GarrTalentTree
function row:CreateRelated(data) end

---Gets the value of field 'GarrTalentID'.
---@return integer value
function row:GetGarrTalentID() end

---Sets the value of field 'GarrTalentID'.
---@param value integer
---@return dbc.row.v1215.GarrTalentCost self
function row:SetGarrTalentID(value) end

---Navigates foreign relationship to 'GarrTalent' via 'GarrTalentID'.
---@return dbc.row.v1215.GarrTalent|nil
function row:GetGarrTalent() end

---Creates a related 'GarrTalent' row and automatically links 'GarrTalentID'.
---@param data? table
---@return dbc.row.v1215.GarrTalent
function row:CreateRelated(data) end

---Gets the value of field 'RankIndex'.
---@return integer value
function row:GetRankIndex() end

---Sets the value of field 'RankIndex'.
---@param value integer
---@return dbc.row.v1215.GarrTalentCost self
function row:SetRankIndex(value) end

---Gets the value of field 'GarrTalentRankID'.
---@return integer value
function row:GetGarrTalentRankID() end

---Sets the value of field 'GarrTalentRankID'.
---@param value integer
---@return dbc.row.v1215.GarrTalentCost self
function row:SetGarrTalentRankID(value) end

---Navigates foreign relationship to 'GarrTalentRank' via 'GarrTalentRankID'.
---@return dbc.row.v1215.GarrTalentRank|nil
function row:GetGarrTalentRank() end

---Creates a related 'GarrTalentRank' row and automatically links 'GarrTalentRankID'.
---@param data? table
---@return dbc.row.v1215.GarrTalentRank
function row:CreateRelated(data) end

---Gets the value of field 'CostType'.
---@return integer value
function row:GetCostType() end

---Sets the value of field 'CostType'.
---@param value integer
---@return dbc.row.v1215.GarrTalentCost self
function row:SetCostType(value) end

---Gets the value of field 'CurrencyTypesID'.
---@return integer value
function row:GetCurrencyTypesID() end

---Sets the value of field 'CurrencyTypesID'.
---@param value integer
---@return dbc.row.v1215.GarrTalentCost self
function row:SetCurrencyTypesID(value) end

---Navigates foreign relationship to 'CurrencyTypes' via 'CurrencyTypesID'.
---@return dbc.row.v1215.CurrencyTypes|nil
function row:GetCurrencyTypes() end

---Creates a related 'CurrencyTypes' row and automatically links 'CurrencyTypesID'.
---@param data? table
---@return dbc.row.v1215.CurrencyTypes
function row:CreateRelated(data) end

---Gets the value of field 'CurrencyQuantity'.
---@return integer value
function row:GetCurrencyQuantity() end

---Sets the value of field 'CurrencyQuantity'.
---@param value integer
---@return dbc.row.v1215.GarrTalentCost self
function row:SetCurrencyQuantity(value) end

---Table container for GarrTalentCost (Build 12.1.5.69594).
---@class dbc.Table.v1215.GarrTalentCost : DbcTable
---@field [integer] dbc.row.v1215.GarrTalentCost
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GarrTalentCost
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GarrTalentCost|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GarrTalentCost
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GarrTalentCost>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GarrTalentCost[]
function tbl:GetByRelation(foreign_id) end

return {}
