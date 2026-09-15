---@meta
-- Generated LuaLS annotations for PowerType (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of PowerType in build 12.1.5.69594.
---@class dbc.row.v1215.PowerType : RowProxy
---@field NameGlobalStringTag string
---@field CostGlobalStringTag string
---@field ID integer
---@field PowerTypeEnum integer Not really an FK since that table does not exist in all versions, but that enum is still common across all versions.
---@field MinPower integer
---@field MaxBasePower integer
---@field CenterPower integer
---@field DefaultPower integer
---@field DisplayModifier integer
---@field RegenInterruptTimeMS integer
---@field RegenPeace number
---@field RegenCombat number
---@field Flags integer

local row = {}

---Gets the value of field 'NameGlobalStringTag'.
---@return string value
function row:GetNameGlobalStringTag() end

---Sets the value of field 'NameGlobalStringTag'.
---@param value string
---@return dbc.row.v1215.PowerType self
function row:SetNameGlobalStringTag(value) end

---Gets the value of field 'CostGlobalStringTag'.
---@return string value
function row:GetCostGlobalStringTag() end

---Sets the value of field 'CostGlobalStringTag'.
---@param value string
---@return dbc.row.v1215.PowerType self
function row:SetCostGlobalStringTag(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.PowerType self
function row:SetID(value) end

---Gets the value of field 'PowerTypeEnum'.
---@return integer value
function row:GetPowerTypeEnum() end

---Sets the value of field 'PowerTypeEnum'.
---@param value integer
---@return dbc.row.v1215.PowerType self
function row:SetPowerTypeEnum(value) end

---Navigates foreign relationship to 'PowerType' via 'PowerTypeEnum'.
---@return dbc.row.v1215.PowerType|nil
function row:GetPowerTypeEnum() end

---Creates a related 'PowerType' row and automatically links 'PowerTypeEnum'.
---@param data? table
---@return dbc.row.v1215.PowerType
function row:CreateRelated(data) end

---Gets the value of field 'MinPower'.
---@return integer value
function row:GetMinPower() end

---Sets the value of field 'MinPower'.
---@param value integer
---@return dbc.row.v1215.PowerType self
function row:SetMinPower(value) end

---Gets the value of field 'MaxBasePower'.
---@return integer value
function row:GetMaxBasePower() end

---Sets the value of field 'MaxBasePower'.
---@param value integer
---@return dbc.row.v1215.PowerType self
function row:SetMaxBasePower(value) end

---Gets the value of field 'CenterPower'.
---@return integer value
function row:GetCenterPower() end

---Sets the value of field 'CenterPower'.
---@param value integer
---@return dbc.row.v1215.PowerType self
function row:SetCenterPower(value) end

---Gets the value of field 'DefaultPower'.
---@return integer value
function row:GetDefaultPower() end

---Sets the value of field 'DefaultPower'.
---@param value integer
---@return dbc.row.v1215.PowerType self
function row:SetDefaultPower(value) end

---Gets the value of field 'DisplayModifier'.
---@return integer value
function row:GetDisplayModifier() end

---Sets the value of field 'DisplayModifier'.
---@param value integer
---@return dbc.row.v1215.PowerType self
function row:SetDisplayModifier(value) end

---Gets the value of field 'RegenInterruptTimeMS'.
---@return integer value
function row:GetRegenInterruptTimeMS() end

---Sets the value of field 'RegenInterruptTimeMS'.
---@param value integer
---@return dbc.row.v1215.PowerType self
function row:SetRegenInterruptTimeMS(value) end

---Gets the value of field 'RegenPeace'.
---@return number value
function row:GetRegenPeace() end

---Sets the value of field 'RegenPeace'.
---@param value number
---@return dbc.row.v1215.PowerType self
function row:SetRegenPeace(value) end

---Gets the value of field 'RegenCombat'.
---@return number value
function row:GetRegenCombat() end

---Sets the value of field 'RegenCombat'.
---@param value number
---@return dbc.row.v1215.PowerType self
function row:SetRegenCombat(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.PowerType self
function row:SetFlags(value) end

---Table container for PowerType (Build 12.1.5.69594).
---@class dbc.Table.v1215.PowerType : DbcTable
---@field [integer] dbc.row.v1215.PowerType
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.PowerType
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.PowerType|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.PowerType
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.PowerType>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.PowerType[]
function tbl:GetByRelation(foreign_id) end

return {}
