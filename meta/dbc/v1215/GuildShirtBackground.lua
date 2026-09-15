---@meta
-- Generated LuaLS annotations for GuildShirtBackground (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GuildShirtBackground in build 12.1.5.69594.
---@class dbc.row.v1215.GuildShirtBackground : RowProxy
---@field ID integer
---@field Component integer 0=au, 1=al, 3=tu, 4=tl
---@field FileDataID integer
---@field ShirtID integer
---@field Color integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GuildShirtBackground self
function row:SetID(value) end

---Gets the value of field 'Component'.
---@return integer value
function row:GetComponent() end

---Sets the value of field 'Component'.
---@param value integer
---@return dbc.row.v1215.GuildShirtBackground self
function row:SetComponent(value) end

---Gets the value of field 'FileDataID'.
---@return integer value
function row:GetFileDataID() end

---Sets the value of field 'FileDataID'.
---@param value integer
---@return dbc.row.v1215.GuildShirtBackground self
function row:SetFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'FileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetFileData() end

---Creates a related 'FileData' row and automatically links 'FileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'ShirtID'.
---@return integer value
function row:GetShirtID() end

---Sets the value of field 'ShirtID'.
---@param value integer
---@return dbc.row.v1215.GuildShirtBackground self
function row:SetShirtID(value) end

---Navigates foreign relationship to 'Shirt' via 'ShirtID'.
---@return dbc.row.v1215.Shirt|nil
function row:GetShirt() end

---Creates a related 'Shirt' row and automatically links 'ShirtID'.
---@param data? table
---@return dbc.row.v1215.Shirt
function row:CreateRelated(data) end

---Gets the value of field 'Color'.
---@return integer value
function row:GetColor() end

---Sets the value of field 'Color'.
---@param value integer
---@return dbc.row.v1215.GuildShirtBackground self
function row:SetColor(value) end

---Table container for GuildShirtBackground (Build 12.1.5.69594).
---@class dbc.Table.v1215.GuildShirtBackground : DbcTable
---@field [integer] dbc.row.v1215.GuildShirtBackground
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GuildShirtBackground
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GuildShirtBackground|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GuildShirtBackground
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GuildShirtBackground>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GuildShirtBackground[]
function tbl:GetByRelation(foreign_id) end

return {}
