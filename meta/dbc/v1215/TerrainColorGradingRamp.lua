---@meta
-- Generated LuaLS annotations for TerrainColorGradingRamp (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of TerrainColorGradingRamp in build 12.1.5.69594.
---@class dbc.row.v1215.TerrainColorGradingRamp : RowProxy
---@field ID integer
---@field Min integer x = (max == min) ? 16384.f : 1.f / (float) (max - min)
---@field Max integer
---@field Texture0 integer
---@field Texture1 integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.TerrainColorGradingRamp self
function row:SetID(value) end

---Gets the value of field 'Min'.
---@return integer value
function row:GetMin() end

---Sets the value of field 'Min'.
---@param value integer
---@return dbc.row.v1215.TerrainColorGradingRamp self
function row:SetMin(value) end

---Gets the value of field 'Max'.
---@return integer value
function row:GetMax() end

---Sets the value of field 'Max'.
---@param value integer
---@return dbc.row.v1215.TerrainColorGradingRamp self
function row:SetMax(value) end

---Gets the value of field 'Texture0'.
---@return integer value
function row:GetTexture0() end

---Sets the value of field 'Texture0'.
---@param value integer
---@return dbc.row.v1215.TerrainColorGradingRamp self
function row:SetTexture0(value) end

---Navigates foreign relationship to 'FileData' via 'Texture0'.
---@return dbc.row.v1215.FileData|nil
function row:GetTexture0() end

---Creates a related 'FileData' row and automatically links 'Texture0'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'Texture1'.
---@return integer value
function row:GetTexture1() end

---Sets the value of field 'Texture1'.
---@param value integer
---@return dbc.row.v1215.TerrainColorGradingRamp self
function row:SetTexture1(value) end

---Navigates foreign relationship to 'FileData' via 'Texture1'.
---@return dbc.row.v1215.FileData|nil
function row:GetTexture1() end

---Creates a related 'FileData' row and automatically links 'Texture1'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Table container for TerrainColorGradingRamp (Build 12.1.5.69594).
---@class dbc.Table.v1215.TerrainColorGradingRamp : DbcTable
---@field [integer] dbc.row.v1215.TerrainColorGradingRamp
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.TerrainColorGradingRamp
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.TerrainColorGradingRamp|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.TerrainColorGradingRamp
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.TerrainColorGradingRamp>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.TerrainColorGradingRamp[]
function tbl:GetByRelation(foreign_id) end

return {}
