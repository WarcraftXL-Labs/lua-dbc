---@meta
-- Generated LuaLS annotations for PVPScoreboardCellInfo (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of PVPScoreboardCellInfo in build 12.1.5.69594.
---@class dbc.row.v1215.PVPScoreboardCellInfo : RowProxy
---@field ID integer
---@field PVPScoreboardColumnHeaderID integer
---@field Icon integer
---@field Team integer -1 if independent, or 0/1

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.PVPScoreboardCellInfo self
function row:SetID(value) end

---Gets the value of field 'PVPScoreboardColumnHeaderID'.
---@return integer value
function row:GetPVPScoreboardColumnHeaderID() end

---Sets the value of field 'PVPScoreboardColumnHeaderID'.
---@param value integer
---@return dbc.row.v1215.PVPScoreboardCellInfo self
function row:SetPVPScoreboardColumnHeaderID(value) end

---Navigates foreign relationship to 'PVPScoreboardColumnHeader' via 'PVPScoreboardColumnHeaderID'.
---@return dbc.row.v1215.PVPScoreboardColumnHeader|nil
function row:GetPVPScoreboardColumnHeader() end

---Creates a related 'PVPScoreboardColumnHeader' row and automatically links 'PVPScoreboardColumnHeaderID'.
---@param data? table
---@return dbc.row.v1215.PVPScoreboardColumnHeader
function row:CreateRelated(data) end

---Gets the value of field 'Icon'.
---@return integer value
function row:GetIcon() end

---Sets the value of field 'Icon'.
---@param value integer
---@return dbc.row.v1215.PVPScoreboardCellInfo self
function row:SetIcon(value) end

---Navigates foreign relationship to 'UiTextureAtlasElement' via 'Icon'.
---@return dbc.row.v1215.UiTextureAtlasElement|nil
function row:GetIcon() end

---Creates a related 'UiTextureAtlasElement' row and automatically links 'Icon'.
---@param data? table
---@return dbc.row.v1215.UiTextureAtlasElement
function row:CreateRelated(data) end

---Gets the value of field 'Team'.
---@return integer value
function row:GetTeam() end

---Sets the value of field 'Team'.
---@param value integer
---@return dbc.row.v1215.PVPScoreboardCellInfo self
function row:SetTeam(value) end

---Table container for PVPScoreboardCellInfo (Build 12.1.5.69594).
---@class dbc.Table.v1215.PVPScoreboardCellInfo : DbcTable
---@field [integer] dbc.row.v1215.PVPScoreboardCellInfo
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.PVPScoreboardCellInfo
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.PVPScoreboardCellInfo|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.PVPScoreboardCellInfo
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.PVPScoreboardCellInfo>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.PVPScoreboardCellInfo[]
function tbl:GetByRelation(foreign_id) end

return {}
