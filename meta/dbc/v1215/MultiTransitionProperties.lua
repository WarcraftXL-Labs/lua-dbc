---@meta
-- Generated LuaLS annotations for MultiTransitionProperties (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of MultiTransitionProperties in build 12.1.5.69594.
---@class dbc.row.v1215.MultiTransitionProperties : RowProxy
---@field ID integer
---@field TransitionType integer
---@field DurationMS integer
---@field Flags integer
---@field StartSpellVisualKitID integer
---@field EndSpellVisualKitID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.MultiTransitionProperties self
function row:SetID(value) end

---Gets the value of field 'TransitionType'.
---@return integer value
function row:GetTransitionType() end

---Sets the value of field 'TransitionType'.
---@param value integer
---@return dbc.row.v1215.MultiTransitionProperties self
function row:SetTransitionType(value) end

---Gets the value of field 'DurationMS'.
---@return integer value
function row:GetDurationMS() end

---Sets the value of field 'DurationMS'.
---@param value integer
---@return dbc.row.v1215.MultiTransitionProperties self
function row:SetDurationMS(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.MultiTransitionProperties self
function row:SetFlags(value) end

---Gets the value of field 'StartSpellVisualKitID'.
---@return integer value
function row:GetStartSpellVisualKitID() end

---Sets the value of field 'StartSpellVisualKitID'.
---@param value integer
---@return dbc.row.v1215.MultiTransitionProperties self
function row:SetStartSpellVisualKitID(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'StartSpellVisualKitID'.
---@return dbc.row.v1215.SpellVisualKit|nil
function row:GetStartSpellVisualKit() end

---Creates a related 'SpellVisualKit' row and automatically links 'StartSpellVisualKitID'.
---@param data? table
---@return dbc.row.v1215.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'EndSpellVisualKitID'.
---@return integer value
function row:GetEndSpellVisualKitID() end

---Sets the value of field 'EndSpellVisualKitID'.
---@param value integer
---@return dbc.row.v1215.MultiTransitionProperties self
function row:SetEndSpellVisualKitID(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'EndSpellVisualKitID'.
---@return dbc.row.v1215.SpellVisualKit|nil
function row:GetEndSpellVisualKit() end

---Creates a related 'SpellVisualKit' row and automatically links 'EndSpellVisualKitID'.
---@param data? table
---@return dbc.row.v1215.SpellVisualKit
function row:CreateRelated(data) end

---Table container for MultiTransitionProperties (Build 12.1.5.69594).
---@class dbc.Table.v1215.MultiTransitionProperties : DbcTable
---@field [integer] dbc.row.v1215.MultiTransitionProperties
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.MultiTransitionProperties
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.MultiTransitionProperties|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.MultiTransitionProperties
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.MultiTransitionProperties>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.MultiTransitionProperties[]
function tbl:GetByRelation(foreign_id) end

return {}
