---@meta
-- Generated LuaLS annotations for GroundEffectDoodad (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of GroundEffectDoodad in build 3.3.5.12340.
---@class dbc.row.v335.GroundEffectDoodad : RowProxy
---@field ID integer
---@field Doodadpath string
---@field Flags integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.GroundEffectDoodad self
function row:SetID(value) end

---Gets the value of field 'Doodadpath'.
---@return string value
function row:GetDoodadpath() end

---Sets the value of field 'Doodadpath'.
---@param value string
---@return dbc.row.v335.GroundEffectDoodad self
function row:SetDoodadpath(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v335.GroundEffectDoodad self
function row:SetFlags(value) end

---Table container for GroundEffectDoodad (Build 3.3.5.12340).
---@class dbc.Table.v335.GroundEffectDoodad : DbcTable
---@field [integer] dbc.row.v335.GroundEffectDoodad
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.GroundEffectDoodad
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.GroundEffectDoodad|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.GroundEffectDoodad
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.GroundEffectDoodad>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.GroundEffectDoodad[]
function tbl:GetByRelation(foreign_id) end

return {}
