---@meta
-- Generated LuaLS annotations for LoadingScreenTaxiSplines (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of LoadingScreenTaxiSplines in build 12.1.5.69594.
---@class dbc.row.v1215.LoadingScreenTaxiSplines : RowProxy
---@field ID integer
---@field PathID integer
---@field LegIndex integer
---@field LoadingScreenID integer
---@field Locx number[]
---@field Locy number[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.LoadingScreenTaxiSplines self
function row:SetID(value) end

---Gets the value of field 'PathID'.
---@return integer value
function row:GetPathID() end

---Sets the value of field 'PathID'.
---@param value integer
---@return dbc.row.v1215.LoadingScreenTaxiSplines self
function row:SetPathID(value) end

---Navigates foreign relationship to 'TaxiPath' via 'PathID'.
---@return dbc.row.v1215.TaxiPath|nil
function row:GetPath() end

---Creates a related 'TaxiPath' row and automatically links 'PathID'.
---@param data? table
---@return dbc.row.v1215.TaxiPath
function row:CreateRelated(data) end

---Gets the value of field 'LegIndex'.
---@return integer value
function row:GetLegIndex() end

---Sets the value of field 'LegIndex'.
---@param value integer
---@return dbc.row.v1215.LoadingScreenTaxiSplines self
function row:SetLegIndex(value) end

---Gets the value of field 'LoadingScreenID'.
---@return integer value
function row:GetLoadingScreenID() end

---Sets the value of field 'LoadingScreenID'.
---@param value integer
---@return dbc.row.v1215.LoadingScreenTaxiSplines self
function row:SetLoadingScreenID(value) end

---Navigates foreign relationship to 'LoadingScreens' via 'LoadingScreenID'.
---@return dbc.row.v1215.LoadingScreens|nil
function row:GetLoadingScreen() end

---Creates a related 'LoadingScreens' row and automatically links 'LoadingScreenID'.
---@param data? table
---@return dbc.row.v1215.LoadingScreens
function row:CreateRelated(data) end

---Gets the value of field 'Locx'.
---@return number[] value
function row:GetLocx() end

---Sets the value of field 'Locx'.
---@param value number[]
---@return dbc.row.v1215.LoadingScreenTaxiSplines self
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
---@return dbc.row.v1215.LoadingScreenTaxiSplines self
function row:SetLocy(value) end

---Gets element at 1-based index in 'Locy'.
---@param index integer
---@return number value
function row:GetLocyItem(index) end

---Table container for LoadingScreenTaxiSplines (Build 12.1.5.69594).
---@class dbc.Table.v1215.LoadingScreenTaxiSplines : DbcTable
---@field [integer] dbc.row.v1215.LoadingScreenTaxiSplines
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.LoadingScreenTaxiSplines
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.LoadingScreenTaxiSplines|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.LoadingScreenTaxiSplines
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.LoadingScreenTaxiSplines>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.LoadingScreenTaxiSplines[]
function tbl:GetByRelation(foreign_id) end

return {}
