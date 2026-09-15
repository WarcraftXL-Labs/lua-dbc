---@meta
-- Generated LuaLS annotations for LiquidTypeXTexture (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of LiquidTypeXTexture in build 12.1.5.69594.
---@class dbc.row.v1215.LiquidTypeXTexture : RowProxy
---@field ID integer
---@field FileDataID integer
---@field OrderIndex integer
---@field Type integer -1: hardcoded filename, 0: proceduralOceanDepthTex, 1: proceduralRiverDepthTex, 2: proceduralWmoWaterTex
---@field LiquidTypeID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.LiquidTypeXTexture self
function row:SetID(value) end

---Gets the value of field 'FileDataID'.
---@return integer value
function row:GetFileDataID() end

---Sets the value of field 'FileDataID'.
---@param value integer
---@return dbc.row.v1215.LiquidTypeXTexture self
function row:SetFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'FileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetFileData() end

---Creates a related 'FileData' row and automatically links 'FileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.LiquidTypeXTexture self
function row:SetOrderIndex(value) end

---Gets the value of field 'Type'.
---@return integer value
function row:GetType() end

---Sets the value of field 'Type'.
---@param value integer
---@return dbc.row.v1215.LiquidTypeXTexture self
function row:SetType(value) end

---Gets the value of field 'LiquidTypeID'.
---@return integer value
function row:GetLiquidTypeID() end

---Sets the value of field 'LiquidTypeID'.
---@param value integer
---@return dbc.row.v1215.LiquidTypeXTexture self
function row:SetLiquidTypeID(value) end

---Navigates foreign relationship to 'LiquidType' via 'LiquidTypeID'.
---@return dbc.row.v1215.LiquidType|nil
function row:GetLiquidType() end

---Creates a related 'LiquidType' row and automatically links 'LiquidTypeID'.
---@param data? table
---@return dbc.row.v1215.LiquidType
function row:CreateRelated(data) end

---Table container for LiquidTypeXTexture (Build 12.1.5.69594).
---@class dbc.Table.v1215.LiquidTypeXTexture : DbcTable
---@field [integer] dbc.row.v1215.LiquidTypeXTexture
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.LiquidTypeXTexture
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.LiquidTypeXTexture|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.LiquidTypeXTexture
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.LiquidTypeXTexture>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.LiquidTypeXTexture[]
function tbl:GetByRelation(foreign_id) end

return {}
