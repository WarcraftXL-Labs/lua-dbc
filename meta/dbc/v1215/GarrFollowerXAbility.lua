---@meta
-- Generated LuaLS annotations for GarrFollowerXAbility (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GarrFollowerXAbility in build 12.1.5.69594.
---@class dbc.row.v1215.GarrFollowerXAbility : RowProxy
---@field ID integer
---@field OrderIndex integer
---@field FactionIndex integer
---@field GarrAbilityID integer
---@field GarrFollowerID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GarrFollowerXAbility self
function row:SetID(value) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.GarrFollowerXAbility self
function row:SetOrderIndex(value) end

---Gets the value of field 'FactionIndex'.
---@return integer value
function row:GetFactionIndex() end

---Sets the value of field 'FactionIndex'.
---@param value integer
---@return dbc.row.v1215.GarrFollowerXAbility self
function row:SetFactionIndex(value) end

---Gets the value of field 'GarrAbilityID'.
---@return integer value
function row:GetGarrAbilityID() end

---Sets the value of field 'GarrAbilityID'.
---@param value integer
---@return dbc.row.v1215.GarrFollowerXAbility self
function row:SetGarrAbilityID(value) end

---Navigates foreign relationship to 'GarrAbility' via 'GarrAbilityID'.
---@return dbc.row.v1215.GarrAbility|nil
function row:GetGarrAbility() end

---Creates a related 'GarrAbility' row and automatically links 'GarrAbilityID'.
---@param data? table
---@return dbc.row.v1215.GarrAbility
function row:CreateRelated(data) end

---Gets the value of field 'GarrFollowerID'.
---@return integer value
function row:GetGarrFollowerID() end

---Sets the value of field 'GarrFollowerID'.
---@param value integer
---@return dbc.row.v1215.GarrFollowerXAbility self
function row:SetGarrFollowerID(value) end

---Navigates foreign relationship to 'GarrFollower' via 'GarrFollowerID'.
---@return dbc.row.v1215.GarrFollower|nil
function row:GetGarrFollower() end

---Creates a related 'GarrFollower' row and automatically links 'GarrFollowerID'.
---@param data? table
---@return dbc.row.v1215.GarrFollower
function row:CreateRelated(data) end

---Table container for GarrFollowerXAbility (Build 12.1.5.69594).
---@class dbc.Table.v1215.GarrFollowerXAbility : DbcTable
---@field [integer] dbc.row.v1215.GarrFollowerXAbility
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GarrFollowerXAbility
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GarrFollowerXAbility|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GarrFollowerXAbility
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GarrFollowerXAbility>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GarrFollowerXAbility[]
function tbl:GetByRelation(foreign_id) end

return {}
