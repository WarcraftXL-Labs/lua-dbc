---@meta
-- Generated LuaLS annotations for WaypointMapVolume (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of WaypointMapVolume in build 12.1.5.69594.
---@class dbc.row.v1215.WaypointMapVolume : RowProxy
---@field ID integer
---@field Bounds number[]
---@field Field_11_1_0_58221_001 integer
---@field Field_11_1_0_58221_002 integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.WaypointMapVolume self
function row:SetID(value) end

---Gets the value of field 'Bounds'.
---@return number[] value
function row:GetBounds() end

---Sets the value of field 'Bounds'.
---@param value number[]
---@return dbc.row.v1215.WaypointMapVolume self
function row:SetBounds(value) end

---Gets element at 1-based index in 'Bounds'.
---@param index integer
---@return number value
function row:GetBoundsItem(index) end

---Gets the value of field 'Field_11_1_0_58221_001'.
---@return integer value
function row:GetField_11_1_0_58221_001() end

---Sets the value of field 'Field_11_1_0_58221_001'.
---@param value integer
---@return dbc.row.v1215.WaypointMapVolume self
function row:SetField_11_1_0_58221_001(value) end

---Gets the value of field 'Field_11_1_0_58221_002'.
---@return integer value
function row:GetField_11_1_0_58221_002() end

---Sets the value of field 'Field_11_1_0_58221_002'.
---@param value integer
---@return dbc.row.v1215.WaypointMapVolume self
function row:SetField_11_1_0_58221_002(value) end

---Table container for WaypointMapVolume (Build 12.1.5.69594).
---@class dbc.Table.v1215.WaypointMapVolume : DbcTable
---@field [integer] dbc.row.v1215.WaypointMapVolume
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.WaypointMapVolume
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.WaypointMapVolume|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.WaypointMapVolume
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.WaypointMapVolume>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.WaypointMapVolume[]
function tbl:GetByRelation(foreign_id) end

return {}
