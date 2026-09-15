---@meta
-- Generated LuaLS annotations for WMOMinimapTexture (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of WMOMinimapTexture in build 12.1.5.69594.
---@class dbc.row.v1215.WMOMinimapTexture : RowProxy
---@field ID integer
---@field GroupNum integer
---@field BlockX integer
---@field BlockY integer
---@field FileDataID integer
---@field WMOID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.WMOMinimapTexture self
function row:SetID(value) end

---Gets the value of field 'GroupNum'.
---@return integer value
function row:GetGroupNum() end

---Sets the value of field 'GroupNum'.
---@param value integer
---@return dbc.row.v1215.WMOMinimapTexture self
function row:SetGroupNum(value) end

---Gets the value of field 'BlockX'.
---@return integer value
function row:GetBlockX() end

---Sets the value of field 'BlockX'.
---@param value integer
---@return dbc.row.v1215.WMOMinimapTexture self
function row:SetBlockX(value) end

---Gets the value of field 'BlockY'.
---@return integer value
function row:GetBlockY() end

---Sets the value of field 'BlockY'.
---@param value integer
---@return dbc.row.v1215.WMOMinimapTexture self
function row:SetBlockY(value) end

---Gets the value of field 'FileDataID'.
---@return integer value
function row:GetFileDataID() end

---Sets the value of field 'FileDataID'.
---@param value integer
---@return dbc.row.v1215.WMOMinimapTexture self
function row:SetFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'FileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetFileData() end

---Creates a related 'FileData' row and automatically links 'FileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'WMOID'.
---@return integer value
function row:GetWMOID() end

---Sets the value of field 'WMOID'.
---@param value integer
---@return dbc.row.v1215.WMOMinimapTexture self
function row:SetWMOID(value) end

---Navigates foreign relationship to 'WMO' via 'WMOID'.
---@return dbc.row.v1215.WMO|nil
function row:GetWMO() end

---Creates a related 'WMO' row and automatically links 'WMOID'.
---@param data? table
---@return dbc.row.v1215.WMO
function row:CreateRelated(data) end

---Table container for WMOMinimapTexture (Build 12.1.5.69594).
---@class dbc.Table.v1215.WMOMinimapTexture : DbcTable
---@field [integer] dbc.row.v1215.WMOMinimapTexture
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.WMOMinimapTexture
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.WMOMinimapTexture|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.WMOMinimapTexture
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.WMOMinimapTexture>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.WMOMinimapTexture[]
function tbl:GetByRelation(foreign_id) end

return {}
