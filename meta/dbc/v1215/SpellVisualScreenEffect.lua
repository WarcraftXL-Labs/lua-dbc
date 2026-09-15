---@meta
-- Generated LuaLS annotations for SpellVisualScreenEffect (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SpellVisualScreenEffect in build 12.1.5.69594.
---@class dbc.row.v1215.SpellVisualScreenEffect : RowProxy
---@field ID integer
---@field ScreenEffectID integer
---@field ScreenEffectTypeID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SpellVisualScreenEffect self
function row:SetID(value) end

---Gets the value of field 'ScreenEffectID'.
---@return integer value
function row:GetScreenEffectID() end

---Sets the value of field 'ScreenEffectID'.
---@param value integer
---@return dbc.row.v1215.SpellVisualScreenEffect self
function row:SetScreenEffectID(value) end

---Navigates foreign relationship to 'ScreenEffect' via 'ScreenEffectID'.
---@return dbc.row.v1215.ScreenEffect|nil
function row:GetScreenEffect() end

---Creates a related 'ScreenEffect' row and automatically links 'ScreenEffectID'.
---@param data? table
---@return dbc.row.v1215.ScreenEffect
function row:CreateRelated(data) end

---Gets the value of field 'ScreenEffectTypeID'.
---@return integer value
function row:GetScreenEffectTypeID() end

---Sets the value of field 'ScreenEffectTypeID'.
---@param value integer
---@return dbc.row.v1215.SpellVisualScreenEffect self
function row:SetScreenEffectTypeID(value) end

---Navigates foreign relationship to 'ScreenEffectType' via 'ScreenEffectTypeID'.
---@return dbc.row.v1215.ScreenEffectType|nil
function row:GetScreenEffectType() end

---Creates a related 'ScreenEffectType' row and automatically links 'ScreenEffectTypeID'.
---@param data? table
---@return dbc.row.v1215.ScreenEffectType
function row:CreateRelated(data) end

---Table container for SpellVisualScreenEffect (Build 12.1.5.69594).
---@class dbc.Table.v1215.SpellVisualScreenEffect : DbcTable
---@field [integer] dbc.row.v1215.SpellVisualScreenEffect
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SpellVisualScreenEffect
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SpellVisualScreenEffect|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SpellVisualScreenEffect
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SpellVisualScreenEffect>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SpellVisualScreenEffect[]
function tbl:GetByRelation(foreign_id) end

return {}
