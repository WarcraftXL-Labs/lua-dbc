---@meta
-- Generated LuaLS annotations for GarrTalentTree (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GarrTalentTree in build 12.1.5.69594.
---@class dbc.row.v1215.GarrTalentTree : RowProxy
---@field ID integer
---@field Title_lang string
---@field GarrTypeID integer
---@field ClassID integer
---@field MaxTiers integer
---@field UiOrder integer
---@field Flags integer
---@field UiTextureKitID integer
---@field GarrTalentTreeType integer 0: Tiers, 1: Classic
---@field PlayerConditionID integer
---@field FeatureTypeIndex integer 0: Generic, 1: AnimaDiversion, 2: TravelPortals, 3: Adventures, 4: ReservoirUpgrades, 5: SanctumUnique, 6: SoulBinds, 7: AnimaDiversionMap
---@field FeatureSubtypeIndex integer 0: Generic, 1: Bastion, 2: Revendreth, 3: Maldraxxus, 4: Ardenweald
---@field CurrencyID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GarrTalentTree self
function row:SetID(value) end

---Gets the value of field 'Title_lang'.
---@return string value
function row:GetTitle_lang() end

---Sets the value of field 'Title_lang'.
---@param value string
---@return dbc.row.v1215.GarrTalentTree self
function row:SetTitle_lang(value) end

---Gets the value of field 'GarrTypeID'.
---@return integer value
function row:GetGarrTypeID() end

---Sets the value of field 'GarrTypeID'.
---@param value integer
---@return dbc.row.v1215.GarrTalentTree self
function row:SetGarrTypeID(value) end

---Navigates foreign relationship to 'GarrType' via 'GarrTypeID'.
---@return dbc.row.v1215.GarrType|nil
function row:GetGarrType() end

---Creates a related 'GarrType' row and automatically links 'GarrTypeID'.
---@param data? table
---@return dbc.row.v1215.GarrType
function row:CreateRelated(data) end

---Gets the value of field 'ClassID'.
---@return integer value
function row:GetClassID() end

---Sets the value of field 'ClassID'.
---@param value integer
---@return dbc.row.v1215.GarrTalentTree self
function row:SetClassID(value) end

---Navigates foreign relationship to 'ChrClasses' via 'ClassID'.
---@return dbc.row.v1215.ChrClasses|nil
function row:GetClass() end

---Creates a related 'ChrClasses' row and automatically links 'ClassID'.
---@param data? table
---@return dbc.row.v1215.ChrClasses
function row:CreateRelated(data) end

---Gets the value of field 'MaxTiers'.
---@return integer value
function row:GetMaxTiers() end

---Sets the value of field 'MaxTiers'.
---@param value integer
---@return dbc.row.v1215.GarrTalentTree self
function row:SetMaxTiers(value) end

---Gets the value of field 'UiOrder'.
---@return integer value
function row:GetUiOrder() end

---Sets the value of field 'UiOrder'.
---@param value integer
---@return dbc.row.v1215.GarrTalentTree self
function row:SetUiOrder(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.GarrTalentTree self
function row:SetFlags(value) end

---Gets the value of field 'UiTextureKitID'.
---@return integer value
function row:GetUiTextureKitID() end

---Sets the value of field 'UiTextureKitID'.
---@param value integer
---@return dbc.row.v1215.GarrTalentTree self
function row:SetUiTextureKitID(value) end

---Navigates foreign relationship to 'UiTextureKit' via 'UiTextureKitID'.
---@return dbc.row.v1215.UiTextureKit|nil
function row:GetUiTextureKit() end

---Creates a related 'UiTextureKit' row and automatically links 'UiTextureKitID'.
---@param data? table
---@return dbc.row.v1215.UiTextureKit
function row:CreateRelated(data) end

---Gets the value of field 'GarrTalentTreeType'.
---@return integer value
function row:GetGarrTalentTreeType() end

---Sets the value of field 'GarrTalentTreeType'.
---@param value integer
---@return dbc.row.v1215.GarrTalentTree self
function row:SetGarrTalentTreeType(value) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.GarrTalentTree self
function row:SetPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'FeatureTypeIndex'.
---@return integer value
function row:GetFeatureTypeIndex() end

---Sets the value of field 'FeatureTypeIndex'.
---@param value integer
---@return dbc.row.v1215.GarrTalentTree self
function row:SetFeatureTypeIndex(value) end

---Gets the value of field 'FeatureSubtypeIndex'.
---@return integer value
function row:GetFeatureSubtypeIndex() end

---Sets the value of field 'FeatureSubtypeIndex'.
---@param value integer
---@return dbc.row.v1215.GarrTalentTree self
function row:SetFeatureSubtypeIndex(value) end

---Gets the value of field 'CurrencyID'.
---@return integer value
function row:GetCurrencyID() end

---Sets the value of field 'CurrencyID'.
---@param value integer
---@return dbc.row.v1215.GarrTalentTree self
function row:SetCurrencyID(value) end

---Navigates foreign relationship to 'CurrencyTypes' via 'CurrencyID'.
---@return dbc.row.v1215.CurrencyTypes|nil
function row:GetCurrency() end

---Creates a related 'CurrencyTypes' row and automatically links 'CurrencyID'.
---@param data? table
---@return dbc.row.v1215.CurrencyTypes
function row:CreateRelated(data) end

---Table container for GarrTalentTree (Build 12.1.5.69594).
---@class dbc.Table.v1215.GarrTalentTree : DbcTable
---@field [integer] dbc.row.v1215.GarrTalentTree
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GarrTalentTree
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GarrTalentTree|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GarrTalentTree
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GarrTalentTree>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GarrTalentTree[]
function tbl:GetByRelation(foreign_id) end

return {}
