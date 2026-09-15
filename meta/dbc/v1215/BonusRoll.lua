---@meta
-- Generated LuaLS annotations for BonusRoll (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of BonusRoll in build 12.1.5.69594.
---@class dbc.row.v1215.BonusRoll : RowProxy
---@field ID integer
---@field CurrencyTypesID integer
---@field CurrencyCost integer
---@field JournalEncounterID integer
---@field JournalInstanceID integer
---@field Field_12_0_5_66330_004 integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.BonusRoll self
function row:SetID(value) end

---Gets the value of field 'CurrencyTypesID'.
---@return integer value
function row:GetCurrencyTypesID() end

---Sets the value of field 'CurrencyTypesID'.
---@param value integer
---@return dbc.row.v1215.BonusRoll self
function row:SetCurrencyTypesID(value) end

---Navigates foreign relationship to 'CurrencyTypes' via 'CurrencyTypesID'.
---@return dbc.row.v1215.CurrencyTypes|nil
function row:GetCurrencyTypes() end

---Creates a related 'CurrencyTypes' row and automatically links 'CurrencyTypesID'.
---@param data? table
---@return dbc.row.v1215.CurrencyTypes
function row:CreateRelated(data) end

---Gets the value of field 'CurrencyCost'.
---@return integer value
function row:GetCurrencyCost() end

---Sets the value of field 'CurrencyCost'.
---@param value integer
---@return dbc.row.v1215.BonusRoll self
function row:SetCurrencyCost(value) end

---Gets the value of field 'JournalEncounterID'.
---@return integer value
function row:GetJournalEncounterID() end

---Sets the value of field 'JournalEncounterID'.
---@param value integer
---@return dbc.row.v1215.BonusRoll self
function row:SetJournalEncounterID(value) end

---Navigates foreign relationship to 'JournalEncounter' via 'JournalEncounterID'.
---@return dbc.row.v1215.JournalEncounter|nil
function row:GetJournalEncounter() end

---Creates a related 'JournalEncounter' row and automatically links 'JournalEncounterID'.
---@param data? table
---@return dbc.row.v1215.JournalEncounter
function row:CreateRelated(data) end

---Gets the value of field 'JournalInstanceID'.
---@return integer value
function row:GetJournalInstanceID() end

---Sets the value of field 'JournalInstanceID'.
---@param value integer
---@return dbc.row.v1215.BonusRoll self
function row:SetJournalInstanceID(value) end

---Navigates foreign relationship to 'JournalInstance' via 'JournalInstanceID'.
---@return dbc.row.v1215.JournalInstance|nil
function row:GetJournalInstance() end

---Creates a related 'JournalInstance' row and automatically links 'JournalInstanceID'.
---@param data? table
---@return dbc.row.v1215.JournalInstance
function row:CreateRelated(data) end

---Gets the value of field 'Field_12_0_5_66330_004'.
---@return integer value
function row:GetField_12_0_5_66330_004() end

---Sets the value of field 'Field_12_0_5_66330_004'.
---@param value integer
---@return dbc.row.v1215.BonusRoll self
function row:SetField_12_0_5_66330_004(value) end

---Table container for BonusRoll (Build 12.1.5.69594).
---@class dbc.Table.v1215.BonusRoll : DbcTable
---@field [integer] dbc.row.v1215.BonusRoll
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.BonusRoll
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.BonusRoll|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.BonusRoll
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.BonusRoll>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.BonusRoll[]
function tbl:GetByRelation(foreign_id) end

return {}
