---@meta
-- Generated LuaLS annotations for TraitEdge (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of TraitEdge in build 12.1.5.69594.
---@class dbc.row.v1215.TraitEdge : RowProxy
---@field ID integer
---@field VisualStyle integer 0: None, 1: Straight
---@field LeftTraitNodeID integer
---@field RightTraitNodeID integer
---@field Type integer 0: VisualOnly, 1: DeprecatedRankConnection, 2: SufficientForAvailability, 3: RequiredForAvailability, 4: MutuallyExclusive, 5: DeprecatedSelectionOption

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.TraitEdge self
function row:SetID(value) end

---Gets the value of field 'VisualStyle'.
---@return integer value
function row:GetVisualStyle() end

---Sets the value of field 'VisualStyle'.
---@param value integer
---@return dbc.row.v1215.TraitEdge self
function row:SetVisualStyle(value) end

---Gets the value of field 'LeftTraitNodeID'.
---@return integer value
function row:GetLeftTraitNodeID() end

---Sets the value of field 'LeftTraitNodeID'.
---@param value integer
---@return dbc.row.v1215.TraitEdge self
function row:SetLeftTraitNodeID(value) end

---Navigates foreign relationship to 'TraitNode' via 'LeftTraitNodeID'.
---@return dbc.row.v1215.TraitNode|nil
function row:GetLeftTraitNode() end

---Creates a related 'TraitNode' row and automatically links 'LeftTraitNodeID'.
---@param data? table
---@return dbc.row.v1215.TraitNode
function row:CreateRelated(data) end

---Gets the value of field 'RightTraitNodeID'.
---@return integer value
function row:GetRightTraitNodeID() end

---Sets the value of field 'RightTraitNodeID'.
---@param value integer
---@return dbc.row.v1215.TraitEdge self
function row:SetRightTraitNodeID(value) end

---Navigates foreign relationship to 'TraitNode' via 'RightTraitNodeID'.
---@return dbc.row.v1215.TraitNode|nil
function row:GetRightTraitNode() end

---Creates a related 'TraitNode' row and automatically links 'RightTraitNodeID'.
---@param data? table
---@return dbc.row.v1215.TraitNode
function row:CreateRelated(data) end

---Gets the value of field 'Type'.
---@return integer value
function row:GetType() end

---Sets the value of field 'Type'.
---@param value integer
---@return dbc.row.v1215.TraitEdge self
function row:SetType(value) end

---Table container for TraitEdge (Build 12.1.5.69594).
---@class dbc.Table.v1215.TraitEdge : DbcTable
---@field [integer] dbc.row.v1215.TraitEdge
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.TraitEdge
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.TraitEdge|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.TraitEdge
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.TraitEdge>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.TraitEdge[]
function tbl:GetByRelation(foreign_id) end

return {}
