---@meta
-- Generated LuaLS annotations for SpellVisualKitAreaModel (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SpellVisualKitAreaModel in build 12.1.5.69594.
---@class dbc.row.v1215.SpellVisualKitAreaModel : RowProxy
---@field ID integer
---@field ModelFileDataID integer
---@field Flags integer
---@field LifeTime integer
---@field EmissionRate number
---@field Spacing number
---@field ModelScale number

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SpellVisualKitAreaModel self
function row:SetID(value) end

---Gets the value of field 'ModelFileDataID'.
---@return integer value
function row:GetModelFileDataID() end

---Sets the value of field 'ModelFileDataID'.
---@param value integer
---@return dbc.row.v1215.SpellVisualKitAreaModel self
function row:SetModelFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'ModelFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetModelFileData() end

---Creates a related 'FileData' row and automatically links 'ModelFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.SpellVisualKitAreaModel self
function row:SetFlags(value) end

---Gets the value of field 'LifeTime'.
---@return integer value
function row:GetLifeTime() end

---Sets the value of field 'LifeTime'.
---@param value integer
---@return dbc.row.v1215.SpellVisualKitAreaModel self
function row:SetLifeTime(value) end

---Gets the value of field 'EmissionRate'.
---@return number value
function row:GetEmissionRate() end

---Sets the value of field 'EmissionRate'.
---@param value number
---@return dbc.row.v1215.SpellVisualKitAreaModel self
function row:SetEmissionRate(value) end

---Gets the value of field 'Spacing'.
---@return number value
function row:GetSpacing() end

---Sets the value of field 'Spacing'.
---@param value number
---@return dbc.row.v1215.SpellVisualKitAreaModel self
function row:SetSpacing(value) end

---Gets the value of field 'ModelScale'.
---@return number value
function row:GetModelScale() end

---Sets the value of field 'ModelScale'.
---@param value number
---@return dbc.row.v1215.SpellVisualKitAreaModel self
function row:SetModelScale(value) end

---Table container for SpellVisualKitAreaModel (Build 12.1.5.69594).
---@class dbc.Table.v1215.SpellVisualKitAreaModel : DbcTable
---@field [integer] dbc.row.v1215.SpellVisualKitAreaModel
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SpellVisualKitAreaModel
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SpellVisualKitAreaModel|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SpellVisualKitAreaModel
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SpellVisualKitAreaModel>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SpellVisualKitAreaModel[]
function tbl:GetByRelation(foreign_id) end

return {}
