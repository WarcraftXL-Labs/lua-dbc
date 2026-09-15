---@meta
-- Generated LuaLS annotations for LightSkybox (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of LightSkybox in build 12.1.5.69594.
---@class dbc.row.v1215.LightSkybox : RowProxy
---@field ID integer
---@field Name string
---@field Flags integer
---@field SkyboxFileDataID integer
---@field CelestialSkyboxFileDataID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.LightSkybox self
function row:SetID(value) end

---Gets the value of field 'Name'.
---@return string value
function row:GetName() end

---Sets the value of field 'Name'.
---@param value string
---@return dbc.row.v1215.LightSkybox self
function row:SetName(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.LightSkybox self
function row:SetFlags(value) end

---Gets the value of field 'SkyboxFileDataID'.
---@return integer value
function row:GetSkyboxFileDataID() end

---Sets the value of field 'SkyboxFileDataID'.
---@param value integer
---@return dbc.row.v1215.LightSkybox self
function row:SetSkyboxFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'SkyboxFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetSkyboxFileData() end

---Creates a related 'FileData' row and automatically links 'SkyboxFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'CelestialSkyboxFileDataID'.
---@return integer value
function row:GetCelestialSkyboxFileDataID() end

---Sets the value of field 'CelestialSkyboxFileDataID'.
---@param value integer
---@return dbc.row.v1215.LightSkybox self
function row:SetCelestialSkyboxFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'CelestialSkyboxFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetCelestialSkyboxFileData() end

---Creates a related 'FileData' row and automatically links 'CelestialSkyboxFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Table container for LightSkybox (Build 12.1.5.69594).
---@class dbc.Table.v1215.LightSkybox : DbcTable
---@field [integer] dbc.row.v1215.LightSkybox
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.LightSkybox
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.LightSkybox|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.LightSkybox
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.LightSkybox>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.LightSkybox[]
function tbl:GetByRelation(foreign_id) end

return {}
