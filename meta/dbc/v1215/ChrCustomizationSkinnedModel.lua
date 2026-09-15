---@meta
-- Generated LuaLS annotations for ChrCustomizationSkinnedModel (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ChrCustomizationSkinnedModel in build 12.1.5.69594.
---@class dbc.row.v1215.ChrCustomizationSkinnedModel : RowProxy
---@field ID integer
---@field CollectionsFileDataID integer
---@field GeosetType integer
---@field GeosetID integer
---@field Modifier integer
---@field Flags integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationSkinnedModel self
function row:SetID(value) end

---Gets the value of field 'CollectionsFileDataID'.
---@return integer value
function row:GetCollectionsFileDataID() end

---Sets the value of field 'CollectionsFileDataID'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationSkinnedModel self
function row:SetCollectionsFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'CollectionsFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetCollectionsFileData() end

---Creates a related 'FileData' row and automatically links 'CollectionsFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'GeosetType'.
---@return integer value
function row:GetGeosetType() end

---Sets the value of field 'GeosetType'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationSkinnedModel self
function row:SetGeosetType(value) end

---Gets the value of field 'GeosetID'.
---@return integer value
function row:GetGeosetID() end

---Sets the value of field 'GeosetID'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationSkinnedModel self
function row:SetGeosetID(value) end

---Navigates foreign relationship to 'Geoset' via 'GeosetID'.
---@return dbc.row.v1215.Geoset|nil
function row:GetGeoset() end

---Creates a related 'Geoset' row and automatically links 'GeosetID'.
---@param data? table
---@return dbc.row.v1215.Geoset
function row:CreateRelated(data) end

---Gets the value of field 'Modifier'.
---@return integer value
function row:GetModifier() end

---Sets the value of field 'Modifier'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationSkinnedModel self
function row:SetModifier(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationSkinnedModel self
function row:SetFlags(value) end

---Table container for ChrCustomizationSkinnedModel (Build 12.1.5.69594).
---@class dbc.Table.v1215.ChrCustomizationSkinnedModel : DbcTable
---@field [integer] dbc.row.v1215.ChrCustomizationSkinnedModel
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ChrCustomizationSkinnedModel
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ChrCustomizationSkinnedModel|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ChrCustomizationSkinnedModel
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ChrCustomizationSkinnedModel>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ChrCustomizationSkinnedModel[]
function tbl:GetByRelation(foreign_id) end

return {}
