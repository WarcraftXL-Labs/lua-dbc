---@meta
-- Generated LuaLS annotations for TraitCurrency (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of TraitCurrency in build 12.1.5.69594.
---@class dbc.row.v1215.TraitCurrency : RowProxy
---@field ID integer
---@field Type integer 0: Gold, 1: CurrencyTypesBased, 2: TraitSourced
---@field CurrencyTypesID integer if Type == CurrencyTypesBased
---@field Flags integer &1: ShowQuantityAsSpent, &2: TraitSourcedShowMax, &4: UseClassIcon, &8: UseSpecIcon
---@field Icon integer
---@field PlayerDataElementAccountID integer
---@field PlayerDataElementCharacterID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.TraitCurrency self
function row:SetID(value) end

---Gets the value of field 'Type'.
---@return integer value
function row:GetType() end

---Sets the value of field 'Type'.
---@param value integer
---@return dbc.row.v1215.TraitCurrency self
function row:SetType(value) end

---Gets the value of field 'CurrencyTypesID'.
---@return integer value
function row:GetCurrencyTypesID() end

---Sets the value of field 'CurrencyTypesID'.
---@param value integer
---@return dbc.row.v1215.TraitCurrency self
function row:SetCurrencyTypesID(value) end

---Navigates foreign relationship to 'CurrencyTypes' via 'CurrencyTypesID'.
---@return dbc.row.v1215.CurrencyTypes|nil
function row:GetCurrencyTypes() end

---Creates a related 'CurrencyTypes' row and automatically links 'CurrencyTypesID'.
---@param data? table
---@return dbc.row.v1215.CurrencyTypes
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.TraitCurrency self
function row:SetFlags(value) end

---Gets the value of field 'Icon'.
---@return integer value
function row:GetIcon() end

---Sets the value of field 'Icon'.
---@param value integer
---@return dbc.row.v1215.TraitCurrency self
function row:SetIcon(value) end

---Navigates foreign relationship to 'FileData' via 'Icon'.
---@return dbc.row.v1215.FileData|nil
function row:GetIcon() end

---Creates a related 'FileData' row and automatically links 'Icon'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'PlayerDataElementAccountID'.
---@return integer value
function row:GetPlayerDataElementAccountID() end

---Sets the value of field 'PlayerDataElementAccountID'.
---@param value integer
---@return dbc.row.v1215.TraitCurrency self
function row:SetPlayerDataElementAccountID(value) end

---Navigates foreign relationship to 'PlayerDataElementAccount' via 'PlayerDataElementAccountID'.
---@return dbc.row.v1215.PlayerDataElementAccount|nil
function row:GetPlayerDataElementAccount() end

---Creates a related 'PlayerDataElementAccount' row and automatically links 'PlayerDataElementAccountID'.
---@param data? table
---@return dbc.row.v1215.PlayerDataElementAccount
function row:CreateRelated(data) end

---Gets the value of field 'PlayerDataElementCharacterID'.
---@return integer value
function row:GetPlayerDataElementCharacterID() end

---Sets the value of field 'PlayerDataElementCharacterID'.
---@param value integer
---@return dbc.row.v1215.TraitCurrency self
function row:SetPlayerDataElementCharacterID(value) end

---Navigates foreign relationship to 'PlayerDataElementCharacter' via 'PlayerDataElementCharacterID'.
---@return dbc.row.v1215.PlayerDataElementCharacter|nil
function row:GetPlayerDataElementCharacter() end

---Creates a related 'PlayerDataElementCharacter' row and automatically links 'PlayerDataElementCharacterID'.
---@param data? table
---@return dbc.row.v1215.PlayerDataElementCharacter
function row:CreateRelated(data) end

---Table container for TraitCurrency (Build 12.1.5.69594).
---@class dbc.Table.v1215.TraitCurrency : DbcTable
---@field [integer] dbc.row.v1215.TraitCurrency
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.TraitCurrency
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.TraitCurrency|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.TraitCurrency
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.TraitCurrency>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.TraitCurrency[]
function tbl:GetByRelation(foreign_id) end

return {}
