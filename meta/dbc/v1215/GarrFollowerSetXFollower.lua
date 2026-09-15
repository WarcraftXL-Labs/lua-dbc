---@meta
-- Generated LuaLS annotations for GarrFollowerSetXFollower (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GarrFollowerSetXFollower in build 12.1.5.69594.
---@class dbc.row.v1215.GarrFollowerSetXFollower : RowProxy
---@field ID integer
---@field GarrFollowerID integer
---@field GarrFollowerSetID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GarrFollowerSetXFollower self
function row:SetID(value) end

---Gets the value of field 'GarrFollowerID'.
---@return integer value
function row:GetGarrFollowerID() end

---Sets the value of field 'GarrFollowerID'.
---@param value integer
---@return dbc.row.v1215.GarrFollowerSetXFollower self
function row:SetGarrFollowerID(value) end

---Navigates foreign relationship to 'GarrFollower' via 'GarrFollowerID'.
---@return dbc.row.v1215.GarrFollower|nil
function row:GetGarrFollower() end

---Creates a related 'GarrFollower' row and automatically links 'GarrFollowerID'.
---@param data? table
---@return dbc.row.v1215.GarrFollower
function row:CreateRelated(data) end

---Gets the value of field 'GarrFollowerSetID'.
---@return integer value
function row:GetGarrFollowerSetID() end

---Sets the value of field 'GarrFollowerSetID'.
---@param value integer
---@return dbc.row.v1215.GarrFollowerSetXFollower self
function row:SetGarrFollowerSetID(value) end

---Navigates foreign relationship to 'GarrFollowerSet' via 'GarrFollowerSetID'.
---@return dbc.row.v1215.GarrFollowerSet|nil
function row:GetGarrFollowerSet() end

---Creates a related 'GarrFollowerSet' row and automatically links 'GarrFollowerSetID'.
---@param data? table
---@return dbc.row.v1215.GarrFollowerSet
function row:CreateRelated(data) end

---Table container for GarrFollowerSetXFollower (Build 12.1.5.69594).
---@class dbc.Table.v1215.GarrFollowerSetXFollower : DbcTable
---@field [integer] dbc.row.v1215.GarrFollowerSetXFollower
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GarrFollowerSetXFollower
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GarrFollowerSetXFollower|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GarrFollowerSetXFollower
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GarrFollowerSetXFollower>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GarrFollowerSetXFollower[]
function tbl:GetByRelation(foreign_id) end

return {}
