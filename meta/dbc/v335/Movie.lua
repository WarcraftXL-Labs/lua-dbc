---@meta
-- Generated LuaLS annotations for Movie (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of Movie in build 3.3.5.12340.
---@class dbc.row.v335.Movie : RowProxy
---@field ID integer
---@field Filename string
---@field Volume integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.Movie self
function row:SetID(value) end

---Gets the value of field 'Filename'.
---@return string value
function row:GetFilename() end

---Sets the value of field 'Filename'.
---@param value string
---@return dbc.row.v335.Movie self
function row:SetFilename(value) end

---Gets the value of field 'Volume'.
---@return integer value
function row:GetVolume() end

---Sets the value of field 'Volume'.
---@param value integer
---@return dbc.row.v335.Movie self
function row:SetVolume(value) end

---Table container for Movie (Build 3.3.5.12340).
---@class dbc.Table.v335.Movie : DbcTable
---@field [integer] dbc.row.v335.Movie
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.Movie
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.Movie|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.Movie
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.Movie>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.Movie[]
function tbl:GetByRelation(foreign_id) end

return {}
