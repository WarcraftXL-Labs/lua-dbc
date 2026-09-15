---@meta
-- Generated LuaLS annotations for SDReplacementModel (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SDReplacementModel in build 12.1.5.69594.
---@class dbc.row.v1215.SDReplacementModel : RowProxy
---@field ID integer
---@field SdFileDataID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SDReplacementModel self
function row:SetID(value) end

---Navigates foreign relationship to 'FileData' via 'ID'.
---@return dbc.row.v1215.FileData|nil
function row:GetID() end

---Creates a related 'FileData' row and automatically links 'ID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'SdFileDataID'.
---@return integer value
function row:GetSdFileDataID() end

---Sets the value of field 'SdFileDataID'.
---@param value integer
---@return dbc.row.v1215.SDReplacementModel self
function row:SetSdFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'SdFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetSdFileData() end

---Creates a related 'FileData' row and automatically links 'SdFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Table container for SDReplacementModel (Build 12.1.5.69594).
---@class dbc.Table.v1215.SDReplacementModel : DbcTable
---@field [integer] dbc.row.v1215.SDReplacementModel
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SDReplacementModel
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SDReplacementModel|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SDReplacementModel
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SDReplacementModel>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SDReplacementModel[]
function tbl:GetByRelation(foreign_id) end

return {}
