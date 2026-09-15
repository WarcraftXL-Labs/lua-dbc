---@meta
-- Generated LuaLS annotations for GarrTalentResearch (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GarrTalentResearch in build 12.1.5.69594.
---@class dbc.row.v1215.GarrTalentResearch : RowProxy
---@field ID integer
---@field GoldCost integer
---@field CurrencyTypesID integer
---@field CurrencyTypesCost integer
---@field DurationSecs integer
---@field RespecGoldCost integer
---@field RespecCurrencyTypesID integer
---@field RespecCurrencyTypesCost integer
---@field RespecDurationSecs integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GarrTalentResearch self
function row:SetID(value) end

---Gets the value of field 'GoldCost'.
---@return integer value
function row:GetGoldCost() end

---Sets the value of field 'GoldCost'.
---@param value integer
---@return dbc.row.v1215.GarrTalentResearch self
function row:SetGoldCost(value) end

---Gets the value of field 'CurrencyTypesID'.
---@return integer value
function row:GetCurrencyTypesID() end

---Sets the value of field 'CurrencyTypesID'.
---@param value integer
---@return dbc.row.v1215.GarrTalentResearch self
function row:SetCurrencyTypesID(value) end

---Navigates foreign relationship to 'CurrencyTypes' via 'CurrencyTypesID'.
---@return dbc.row.v1215.CurrencyTypes|nil
function row:GetCurrencyTypes() end

---Creates a related 'CurrencyTypes' row and automatically links 'CurrencyTypesID'.
---@param data? table
---@return dbc.row.v1215.CurrencyTypes
function row:CreateRelated(data) end

---Gets the value of field 'CurrencyTypesCost'.
---@return integer value
function row:GetCurrencyTypesCost() end

---Sets the value of field 'CurrencyTypesCost'.
---@param value integer
---@return dbc.row.v1215.GarrTalentResearch self
function row:SetCurrencyTypesCost(value) end

---Gets the value of field 'DurationSecs'.
---@return integer value
function row:GetDurationSecs() end

---Sets the value of field 'DurationSecs'.
---@param value integer
---@return dbc.row.v1215.GarrTalentResearch self
function row:SetDurationSecs(value) end

---Gets the value of field 'RespecGoldCost'.
---@return integer value
function row:GetRespecGoldCost() end

---Sets the value of field 'RespecGoldCost'.
---@param value integer
---@return dbc.row.v1215.GarrTalentResearch self
function row:SetRespecGoldCost(value) end

---Gets the value of field 'RespecCurrencyTypesID'.
---@return integer value
function row:GetRespecCurrencyTypesID() end

---Sets the value of field 'RespecCurrencyTypesID'.
---@param value integer
---@return dbc.row.v1215.GarrTalentResearch self
function row:SetRespecCurrencyTypesID(value) end

---Navigates foreign relationship to 'CurrencyTypes' via 'RespecCurrencyTypesID'.
---@return dbc.row.v1215.CurrencyTypes|nil
function row:GetRespecCurrencyTypes() end

---Creates a related 'CurrencyTypes' row and automatically links 'RespecCurrencyTypesID'.
---@param data? table
---@return dbc.row.v1215.CurrencyTypes
function row:CreateRelated(data) end

---Gets the value of field 'RespecCurrencyTypesCost'.
---@return integer value
function row:GetRespecCurrencyTypesCost() end

---Sets the value of field 'RespecCurrencyTypesCost'.
---@param value integer
---@return dbc.row.v1215.GarrTalentResearch self
function row:SetRespecCurrencyTypesCost(value) end

---Gets the value of field 'RespecDurationSecs'.
---@return integer value
function row:GetRespecDurationSecs() end

---Sets the value of field 'RespecDurationSecs'.
---@param value integer
---@return dbc.row.v1215.GarrTalentResearch self
function row:SetRespecDurationSecs(value) end

---Table container for GarrTalentResearch (Build 12.1.5.69594).
---@class dbc.Table.v1215.GarrTalentResearch : DbcTable
---@field [integer] dbc.row.v1215.GarrTalentResearch
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GarrTalentResearch
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GarrTalentResearch|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GarrTalentResearch
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GarrTalentResearch>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GarrTalentResearch[]
function tbl:GetByRelation(foreign_id) end

return {}
