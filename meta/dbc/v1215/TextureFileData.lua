---@meta
-- Generated LuaLS annotations for TextureFileData (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of TextureFileData in build 12.1.5.69594.
---@class dbc.row.v1215.TextureFileData : RowProxy
---@field FileDataID integer
---@field UsageType integer
---@field MaterialResourcesID integer

local row = {}

---Gets the value of field 'FileDataID'.
---@return integer value
function row:GetFileDataID() end

---Sets the value of field 'FileDataID'.
---@param value integer
---@return dbc.row.v1215.TextureFileData self
function row:SetFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'FileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetFileData() end

---Creates a related 'FileData' row and automatically links 'FileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'UsageType'.
---@return integer value
function row:GetUsageType() end

---Sets the value of field 'UsageType'.
---@param value integer
---@return dbc.row.v1215.TextureFileData self
function row:SetUsageType(value) end

---Gets the value of field 'MaterialResourcesID'.
---@return integer value
function row:GetMaterialResourcesID() end

---Sets the value of field 'MaterialResourcesID'.
---@param value integer
---@return dbc.row.v1215.TextureFileData self
function row:SetMaterialResourcesID(value) end

---Navigates foreign relationship to 'MaterialResources' via 'MaterialResourcesID'.
---@return dbc.row.v1215.MaterialResources|nil
function row:GetMaterialResources() end

---Creates a related 'MaterialResources' row and automatically links 'MaterialResourcesID'.
---@param data? table
---@return dbc.row.v1215.MaterialResources
function row:CreateRelated(data) end

---Table container for TextureFileData (Build 12.1.5.69594).
---@class dbc.Table.v1215.TextureFileData : DbcTable
---@field [integer] dbc.row.v1215.TextureFileData
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.TextureFileData
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.TextureFileData|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.TextureFileData
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.TextureFileData>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.TextureFileData[]
function tbl:GetByRelation(foreign_id) end

return {}
