---@meta
-- Generated LuaLS annotations for AltMinimapWMO (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of AltMinimapWMO in build 12.1.5.69594.
---@class dbc.row.v1215.AltMinimapWMO : RowProxy
---@field ID integer
---@field AltMinimapID integer
---@field WMOID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.AltMinimapWMO self
function row:SetID(value) end

---Gets the value of field 'AltMinimapID'.
---@return integer value
function row:GetAltMinimapID() end

---Sets the value of field 'AltMinimapID'.
---@param value integer
---@return dbc.row.v1215.AltMinimapWMO self
function row:SetAltMinimapID(value) end

---Navigates foreign relationship to 'AltMinimap' via 'AltMinimapID'.
---@return dbc.row.v1215.AltMinimap|nil
function row:GetAltMinimap() end

---Creates a related 'AltMinimap' row and automatically links 'AltMinimapID'.
---@param data? table
---@return dbc.row.v1215.AltMinimap
function row:CreateRelated(data) end

---Gets the value of field 'WMOID'.
---@return integer value
function row:GetWMOID() end

---Sets the value of field 'WMOID'.
---@param value integer
---@return dbc.row.v1215.AltMinimapWMO self
function row:SetWMOID(value) end

---Navigates foreign relationship to 'WMO' via 'WMOID'.
---@return dbc.row.v1215.WMO|nil
function row:GetWMO() end

---Creates a related 'WMO' row and automatically links 'WMOID'.
---@param data? table
---@return dbc.row.v1215.WMO
function row:CreateRelated(data) end

---Table container for AltMinimapWMO (Build 12.1.5.69594).
---@class dbc.Table.v1215.AltMinimapWMO : DbcTable
---@field [integer] dbc.row.v1215.AltMinimapWMO
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.AltMinimapWMO
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.AltMinimapWMO|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.AltMinimapWMO
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.AltMinimapWMO>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.AltMinimapWMO[]
function tbl:GetByRelation(foreign_id) end

return {}
