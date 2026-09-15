---@meta
-- Generated LuaLS annotations for GuildColorBorder (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GuildColorBorder in build 12.1.5.69594.
---@class dbc.row.v1215.GuildColorBorder : RowProxy
---@field ID integer
---@field Red integer
---@field Blue integer
---@field Green integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GuildColorBorder self
function row:SetID(value) end

---Gets the value of field 'Red'.
---@return integer value
function row:GetRed() end

---Sets the value of field 'Red'.
---@param value integer
---@return dbc.row.v1215.GuildColorBorder self
function row:SetRed(value) end

---Gets the value of field 'Blue'.
---@return integer value
function row:GetBlue() end

---Sets the value of field 'Blue'.
---@param value integer
---@return dbc.row.v1215.GuildColorBorder self
function row:SetBlue(value) end

---Gets the value of field 'Green'.
---@return integer value
function row:GetGreen() end

---Sets the value of field 'Green'.
---@param value integer
---@return dbc.row.v1215.GuildColorBorder self
function row:SetGreen(value) end

---Table container for GuildColorBorder (Build 12.1.5.69594).
---@class dbc.Table.v1215.GuildColorBorder : DbcTable
---@field [integer] dbc.row.v1215.GuildColorBorder
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GuildColorBorder
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GuildColorBorder|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GuildColorBorder
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GuildColorBorder>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GuildColorBorder[]
function tbl:GetByRelation(foreign_id) end

return {}
