---@meta
-- Generated LuaLS annotations for CurrencyContainer (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CurrencyContainer in build 12.1.5.69594.
---@class dbc.row.v1215.CurrencyContainer : RowProxy
---@field ID integer
---@field ContainerName_lang string
---@field ContainerDescription_lang string
---@field MinAmount integer
---@field MaxAmount integer
---@field ContainerIconID integer
---@field ContainerQuality integer
---@field OnLootSpellVisualKitID integer
---@field CurrencyTypeID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CurrencyContainer self
function row:SetID(value) end

---Gets the value of field 'ContainerName_lang'.
---@return string value
function row:GetContainerName_lang() end

---Sets the value of field 'ContainerName_lang'.
---@param value string
---@return dbc.row.v1215.CurrencyContainer self
function row:SetContainerName_lang(value) end

---Gets the value of field 'ContainerDescription_lang'.
---@return string value
function row:GetContainerDescription_lang() end

---Sets the value of field 'ContainerDescription_lang'.
---@param value string
---@return dbc.row.v1215.CurrencyContainer self
function row:SetContainerDescription_lang(value) end

---Gets the value of field 'MinAmount'.
---@return integer value
function row:GetMinAmount() end

---Sets the value of field 'MinAmount'.
---@param value integer
---@return dbc.row.v1215.CurrencyContainer self
function row:SetMinAmount(value) end

---Gets the value of field 'MaxAmount'.
---@return integer value
function row:GetMaxAmount() end

---Sets the value of field 'MaxAmount'.
---@param value integer
---@return dbc.row.v1215.CurrencyContainer self
function row:SetMaxAmount(value) end

---Gets the value of field 'ContainerIconID'.
---@return integer value
function row:GetContainerIconID() end

---Sets the value of field 'ContainerIconID'.
---@param value integer
---@return dbc.row.v1215.CurrencyContainer self
function row:SetContainerIconID(value) end

---Navigates foreign relationship to 'FileData' via 'ContainerIconID'.
---@return dbc.row.v1215.FileData|nil
function row:GetContainerIcon() end

---Creates a related 'FileData' row and automatically links 'ContainerIconID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'ContainerQuality'.
---@return integer value
function row:GetContainerQuality() end

---Sets the value of field 'ContainerQuality'.
---@param value integer
---@return dbc.row.v1215.CurrencyContainer self
function row:SetContainerQuality(value) end

---Gets the value of field 'OnLootSpellVisualKitID'.
---@return integer value
function row:GetOnLootSpellVisualKitID() end

---Sets the value of field 'OnLootSpellVisualKitID'.
---@param value integer
---@return dbc.row.v1215.CurrencyContainer self
function row:SetOnLootSpellVisualKitID(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'OnLootSpellVisualKitID'.
---@return dbc.row.v1215.SpellVisualKit|nil
function row:GetOnLootSpellVisualKit() end

---Creates a related 'SpellVisualKit' row and automatically links 'OnLootSpellVisualKitID'.
---@param data? table
---@return dbc.row.v1215.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'CurrencyTypeID'.
---@return integer value
function row:GetCurrencyTypeID() end

---Sets the value of field 'CurrencyTypeID'.
---@param value integer
---@return dbc.row.v1215.CurrencyContainer self
function row:SetCurrencyTypeID(value) end

---Navigates foreign relationship to 'CurrencyTypes' via 'CurrencyTypeID'.
---@return dbc.row.v1215.CurrencyTypes|nil
function row:GetCurrencyType() end

---Creates a related 'CurrencyTypes' row and automatically links 'CurrencyTypeID'.
---@param data? table
---@return dbc.row.v1215.CurrencyTypes
function row:CreateRelated(data) end

---Table container for CurrencyContainer (Build 12.1.5.69594).
---@class dbc.Table.v1215.CurrencyContainer : DbcTable
---@field [integer] dbc.row.v1215.CurrencyContainer
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CurrencyContainer
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CurrencyContainer|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CurrencyContainer
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CurrencyContainer>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CurrencyContainer[]
function tbl:GetByRelation(foreign_id) end

return {}
