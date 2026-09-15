---@meta
-- Generated LuaLS annotations for CreatureXContribution (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CreatureXContribution in build 12.1.5.69594.
---@class dbc.row.v1215.CreatureXContribution : RowProxy
---@field ID integer
---@field ContributionID integer
---@field CreatureID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CreatureXContribution self
function row:SetID(value) end

---Gets the value of field 'ContributionID'.
---@return integer value
function row:GetContributionID() end

---Sets the value of field 'ContributionID'.
---@param value integer
---@return dbc.row.v1215.CreatureXContribution self
function row:SetContributionID(value) end

---Navigates foreign relationship to 'Contribution' via 'ContributionID'.
---@return dbc.row.v1215.Contribution|nil
function row:GetContribution() end

---Creates a related 'Contribution' row and automatically links 'ContributionID'.
---@param data? table
---@return dbc.row.v1215.Contribution
function row:CreateRelated(data) end

---Gets the value of field 'CreatureID'.
---@return integer value
function row:GetCreatureID() end

---Sets the value of field 'CreatureID'.
---@param value integer
---@return dbc.row.v1215.CreatureXContribution self
function row:SetCreatureID(value) end

---Navigates foreign relationship to 'Creature' via 'CreatureID'.
---@return dbc.row.v1215.Creature|nil
function row:GetCreature() end

---Creates a related 'Creature' row and automatically links 'CreatureID'.
---@param data? table
---@return dbc.row.v1215.Creature
function row:CreateRelated(data) end

---Table container for CreatureXContribution (Build 12.1.5.69594).
---@class dbc.Table.v1215.CreatureXContribution : DbcTable
---@field [integer] dbc.row.v1215.CreatureXContribution
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CreatureXContribution
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CreatureXContribution|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CreatureXContribution
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CreatureXContribution>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CreatureXContribution[]
function tbl:GetByRelation(foreign_id) end

return {}
