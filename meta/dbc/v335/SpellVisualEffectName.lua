---@meta
-- Generated LuaLS annotations for SpellVisualEffectName (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of SpellVisualEffectName in build 3.3.5.12340.
---@class dbc.row.v335.SpellVisualEffectName : RowProxy
---@field ID integer
---@field Name string
---@field FileName string
---@field AreaEffectSize number
---@field Scale number
---@field MinAllowedScale number
---@field MaxAllowedScale number

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.SpellVisualEffectName self
function row:SetID(value) end

---Gets the value of field 'Name'.
---@return string value
function row:GetName() end

---Sets the value of field 'Name'.
---@param value string
---@return dbc.row.v335.SpellVisualEffectName self
function row:SetName(value) end

---Gets the value of field 'FileName'.
---@return string value
function row:GetFileName() end

---Sets the value of field 'FileName'.
---@param value string
---@return dbc.row.v335.SpellVisualEffectName self
function row:SetFileName(value) end

---Gets the value of field 'AreaEffectSize'.
---@return number value
function row:GetAreaEffectSize() end

---Sets the value of field 'AreaEffectSize'.
---@param value number
---@return dbc.row.v335.SpellVisualEffectName self
function row:SetAreaEffectSize(value) end

---Gets the value of field 'Scale'.
---@return number value
function row:GetScale() end

---Sets the value of field 'Scale'.
---@param value number
---@return dbc.row.v335.SpellVisualEffectName self
function row:SetScale(value) end

---Gets the value of field 'MinAllowedScale'.
---@return number value
function row:GetMinAllowedScale() end

---Sets the value of field 'MinAllowedScale'.
---@param value number
---@return dbc.row.v335.SpellVisualEffectName self
function row:SetMinAllowedScale(value) end

---Gets the value of field 'MaxAllowedScale'.
---@return number value
function row:GetMaxAllowedScale() end

---Sets the value of field 'MaxAllowedScale'.
---@param value number
---@return dbc.row.v335.SpellVisualEffectName self
function row:SetMaxAllowedScale(value) end

---Table container for SpellVisualEffectName (Build 3.3.5.12340).
---@class dbc.Table.v335.SpellVisualEffectName : DbcTable
---@field [integer] dbc.row.v335.SpellVisualEffectName
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.SpellVisualEffectName
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.SpellVisualEffectName|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.SpellVisualEffectName
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.SpellVisualEffectName>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.SpellVisualEffectName[]
function tbl:GetByRelation(foreign_id) end

return {}
