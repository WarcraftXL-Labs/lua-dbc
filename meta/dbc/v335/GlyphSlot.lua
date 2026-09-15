---@meta
-- Generated LuaLS annotations for GlyphSlot (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of GlyphSlot in build 3.3.5.12340.
---@class dbc.row.v335.GlyphSlot : RowProxy
---@field ID integer
---@field Type integer
---@field Tooltip integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.GlyphSlot self
function row:SetID(value) end

---Gets the value of field 'Type'.
---@return integer value
function row:GetType() end

---Sets the value of field 'Type'.
---@param value integer
---@return dbc.row.v335.GlyphSlot self
function row:SetType(value) end

---Gets the value of field 'Tooltip'.
---@return integer value
function row:GetTooltip() end

---Sets the value of field 'Tooltip'.
---@param value integer
---@return dbc.row.v335.GlyphSlot self
function row:SetTooltip(value) end

---Table container for GlyphSlot (Build 3.3.5.12340).
---@class dbc.Table.v335.GlyphSlot : DbcTable
---@field [integer] dbc.row.v335.GlyphSlot
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.GlyphSlot
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.GlyphSlot|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.GlyphSlot
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.GlyphSlot>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.GlyphSlot[]
function tbl:GetByRelation(foreign_id) end

return {}
