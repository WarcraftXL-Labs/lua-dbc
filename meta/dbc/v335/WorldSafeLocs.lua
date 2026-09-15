---@meta
-- Generated LuaLS annotations for WorldSafeLocs (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of WorldSafeLocs in build 3.3.5.12340.
---@class dbc.row.v335.WorldSafeLocs : RowProxy
---@field ID integer
---@field Continent integer
---@field Loc number[]
---@field AreaName_lang string

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.WorldSafeLocs self
function row:SetID(value) end

---Gets the value of field 'Continent'.
---@return integer value
function row:GetContinent() end

---Sets the value of field 'Continent'.
---@param value integer
---@return dbc.row.v335.WorldSafeLocs self
function row:SetContinent(value) end

---Navigates foreign relationship to 'Map' via 'Continent'.
---@return dbc.row.v335.Map|nil
function row:GetContinent() end

---Creates a related 'Map' row and automatically links 'Continent'.
---@param data? table
---@return dbc.row.v335.Map
function row:CreateRelated(data) end

---Gets the value of field 'Loc'.
---@return number[] value
function row:GetLoc() end

---Sets the value of field 'Loc'.
---@param value number[]
---@return dbc.row.v335.WorldSafeLocs self
function row:SetLoc(value) end

---Gets element at 1-based index in 'Loc'.
---@param index integer
---@return number value
function row:GetLocItem(index) end

---Gets the value of field 'AreaName_lang'.
---@return string value
function row:GetAreaName_lang() end

---Sets the value of field 'AreaName_lang'.
---@param value string
---@return dbc.row.v335.WorldSafeLocs self
function row:SetAreaName_lang(value) end

---Table container for WorldSafeLocs (Build 3.3.5.12340).
---@class dbc.Table.v335.WorldSafeLocs : DbcTable
---@field [integer] dbc.row.v335.WorldSafeLocs
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.WorldSafeLocs
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.WorldSafeLocs|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.WorldSafeLocs
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.WorldSafeLocs>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.WorldSafeLocs[]
function tbl:GetByRelation(foreign_id) end

return {}
