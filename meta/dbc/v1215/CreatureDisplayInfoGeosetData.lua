---@meta
-- Generated LuaLS annotations for CreatureDisplayInfoGeosetData (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CreatureDisplayInfoGeosetData in build 12.1.5.69594.
---@class dbc.row.v1215.CreatureDisplayInfoGeosetData : RowProxy
---@field ID integer
---@field GeosetIndex integer
---@field GeosetValue integer
---@field CreatureDisplayInfoID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CreatureDisplayInfoGeosetData self
function row:SetID(value) end

---Gets the value of field 'GeosetIndex'.
---@return integer value
function row:GetGeosetIndex() end

---Sets the value of field 'GeosetIndex'.
---@param value integer
---@return dbc.row.v1215.CreatureDisplayInfoGeosetData self
function row:SetGeosetIndex(value) end

---Gets the value of field 'GeosetValue'.
---@return integer value
function row:GetGeosetValue() end

---Sets the value of field 'GeosetValue'.
---@param value integer
---@return dbc.row.v1215.CreatureDisplayInfoGeosetData self
function row:SetGeosetValue(value) end

---Gets the value of field 'CreatureDisplayInfoID'.
---@return integer value
function row:GetCreatureDisplayInfoID() end

---Sets the value of field 'CreatureDisplayInfoID'.
---@param value integer
---@return dbc.row.v1215.CreatureDisplayInfoGeosetData self
function row:SetCreatureDisplayInfoID(value) end

---Navigates foreign relationship to 'CreatureDisplayInfo' via 'CreatureDisplayInfoID'.
---@return dbc.row.v1215.CreatureDisplayInfo|nil
function row:GetCreatureDisplayInfo() end

---Creates a related 'CreatureDisplayInfo' row and automatically links 'CreatureDisplayInfoID'.
---@param data? table
---@return dbc.row.v1215.CreatureDisplayInfo
function row:CreateRelated(data) end

---Table container for CreatureDisplayInfoGeosetData (Build 12.1.5.69594).
---@class dbc.Table.v1215.CreatureDisplayInfoGeosetData : DbcTable
---@field [integer] dbc.row.v1215.CreatureDisplayInfoGeosetData
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CreatureDisplayInfoGeosetData
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CreatureDisplayInfoGeosetData|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CreatureDisplayInfoGeosetData
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CreatureDisplayInfoGeosetData>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CreatureDisplayInfoGeosetData[]
function tbl:GetByRelation(foreign_id) end

return {}
