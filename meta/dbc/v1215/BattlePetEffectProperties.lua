---@meta
-- Generated LuaLS annotations for BattlePetEffectProperties (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of BattlePetEffectProperties in build 12.1.5.69594.
---@class dbc.row.v1215.BattlePetEffectProperties : RowProxy
---@field ID integer
---@field ParamLabel string[]
---@field BattlePetVisualID integer
---@field ParamTypeEnum integer[] 1: param is BattlePetAbilityID

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.BattlePetEffectProperties self
function row:SetID(value) end

---Gets the value of field 'ParamLabel'.
---@return string[] value
function row:GetParamLabel() end

---Sets the value of field 'ParamLabel'.
---@param value string[]
---@return dbc.row.v1215.BattlePetEffectProperties self
function row:SetParamLabel(value) end

---Gets element at 1-based index in 'ParamLabel'.
---@param index integer
---@return string value
function row:GetParamLabelItem(index) end

---Gets the value of field 'BattlePetVisualID'.
---@return integer value
function row:GetBattlePetVisualID() end

---Sets the value of field 'BattlePetVisualID'.
---@param value integer
---@return dbc.row.v1215.BattlePetEffectProperties self
function row:SetBattlePetVisualID(value) end

---Navigates foreign relationship to 'BattlePetVisual' via 'BattlePetVisualID'.
---@return dbc.row.v1215.BattlePetVisual|nil
function row:GetBattlePetVisual() end

---Creates a related 'BattlePetVisual' row and automatically links 'BattlePetVisualID'.
---@param data? table
---@return dbc.row.v1215.BattlePetVisual
function row:CreateRelated(data) end

---Gets the value of field 'ParamTypeEnum'.
---@return integer[] value
function row:GetParamTypeEnum() end

---Sets the value of field 'ParamTypeEnum'.
---@param value integer[]
---@return dbc.row.v1215.BattlePetEffectProperties self
function row:SetParamTypeEnum(value) end

---Gets element at 1-based index in 'ParamTypeEnum'.
---@param index integer
---@return integer value
function row:GetParamTypeEnumItem(index) end

---Table container for BattlePetEffectProperties (Build 12.1.5.69594).
---@class dbc.Table.v1215.BattlePetEffectProperties : DbcTable
---@field [integer] dbc.row.v1215.BattlePetEffectProperties
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.BattlePetEffectProperties
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.BattlePetEffectProperties|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.BattlePetEffectProperties
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.BattlePetEffectProperties>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.BattlePetEffectProperties[]
function tbl:GetByRelation(foreign_id) end

return {}
