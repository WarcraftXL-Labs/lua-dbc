---@meta
-- Generated LuaLS annotations for GarrTalentRankGroupEntry (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GarrTalentRankGroupEntry in build 12.1.5.69594.
---@class dbc.row.v1215.GarrTalentRankGroupEntry : RowProxy
---@field ID integer
---@field GarrTalentRankGroupID integer
---@field GarrTalentRankID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GarrTalentRankGroupEntry self
function row:SetID(value) end

---Gets the value of field 'GarrTalentRankGroupID'.
---@return integer value
function row:GetGarrTalentRankGroupID() end

---Sets the value of field 'GarrTalentRankGroupID'.
---@param value integer
---@return dbc.row.v1215.GarrTalentRankGroupEntry self
function row:SetGarrTalentRankGroupID(value) end

---Navigates foreign relationship to 'GarrTalentRankGroup' via 'GarrTalentRankGroupID'.
---@return dbc.row.v1215.GarrTalentRankGroup|nil
function row:GetGarrTalentRankGroup() end

---Creates a related 'GarrTalentRankGroup' row and automatically links 'GarrTalentRankGroupID'.
---@param data? table
---@return dbc.row.v1215.GarrTalentRankGroup
function row:CreateRelated(data) end

---Gets the value of field 'GarrTalentRankID'.
---@return integer value
function row:GetGarrTalentRankID() end

---Sets the value of field 'GarrTalentRankID'.
---@param value integer
---@return dbc.row.v1215.GarrTalentRankGroupEntry self
function row:SetGarrTalentRankID(value) end

---Navigates foreign relationship to 'GarrTalentRank' via 'GarrTalentRankID'.
---@return dbc.row.v1215.GarrTalentRank|nil
function row:GetGarrTalentRank() end

---Creates a related 'GarrTalentRank' row and automatically links 'GarrTalentRankID'.
---@param data? table
---@return dbc.row.v1215.GarrTalentRank
function row:CreateRelated(data) end

---Table container for GarrTalentRankGroupEntry (Build 12.1.5.69594).
---@class dbc.Table.v1215.GarrTalentRankGroupEntry : DbcTable
---@field [integer] dbc.row.v1215.GarrTalentRankGroupEntry
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GarrTalentRankGroupEntry
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GarrTalentRankGroupEntry|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GarrTalentRankGroupEntry
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GarrTalentRankGroupEntry>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GarrTalentRankGroupEntry[]
function tbl:GetByRelation(foreign_id) end

return {}
