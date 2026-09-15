---@meta
-- Generated LuaLS annotations for GossipXGarrTalentTrees (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GossipXGarrTalentTrees in build 12.1.5.69594.
---@class dbc.row.v1215.GossipXGarrTalentTrees : RowProxy
---@field ID integer
---@field GarrTalentTreeID integer
---@field GossipID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GossipXGarrTalentTrees self
function row:SetID(value) end

---Gets the value of field 'GarrTalentTreeID'.
---@return integer value
function row:GetGarrTalentTreeID() end

---Sets the value of field 'GarrTalentTreeID'.
---@param value integer
---@return dbc.row.v1215.GossipXGarrTalentTrees self
function row:SetGarrTalentTreeID(value) end

---Navigates foreign relationship to 'GarrTalentTree' via 'GarrTalentTreeID'.
---@return dbc.row.v1215.GarrTalentTree|nil
function row:GetGarrTalentTree() end

---Creates a related 'GarrTalentTree' row and automatically links 'GarrTalentTreeID'.
---@param data? table
---@return dbc.row.v1215.GarrTalentTree
function row:CreateRelated(data) end

---Gets the value of field 'GossipID'.
---@return integer value
function row:GetGossipID() end

---Sets the value of field 'GossipID'.
---@param value integer
---@return dbc.row.v1215.GossipXGarrTalentTrees self
function row:SetGossipID(value) end

---Navigates foreign relationship to 'Gossip' via 'GossipID'.
---@return dbc.row.v1215.Gossip|nil
function row:GetGossip() end

---Creates a related 'Gossip' row and automatically links 'GossipID'.
---@param data? table
---@return dbc.row.v1215.Gossip
function row:CreateRelated(data) end

---Table container for GossipXGarrTalentTrees (Build 12.1.5.69594).
---@class dbc.Table.v1215.GossipXGarrTalentTrees : DbcTable
---@field [integer] dbc.row.v1215.GossipXGarrTalentTrees
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GossipXGarrTalentTrees
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GossipXGarrTalentTrees|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GossipXGarrTalentTrees
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GossipXGarrTalentTrees>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GossipXGarrTalentTrees[]
function tbl:GetByRelation(foreign_id) end

return {}
