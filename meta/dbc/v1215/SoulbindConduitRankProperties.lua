---@meta
-- Generated LuaLS annotations for SoulbindConduitRankProperties (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SoulbindConduitRankProperties in build 12.1.5.69594.
---@class dbc.row.v1215.SoulbindConduitRankProperties : RowProxy
---@field ID integer
---@field Rank integer
---@field ItemLevel integer
---@field QualityID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SoulbindConduitRankProperties self
function row:SetID(value) end

---Gets the value of field 'Rank'.
---@return integer value
function row:GetRank() end

---Sets the value of field 'Rank'.
---@param value integer
---@return dbc.row.v1215.SoulbindConduitRankProperties self
function row:SetRank(value) end

---Gets the value of field 'ItemLevel'.
---@return integer value
function row:GetItemLevel() end

---Sets the value of field 'ItemLevel'.
---@param value integer
---@return dbc.row.v1215.SoulbindConduitRankProperties self
function row:SetItemLevel(value) end

---Gets the value of field 'QualityID'.
---@return integer value
function row:GetQualityID() end

---Sets the value of field 'QualityID'.
---@param value integer
---@return dbc.row.v1215.SoulbindConduitRankProperties self
function row:SetQualityID(value) end

---Navigates foreign relationship to 'Quality' via 'QualityID'.
---@return dbc.row.v1215.Quality|nil
function row:GetQuality() end

---Creates a related 'Quality' row and automatically links 'QualityID'.
---@param data? table
---@return dbc.row.v1215.Quality
function row:CreateRelated(data) end

---Table container for SoulbindConduitRankProperties (Build 12.1.5.69594).
---@class dbc.Table.v1215.SoulbindConduitRankProperties : DbcTable
---@field [integer] dbc.row.v1215.SoulbindConduitRankProperties
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SoulbindConduitRankProperties
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SoulbindConduitRankProperties|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SoulbindConduitRankProperties
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SoulbindConduitRankProperties>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SoulbindConduitRankProperties[]
function tbl:GetByRelation(foreign_id) end

return {}
