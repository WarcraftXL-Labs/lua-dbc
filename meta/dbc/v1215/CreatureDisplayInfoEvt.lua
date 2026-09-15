---@meta
-- Generated LuaLS annotations for CreatureDisplayInfoEvt (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CreatureDisplayInfoEvt in build 12.1.5.69594.
---@class dbc.row.v1215.CreatureDisplayInfoEvt : RowProxy
---@field ID integer
---@field Fourcc integer
---@field SpellVisualKitID integer
---@field Flags integer
---@field CreatureDisplayInfoID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CreatureDisplayInfoEvt self
function row:SetID(value) end

---Gets the value of field 'Fourcc'.
---@return integer value
function row:GetFourcc() end

---Sets the value of field 'Fourcc'.
---@param value integer
---@return dbc.row.v1215.CreatureDisplayInfoEvt self
function row:SetFourcc(value) end

---Gets the value of field 'SpellVisualKitID'.
---@return integer value
function row:GetSpellVisualKitID() end

---Sets the value of field 'SpellVisualKitID'.
---@param value integer
---@return dbc.row.v1215.CreatureDisplayInfoEvt self
function row:SetSpellVisualKitID(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'SpellVisualKitID'.
---@return dbc.row.v1215.SpellVisualKit|nil
function row:GetSpellVisualKit() end

---Creates a related 'SpellVisualKit' row and automatically links 'SpellVisualKitID'.
---@param data? table
---@return dbc.row.v1215.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.CreatureDisplayInfoEvt self
function row:SetFlags(value) end

---Gets the value of field 'CreatureDisplayInfoID'.
---@return integer value
function row:GetCreatureDisplayInfoID() end

---Sets the value of field 'CreatureDisplayInfoID'.
---@param value integer
---@return dbc.row.v1215.CreatureDisplayInfoEvt self
function row:SetCreatureDisplayInfoID(value) end

---Navigates foreign relationship to 'CreatureDisplayInfo' via 'CreatureDisplayInfoID'.
---@return dbc.row.v1215.CreatureDisplayInfo|nil
function row:GetCreatureDisplayInfo() end

---Creates a related 'CreatureDisplayInfo' row and automatically links 'CreatureDisplayInfoID'.
---@param data? table
---@return dbc.row.v1215.CreatureDisplayInfo
function row:CreateRelated(data) end

---Table container for CreatureDisplayInfoEvt (Build 12.1.5.69594).
---@class dbc.Table.v1215.CreatureDisplayInfoEvt : DbcTable
---@field [integer] dbc.row.v1215.CreatureDisplayInfoEvt
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CreatureDisplayInfoEvt
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CreatureDisplayInfoEvt|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CreatureDisplayInfoEvt
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CreatureDisplayInfoEvt>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CreatureDisplayInfoEvt[]
function tbl:GetByRelation(foreign_id) end

return {}
