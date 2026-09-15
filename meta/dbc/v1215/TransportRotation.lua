---@meta
-- Generated LuaLS annotations for TransportRotation (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of TransportRotation in build 12.1.5.69594.
---@class dbc.row.v1215.TransportRotation : RowProxy
---@field ID integer
---@field Rot number[]
---@field TimeIndex integer
---@field GameObjectsID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.TransportRotation self
function row:SetID(value) end

---Gets the value of field 'Rot'.
---@return number[] value
function row:GetRot() end

---Sets the value of field 'Rot'.
---@param value number[]
---@return dbc.row.v1215.TransportRotation self
function row:SetRot(value) end

---Gets element at 1-based index in 'Rot'.
---@param index integer
---@return number value
function row:GetRotItem(index) end

---Gets the value of field 'TimeIndex'.
---@return integer value
function row:GetTimeIndex() end

---Sets the value of field 'TimeIndex'.
---@param value integer
---@return dbc.row.v1215.TransportRotation self
function row:SetTimeIndex(value) end

---Gets the value of field 'GameObjectsID'.
---@return integer value
function row:GetGameObjectsID() end

---Sets the value of field 'GameObjectsID'.
---@param value integer
---@return dbc.row.v1215.TransportRotation self
function row:SetGameObjectsID(value) end

---Navigates foreign relationship to 'GameObjects' via 'GameObjectsID'.
---@return dbc.row.v1215.GameObjects|nil
function row:GetGameObjects() end

---Creates a related 'GameObjects' row and automatically links 'GameObjectsID'.
---@param data? table
---@return dbc.row.v1215.GameObjects
function row:CreateRelated(data) end

---Table container for TransportRotation (Build 12.1.5.69594).
---@class dbc.Table.v1215.TransportRotation : DbcTable
---@field [integer] dbc.row.v1215.TransportRotation
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.TransportRotation
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.TransportRotation|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.TransportRotation
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.TransportRotation>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.TransportRotation[]
function tbl:GetByRelation(foreign_id) end

return {}
