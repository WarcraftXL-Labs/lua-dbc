---@meta
-- Generated LuaLS annotations for ModelFileData (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ModelFileData in build 12.1.5.69594.
---@class dbc.row.v1215.ModelFileData : RowProxy
---@field GeoBox number[]
---@field FileDataID integer
---@field Flags integer
---@field LodCount integer
---@field ModelResourcesID integer

local row = {}

---Gets the value of field 'GeoBox'.
---@return number[] value
function row:GetGeoBox() end

---Sets the value of field 'GeoBox'.
---@param value number[]
---@return dbc.row.v1215.ModelFileData self
function row:SetGeoBox(value) end

---Gets element at 1-based index in 'GeoBox'.
---@param index integer
---@return number value
function row:GetGeoBoxItem(index) end

---Gets the value of field 'FileDataID'.
---@return integer value
function row:GetFileDataID() end

---Sets the value of field 'FileDataID'.
---@param value integer
---@return dbc.row.v1215.ModelFileData self
function row:SetFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'FileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetFileData() end

---Creates a related 'FileData' row and automatically links 'FileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.ModelFileData self
function row:SetFlags(value) end

---Gets the value of field 'LodCount'.
---@return integer value
function row:GetLodCount() end

---Sets the value of field 'LodCount'.
---@param value integer
---@return dbc.row.v1215.ModelFileData self
function row:SetLodCount(value) end

---Gets the value of field 'ModelResourcesID'.
---@return integer value
function row:GetModelResourcesID() end

---Sets the value of field 'ModelResourcesID'.
---@param value integer
---@return dbc.row.v1215.ModelFileData self
function row:SetModelResourcesID(value) end

---Navigates foreign relationship to 'ModelResources' via 'ModelResourcesID'.
---@return dbc.row.v1215.ModelResources|nil
function row:GetModelResources() end

---Creates a related 'ModelResources' row and automatically links 'ModelResourcesID'.
---@param data? table
---@return dbc.row.v1215.ModelResources
function row:CreateRelated(data) end

---Table container for ModelFileData (Build 12.1.5.69594).
---@class dbc.Table.v1215.ModelFileData : DbcTable
---@field [integer] dbc.row.v1215.ModelFileData
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ModelFileData
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ModelFileData|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ModelFileData
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ModelFileData>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ModelFileData[]
function tbl:GetByRelation(foreign_id) end

return {}
