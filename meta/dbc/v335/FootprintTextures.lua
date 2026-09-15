---@meta
-- Generated LuaLS annotations for FootprintTextures (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of FootprintTextures in build 3.3.5.12340.
---@class dbc.row.v335.FootprintTextures : RowProxy
---@field ID integer
---@field FootstepFilename string

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.FootprintTextures self
function row:SetID(value) end

---Gets the value of field 'FootstepFilename'.
---@return string value
function row:GetFootstepFilename() end

---Sets the value of field 'FootstepFilename'.
---@param value string
---@return dbc.row.v335.FootprintTextures self
function row:SetFootstepFilename(value) end

---Table container for FootprintTextures (Build 3.3.5.12340).
---@class dbc.Table.v335.FootprintTextures : DbcTable
---@field [integer] dbc.row.v335.FootprintTextures
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.FootprintTextures
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.FootprintTextures|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.FootprintTextures
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.FootprintTextures>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.FootprintTextures[]
function tbl:GetByRelation(foreign_id) end

return {}
