---@meta
-- Generated LuaLS annotations for VehicleUIIndicator (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of VehicleUIIndicator in build 12.1.5.69594.
---@class dbc.row.v1215.VehicleUIIndicator : RowProxy
---@field ID integer
---@field BackgroundTextureFileID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.VehicleUIIndicator self
function row:SetID(value) end

---Gets the value of field 'BackgroundTextureFileID'.
---@return integer value
function row:GetBackgroundTextureFileID() end

---Sets the value of field 'BackgroundTextureFileID'.
---@param value integer
---@return dbc.row.v1215.VehicleUIIndicator self
function row:SetBackgroundTextureFileID(value) end

---Navigates foreign relationship to 'FileData' via 'BackgroundTextureFileID'.
---@return dbc.row.v1215.FileData|nil
function row:GetBackgroundTextureFile() end

---Creates a related 'FileData' row and automatically links 'BackgroundTextureFileID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Table container for VehicleUIIndicator (Build 12.1.5.69594).
---@class dbc.Table.v1215.VehicleUIIndicator : DbcTable
---@field [integer] dbc.row.v1215.VehicleUIIndicator
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.VehicleUIIndicator
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.VehicleUIIndicator|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.VehicleUIIndicator
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.VehicleUIIndicator>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.VehicleUIIndicator[]
function tbl:GetByRelation(foreign_id) end

return {}
