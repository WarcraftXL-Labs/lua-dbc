---@meta
-- Generated LuaLS annotations for ManifestInterfaceActionIcon (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ManifestInterfaceActionIcon in build 12.1.5.69594.
---@class dbc.row.v1215.ManifestInterfaceActionIcon : RowProxy
---@field ID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ManifestInterfaceActionIcon self
function row:SetID(value) end

---Navigates foreign relationship to 'FileData' via 'ID'.
---@return dbc.row.v1215.FileData|nil
function row:GetID() end

---Creates a related 'FileData' row and automatically links 'ID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Table container for ManifestInterfaceActionIcon (Build 12.1.5.69594).
---@class dbc.Table.v1215.ManifestInterfaceActionIcon : DbcTable
---@field [integer] dbc.row.v1215.ManifestInterfaceActionIcon
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ManifestInterfaceActionIcon
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ManifestInterfaceActionIcon|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ManifestInterfaceActionIcon
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ManifestInterfaceActionIcon>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ManifestInterfaceActionIcon[]
function tbl:GetByRelation(foreign_id) end

return {}
