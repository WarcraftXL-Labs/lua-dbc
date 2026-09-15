---@meta
-- Generated LuaLS annotations for SoulbindConduit (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SoulbindConduit in build 12.1.5.69594.
---@class dbc.row.v1215.SoulbindConduit : RowProxy
---@field ID integer
---@field ConduitType integer 0: Finesse, 1: Potency, 2: Endurance
---@field CovenantID integer
---@field SpecSetID integer
---@field Flags integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SoulbindConduit self
function row:SetID(value) end

---Gets the value of field 'ConduitType'.
---@return integer value
function row:GetConduitType() end

---Sets the value of field 'ConduitType'.
---@param value integer
---@return dbc.row.v1215.SoulbindConduit self
function row:SetConduitType(value) end

---Gets the value of field 'CovenantID'.
---@return integer value
function row:GetCovenantID() end

---Sets the value of field 'CovenantID'.
---@param value integer
---@return dbc.row.v1215.SoulbindConduit self
function row:SetCovenantID(value) end

---Navigates foreign relationship to 'Covenant' via 'CovenantID'.
---@return dbc.row.v1215.Covenant|nil
function row:GetCovenant() end

---Creates a related 'Covenant' row and automatically links 'CovenantID'.
---@param data? table
---@return dbc.row.v1215.Covenant
function row:CreateRelated(data) end

---Gets the value of field 'SpecSetID'.
---@return integer value
function row:GetSpecSetID() end

---Sets the value of field 'SpecSetID'.
---@param value integer
---@return dbc.row.v1215.SoulbindConduit self
function row:SetSpecSetID(value) end

---Navigates foreign relationship to 'SpecSetMember' via 'SpecSetID'.
---@return dbc.row.v1215.SpecSetMember|nil
function row:GetSpecSet() end

---Creates a related 'SpecSetMember' row and automatically links 'SpecSetID'.
---@param data? table
---@return dbc.row.v1215.SpecSetMember
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.SoulbindConduit self
function row:SetFlags(value) end

---Table container for SoulbindConduit (Build 12.1.5.69594).
---@class dbc.Table.v1215.SoulbindConduit : DbcTable
---@field [integer] dbc.row.v1215.SoulbindConduit
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SoulbindConduit
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SoulbindConduit|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SoulbindConduit
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SoulbindConduit>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SoulbindConduit[]
function tbl:GetByRelation(foreign_id) end

return {}
