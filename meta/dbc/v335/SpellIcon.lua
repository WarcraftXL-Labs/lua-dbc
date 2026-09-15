---@meta
-- Generated LuaLS annotations for SpellIcon (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of SpellIcon in build 3.3.5.12340.
---@class dbc.row.v335.SpellIcon : RowProxy
---@field ID integer
---@field TextureFilename string

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.SpellIcon self
function row:SetID(value) end

---Gets the value of field 'TextureFilename'.
---@return string value
function row:GetTextureFilename() end

---Sets the value of field 'TextureFilename'.
---@param value string
---@return dbc.row.v335.SpellIcon self
function row:SetTextureFilename(value) end

---Table container for SpellIcon (Build 3.3.5.12340).
---@class dbc.Table.v335.SpellIcon : DbcTable
---@field [integer] dbc.row.v335.SpellIcon
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.SpellIcon
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.SpellIcon|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.SpellIcon
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.SpellIcon>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.SpellIcon[]
function tbl:GetByRelation(foreign_id) end

return {}
