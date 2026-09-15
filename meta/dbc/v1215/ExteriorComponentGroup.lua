---@meta
-- Generated LuaLS annotations for ExteriorComponentGroup (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ExteriorComponentGroup in build 12.1.5.69594.
---@class dbc.row.v1215.ExteriorComponentGroup : RowProxy
---@field Field_11_2_7_64044_000 number[]
---@field ID integer
---@field HouseExteriorWmoDataID integer

local row = {}

---Gets the value of field 'Field_11_2_7_64044_000'.
---@return number[] value
function row:GetField_11_2_7_64044_000() end

---Sets the value of field 'Field_11_2_7_64044_000'.
---@param value number[]
---@return dbc.row.v1215.ExteriorComponentGroup self
function row:SetField_11_2_7_64044_000(value) end

---Gets element at 1-based index in 'Field_11_2_7_64044_000'.
---@param index integer
---@return number value
function row:GetField_11_2_7_64044_000Item(index) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ExteriorComponentGroup self
function row:SetID(value) end

---Gets the value of field 'HouseExteriorWmoDataID'.
---@return integer value
function row:GetHouseExteriorWmoDataID() end

---Sets the value of field 'HouseExteriorWmoDataID'.
---@param value integer
---@return dbc.row.v1215.ExteriorComponentGroup self
function row:SetHouseExteriorWmoDataID(value) end

---Navigates foreign relationship to 'HouseExteriorWmoData' via 'HouseExteriorWmoDataID'.
---@return dbc.row.v1215.HouseExteriorWmoData|nil
function row:GetHouseExteriorWmoData() end

---Creates a related 'HouseExteriorWmoData' row and automatically links 'HouseExteriorWmoDataID'.
---@param data? table
---@return dbc.row.v1215.HouseExteriorWmoData
function row:CreateRelated(data) end

---Table container for ExteriorComponentGroup (Build 12.1.5.69594).
---@class dbc.Table.v1215.ExteriorComponentGroup : DbcTable
---@field [integer] dbc.row.v1215.ExteriorComponentGroup
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ExteriorComponentGroup
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ExteriorComponentGroup|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ExteriorComponentGroup
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ExteriorComponentGroup>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ExteriorComponentGroup[]
function tbl:GetByRelation(foreign_id) end

return {}
