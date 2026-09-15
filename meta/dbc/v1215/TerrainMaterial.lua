---@meta
-- Generated LuaLS annotations for TerrainMaterial (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of TerrainMaterial in build 12.1.5.69594.
---@class dbc.row.v1215.TerrainMaterial : RowProxy
---@field ID integer
---@field Shader integer
---@field EnvMapDiffuseFileID integer
---@field EnvMapSpecularFileID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.TerrainMaterial self
function row:SetID(value) end

---Gets the value of field 'Shader'.
---@return integer value
function row:GetShader() end

---Sets the value of field 'Shader'.
---@param value integer
---@return dbc.row.v1215.TerrainMaterial self
function row:SetShader(value) end

---Gets the value of field 'EnvMapDiffuseFileID'.
---@return integer value
function row:GetEnvMapDiffuseFileID() end

---Sets the value of field 'EnvMapDiffuseFileID'.
---@param value integer
---@return dbc.row.v1215.TerrainMaterial self
function row:SetEnvMapDiffuseFileID(value) end

---Navigates foreign relationship to 'FileData' via 'EnvMapDiffuseFileID'.
---@return dbc.row.v1215.FileData|nil
function row:GetEnvMapDiffuseFile() end

---Creates a related 'FileData' row and automatically links 'EnvMapDiffuseFileID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'EnvMapSpecularFileID'.
---@return integer value
function row:GetEnvMapSpecularFileID() end

---Sets the value of field 'EnvMapSpecularFileID'.
---@param value integer
---@return dbc.row.v1215.TerrainMaterial self
function row:SetEnvMapSpecularFileID(value) end

---Navigates foreign relationship to 'FileData' via 'EnvMapSpecularFileID'.
---@return dbc.row.v1215.FileData|nil
function row:GetEnvMapSpecularFile() end

---Creates a related 'FileData' row and automatically links 'EnvMapSpecularFileID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Table container for TerrainMaterial (Build 12.1.5.69594).
---@class dbc.Table.v1215.TerrainMaterial : DbcTable
---@field [integer] dbc.row.v1215.TerrainMaterial
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.TerrainMaterial
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.TerrainMaterial|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.TerrainMaterial
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.TerrainMaterial>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.TerrainMaterial[]
function tbl:GetByRelation(foreign_id) end

return {}
