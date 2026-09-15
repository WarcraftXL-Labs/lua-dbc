---@meta
-- Generated LuaLS annotations for ItemExtendedCost (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ItemExtendedCost in build 12.1.5.69594.
---@class dbc.row.v1215.ItemExtendedCost : RowProxy
---@field ID integer
---@field Money integer
---@field RequiredArenaRating integer
---@field ArenaBracket integer
---@field Flags integer &0x1: player requires guild, &0x2 - &0x20 index disables
---@field MinFactionID integer
---@field MinReputation integer
---@field RequiredAchievement integer
---@field ItemID integer[]
---@field ItemCount integer[]
---@field CurrencyID integer[]
---@field CurrencyCount integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ItemExtendedCost self
function row:SetID(value) end

---Gets the value of field 'Money'.
---@return integer value
function row:GetMoney() end

---Sets the value of field 'Money'.
---@param value integer
---@return dbc.row.v1215.ItemExtendedCost self
function row:SetMoney(value) end

---Gets the value of field 'RequiredArenaRating'.
---@return integer value
function row:GetRequiredArenaRating() end

---Sets the value of field 'RequiredArenaRating'.
---@param value integer
---@return dbc.row.v1215.ItemExtendedCost self
function row:SetRequiredArenaRating(value) end

---Gets the value of field 'ArenaBracket'.
---@return integer value
function row:GetArenaBracket() end

---Sets the value of field 'ArenaBracket'.
---@param value integer
---@return dbc.row.v1215.ItemExtendedCost self
function row:SetArenaBracket(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.ItemExtendedCost self
function row:SetFlags(value) end

---Gets the value of field 'MinFactionID'.
---@return integer value
function row:GetMinFactionID() end

---Sets the value of field 'MinFactionID'.
---@param value integer
---@return dbc.row.v1215.ItemExtendedCost self
function row:SetMinFactionID(value) end

---Navigates foreign relationship to 'Faction' via 'MinFactionID'.
---@return dbc.row.v1215.Faction|nil
function row:GetMinFaction() end

---Creates a related 'Faction' row and automatically links 'MinFactionID'.
---@param data? table
---@return dbc.row.v1215.Faction
function row:CreateRelated(data) end

---Gets the value of field 'MinReputation'.
---@return integer value
function row:GetMinReputation() end

---Sets the value of field 'MinReputation'.
---@param value integer
---@return dbc.row.v1215.ItemExtendedCost self
function row:SetMinReputation(value) end

---Gets the value of field 'RequiredAchievement'.
---@return integer value
function row:GetRequiredAchievement() end

---Sets the value of field 'RequiredAchievement'.
---@param value integer
---@return dbc.row.v1215.ItemExtendedCost self
function row:SetRequiredAchievement(value) end

---Navigates foreign relationship to 'Achievement' via 'RequiredAchievement'.
---@return dbc.row.v1215.Achievement|nil
function row:GetRequiredAchievement() end

---Creates a related 'Achievement' row and automatically links 'RequiredAchievement'.
---@param data? table
---@return dbc.row.v1215.Achievement
function row:CreateRelated(data) end

---Gets the value of field 'ItemID'.
---@return integer[] value
function row:GetItemID() end

---Sets the value of field 'ItemID'.
---@param value integer[]
---@return dbc.row.v1215.ItemExtendedCost self
function row:SetItemID(value) end

---Gets element at 1-based index in 'ItemID'.
---@param index integer
---@return integer value
function row:GetItemIDItem(index) end

---Navigates foreign relationship to 'Item' via 'ItemID'.
---@return dbc.row.v1215.Item|nil
function row:GetItem() end

---Creates a related 'Item' row and automatically links 'ItemID'.
---@param data? table
---@return dbc.row.v1215.Item
function row:CreateRelated(data) end

---Gets the value of field 'ItemCount'.
---@return integer[] value
function row:GetItemCount() end

---Sets the value of field 'ItemCount'.
---@param value integer[]
---@return dbc.row.v1215.ItemExtendedCost self
function row:SetItemCount(value) end

---Gets element at 1-based index in 'ItemCount'.
---@param index integer
---@return integer value
function row:GetItemCountItem(index) end

---Gets the value of field 'CurrencyID'.
---@return integer[] value
function row:GetCurrencyID() end

---Sets the value of field 'CurrencyID'.
---@param value integer[]
---@return dbc.row.v1215.ItemExtendedCost self
function row:SetCurrencyID(value) end

---Gets element at 1-based index in 'CurrencyID'.
---@param index integer
---@return integer value
function row:GetCurrencyIDItem(index) end

---Navigates foreign relationship to 'CurrencyTypes' via 'CurrencyID'.
---@return dbc.row.v1215.CurrencyTypes|nil
function row:GetCurrency() end

---Creates a related 'CurrencyTypes' row and automatically links 'CurrencyID'.
---@param data? table
---@return dbc.row.v1215.CurrencyTypes
function row:CreateRelated(data) end

---Gets the value of field 'CurrencyCount'.
---@return integer[] value
function row:GetCurrencyCount() end

---Sets the value of field 'CurrencyCount'.
---@param value integer[]
---@return dbc.row.v1215.ItemExtendedCost self
function row:SetCurrencyCount(value) end

---Gets element at 1-based index in 'CurrencyCount'.
---@param index integer
---@return integer value
function row:GetCurrencyCountItem(index) end

---Table container for ItemExtendedCost (Build 12.1.5.69594).
---@class dbc.Table.v1215.ItemExtendedCost : DbcTable
---@field [integer] dbc.row.v1215.ItemExtendedCost
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ItemExtendedCost
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ItemExtendedCost|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ItemExtendedCost
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ItemExtendedCost>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ItemExtendedCost[]
function tbl:GetByRelation(foreign_id) end

return {}
