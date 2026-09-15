---@meta
-- Generated LuaLS annotations for ChrCustItemGeoModify (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ChrCustItemGeoModify in build 12.1.5.69594.
---@class dbc.row.v1215.ChrCustItemGeoModify : RowProxy
---@field ID integer
---@field GeosetType integer
---@field Original integer
---@field Override integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ChrCustItemGeoModify self
function row:SetID(value) end

---Gets the value of field 'GeosetType'.
---@return integer value
function row:GetGeosetType() end

---Sets the value of field 'GeosetType'.
---@param value integer
---@return dbc.row.v1215.ChrCustItemGeoModify self
function row:SetGeosetType(value) end

---Gets the value of field 'Original'.
---@return integer value
function row:GetOriginal() end

---Sets the value of field 'Original'.
---@param value integer
---@return dbc.row.v1215.ChrCustItemGeoModify self
function row:SetOriginal(value) end

---Gets the value of field 'Override'.
---@return integer value
function row:GetOverride() end

---Sets the value of field 'Override'.
---@param value integer
---@return dbc.row.v1215.ChrCustItemGeoModify self
function row:SetOverride(value) end

---Table container for ChrCustItemGeoModify (Build 12.1.5.69594).
---@class dbc.Table.v1215.ChrCustItemGeoModify : DbcTable
---@field [integer] dbc.row.v1215.ChrCustItemGeoModify
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ChrCustItemGeoModify
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ChrCustItemGeoModify|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ChrCustItemGeoModify
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ChrCustItemGeoModify>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ChrCustItemGeoModify[]
function tbl:GetByRelation(foreign_id) end

return {}
