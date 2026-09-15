---@meta
-- Generated LuaLS annotations for LoadingScreenTaxiSplines (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of LoadingScreenTaxiSplines in build 3.3.5.12340.
---@class dbc.row.v335.LoadingScreenTaxiSplines : RowProxy
---@field ID integer
---@field PathID integer
---@field Locx number[]
---@field Locy number[]
---@field LegIndex integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.LoadingScreenTaxiSplines self
function row:SetID(value) end

---Gets the value of field 'PathID'.
---@return integer value
function row:GetPathID() end

---Sets the value of field 'PathID'.
---@param value integer
---@return dbc.row.v335.LoadingScreenTaxiSplines self
function row:SetPathID(value) end

---Navigates foreign relationship to 'TaxiPath' via 'PathID'.
---@return dbc.row.v335.TaxiPath|nil
function row:GetPath() end

---Creates a related 'TaxiPath' row and automatically links 'PathID'.
---@param data? table
---@return dbc.row.v335.TaxiPath
function row:CreateRelated(data) end

---Gets the value of field 'Locx'.
---@return number[] value
function row:GetLocx() end

---Sets the value of field 'Locx'.
---@param value number[]
---@return dbc.row.v335.LoadingScreenTaxiSplines self
function row:SetLocx(value) end

---Gets element at 1-based index in 'Locx'.
---@param index integer
---@return number value
function row:GetLocxItem(index) end

---Gets the value of field 'Locy'.
---@return number[] value
function row:GetLocy() end

---Sets the value of field 'Locy'.
---@param value number[]
---@return dbc.row.v335.LoadingScreenTaxiSplines self
function row:SetLocy(value) end

---Gets element at 1-based index in 'Locy'.
---@param index integer
---@return number value
function row:GetLocyItem(index) end

---Gets the value of field 'LegIndex'.
---@return integer value
function row:GetLegIndex() end

---Sets the value of field 'LegIndex'.
---@param value integer
---@return dbc.row.v335.LoadingScreenTaxiSplines self
function row:SetLegIndex(value) end

---Table container for LoadingScreenTaxiSplines (Build 3.3.5.12340).
---@class dbc.Table.v335.LoadingScreenTaxiSplines : DbcTable
---@field [integer] dbc.row.v335.LoadingScreenTaxiSplines
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.LoadingScreenTaxiSplines
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.LoadingScreenTaxiSplines|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.LoadingScreenTaxiSplines
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.LoadingScreenTaxiSplines>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.LoadingScreenTaxiSplines[]
function tbl:GetByRelation(foreign_id) end

return {}
