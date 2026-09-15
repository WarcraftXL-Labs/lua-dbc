---@meta
-- Generated LuaLS annotations for SpellSpecialUnitEffect (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SpellSpecialUnitEffect in build 12.1.5.69594.
---@class dbc.row.v1215.SpellSpecialUnitEffect : RowProxy
---@field ID integer
---@field SpellVisualEffectNameID integer
---@field PositionerID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SpellSpecialUnitEffect self
function row:SetID(value) end

---Gets the value of field 'SpellVisualEffectNameID'.
---@return integer value
function row:GetSpellVisualEffectNameID() end

---Sets the value of field 'SpellVisualEffectNameID'.
---@param value integer
---@return dbc.row.v1215.SpellSpecialUnitEffect self
function row:SetSpellVisualEffectNameID(value) end

---Navigates foreign relationship to 'SpellVisualEffectName' via 'SpellVisualEffectNameID'.
---@return dbc.row.v1215.SpellVisualEffectName|nil
function row:GetSpellVisualEffectName() end

---Creates a related 'SpellVisualEffectName' row and automatically links 'SpellVisualEffectNameID'.
---@param data? table
---@return dbc.row.v1215.SpellVisualEffectName
function row:CreateRelated(data) end

---Gets the value of field 'PositionerID'.
---@return integer value
function row:GetPositionerID() end

---Sets the value of field 'PositionerID'.
---@param value integer
---@return dbc.row.v1215.SpellSpecialUnitEffect self
function row:SetPositionerID(value) end

---Navigates foreign relationship to 'Positioner' via 'PositionerID'.
---@return dbc.row.v1215.Positioner|nil
function row:GetPositioner() end

---Creates a related 'Positioner' row and automatically links 'PositionerID'.
---@param data? table
---@return dbc.row.v1215.Positioner
function row:CreateRelated(data) end

---Table container for SpellSpecialUnitEffect (Build 12.1.5.69594).
---@class dbc.Table.v1215.SpellSpecialUnitEffect : DbcTable
---@field [integer] dbc.row.v1215.SpellSpecialUnitEffect
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SpellSpecialUnitEffect
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SpellSpecialUnitEffect|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SpellSpecialUnitEffect
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SpellSpecialUnitEffect>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SpellSpecialUnitEffect[]
function tbl:GetByRelation(foreign_id) end

return {}
