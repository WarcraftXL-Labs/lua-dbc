---@meta
-- Generated LuaLS annotations for AreaTriggerCreateProperties (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of AreaTriggerCreateProperties in build 12.1.5.69594.
---@class dbc.row.v1215.AreaTriggerCreateProperties : RowProxy
---@field ID integer
---@field ShapeType integer see AreaTrigger::ShapeType
---@field StartShapeID integer see AreaTrigger::ShapeID
---@field SoundKitID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.AreaTriggerCreateProperties self
function row:SetID(value) end

---Gets the value of field 'ShapeType'.
---@return integer value
function row:GetShapeType() end

---Sets the value of field 'ShapeType'.
---@param value integer
---@return dbc.row.v1215.AreaTriggerCreateProperties self
function row:SetShapeType(value) end

---Gets the value of field 'StartShapeID'.
---@return integer value
function row:GetStartShapeID() end

---Sets the value of field 'StartShapeID'.
---@param value integer
---@return dbc.row.v1215.AreaTriggerCreateProperties self
function row:SetStartShapeID(value) end

---Navigates foreign relationship to 'StartShape' via 'StartShapeID'.
---@return dbc.row.v1215.StartShape|nil
function row:GetStartShape() end

---Creates a related 'StartShape' row and automatically links 'StartShapeID'.
---@param data? table
---@return dbc.row.v1215.StartShape
function row:CreateRelated(data) end

---Gets the value of field 'SoundKitID'.
---@return integer value
function row:GetSoundKitID() end

---Sets the value of field 'SoundKitID'.
---@param value integer
---@return dbc.row.v1215.AreaTriggerCreateProperties self
function row:SetSoundKitID(value) end

---Navigates foreign relationship to 'SoundKit' via 'SoundKitID'.
---@return dbc.row.v1215.SoundKit|nil
function row:GetSoundKit() end

---Creates a related 'SoundKit' row and automatically links 'SoundKitID'.
---@param data? table
---@return dbc.row.v1215.SoundKit
function row:CreateRelated(data) end

---Table container for AreaTriggerCreateProperties (Build 12.1.5.69594).
---@class dbc.Table.v1215.AreaTriggerCreateProperties : DbcTable
---@field [integer] dbc.row.v1215.AreaTriggerCreateProperties
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.AreaTriggerCreateProperties
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.AreaTriggerCreateProperties|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.AreaTriggerCreateProperties
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.AreaTriggerCreateProperties>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.AreaTriggerCreateProperties[]
function tbl:GetByRelation(foreign_id) end

return {}
