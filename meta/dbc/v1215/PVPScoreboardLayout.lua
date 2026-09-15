---@meta
-- Generated LuaLS annotations for PVPScoreboardLayout (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of PVPScoreboardLayout in build 12.1.5.69594.
---@class dbc.row.v1215.PVPScoreboardLayout : RowProxy
---@field ID integer
---@field PVPStatID integer
---@field PVPScoreboardColumnHeaderID integer
---@field OrderIndex integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.PVPScoreboardLayout self
function row:SetID(value) end

---Gets the value of field 'PVPStatID'.
---@return integer value
function row:GetPVPStatID() end

---Sets the value of field 'PVPStatID'.
---@param value integer
---@return dbc.row.v1215.PVPScoreboardLayout self
function row:SetPVPStatID(value) end

---Navigates foreign relationship to 'PVPStat' via 'PVPStatID'.
---@return dbc.row.v1215.PVPStat|nil
function row:GetPVPStat() end

---Creates a related 'PVPStat' row and automatically links 'PVPStatID'.
---@param data? table
---@return dbc.row.v1215.PVPStat
function row:CreateRelated(data) end

---Gets the value of field 'PVPScoreboardColumnHeaderID'.
---@return integer value
function row:GetPVPScoreboardColumnHeaderID() end

---Sets the value of field 'PVPScoreboardColumnHeaderID'.
---@param value integer
---@return dbc.row.v1215.PVPScoreboardLayout self
function row:SetPVPScoreboardColumnHeaderID(value) end

---Navigates foreign relationship to 'PVPScoreboardColumnHeader' via 'PVPScoreboardColumnHeaderID'.
---@return dbc.row.v1215.PVPScoreboardColumnHeader|nil
function row:GetPVPScoreboardColumnHeader() end

---Creates a related 'PVPScoreboardColumnHeader' row and automatically links 'PVPScoreboardColumnHeaderID'.
---@param data? table
---@return dbc.row.v1215.PVPScoreboardColumnHeader
function row:CreateRelated(data) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.PVPScoreboardLayout self
function row:SetOrderIndex(value) end

---Table container for PVPScoreboardLayout (Build 12.1.5.69594).
---@class dbc.Table.v1215.PVPScoreboardLayout : DbcTable
---@field [integer] dbc.row.v1215.PVPScoreboardLayout
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.PVPScoreboardLayout
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.PVPScoreboardLayout|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.PVPScoreboardLayout
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.PVPScoreboardLayout>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.PVPScoreboardLayout[]
function tbl:GetByRelation(foreign_id) end

return {}
