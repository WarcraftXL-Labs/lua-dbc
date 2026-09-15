---@meta
-- Generated LuaLS annotations for RoomWmoData (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of RoomWmoData in build 12.1.5.69594.
---@class dbc.row.v1215.RoomWmoData : RowProxy
---@field ID integer
---@field BoundingBox number[]
---@field Height number

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.RoomWmoData self
function row:SetID(value) end

---Gets the value of field 'BoundingBox'.
---@return number[] value
function row:GetBoundingBox() end

---Sets the value of field 'BoundingBox'.
---@param value number[]
---@return dbc.row.v1215.RoomWmoData self
function row:SetBoundingBox(value) end

---Gets element at 1-based index in 'BoundingBox'.
---@param index integer
---@return number value
function row:GetBoundingBoxItem(index) end

---Gets the value of field 'Height'.
---@return number value
function row:GetHeight() end

---Sets the value of field 'Height'.
---@param value number
---@return dbc.row.v1215.RoomWmoData self
function row:SetHeight(value) end

---Table container for RoomWmoData (Build 12.1.5.69594).
---@class dbc.Table.v1215.RoomWmoData : DbcTable
---@field [integer] dbc.row.v1215.RoomWmoData
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.RoomWmoData
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.RoomWmoData|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.RoomWmoData
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.RoomWmoData>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.RoomWmoData[]
function tbl:GetByRelation(foreign_id) end

return {}
