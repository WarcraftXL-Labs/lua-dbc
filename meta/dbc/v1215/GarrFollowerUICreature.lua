---@meta
-- Generated LuaLS annotations for GarrFollowerUICreature (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GarrFollowerUICreature in build 12.1.5.69594.
---@class dbc.row.v1215.GarrFollowerUICreature : RowProxy
---@field ID integer
---@field OrderIndex integer
---@field FactionIndex integer
---@field CreatureID integer
---@field Scale number
---@field Flags integer
---@field GarrFollowerID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GarrFollowerUICreature self
function row:SetID(value) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.GarrFollowerUICreature self
function row:SetOrderIndex(value) end

---Gets the value of field 'FactionIndex'.
---@return integer value
function row:GetFactionIndex() end

---Sets the value of field 'FactionIndex'.
---@param value integer
---@return dbc.row.v1215.GarrFollowerUICreature self
function row:SetFactionIndex(value) end

---Gets the value of field 'CreatureID'.
---@return integer value
function row:GetCreatureID() end

---Sets the value of field 'CreatureID'.
---@param value integer
---@return dbc.row.v1215.GarrFollowerUICreature self
function row:SetCreatureID(value) end

---Navigates foreign relationship to 'Creature' via 'CreatureID'.
---@return dbc.row.v1215.Creature|nil
function row:GetCreature() end

---Creates a related 'Creature' row and automatically links 'CreatureID'.
---@param data? table
---@return dbc.row.v1215.Creature
function row:CreateRelated(data) end

---Gets the value of field 'Scale'.
---@return number value
function row:GetScale() end

---Sets the value of field 'Scale'.
---@param value number
---@return dbc.row.v1215.GarrFollowerUICreature self
function row:SetScale(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.GarrFollowerUICreature self
function row:SetFlags(value) end

---Gets the value of field 'GarrFollowerID'.
---@return integer value
function row:GetGarrFollowerID() end

---Sets the value of field 'GarrFollowerID'.
---@param value integer
---@return dbc.row.v1215.GarrFollowerUICreature self
function row:SetGarrFollowerID(value) end

---Navigates foreign relationship to 'GarrFollower' via 'GarrFollowerID'.
---@return dbc.row.v1215.GarrFollower|nil
function row:GetGarrFollower() end

---Creates a related 'GarrFollower' row and automatically links 'GarrFollowerID'.
---@param data? table
---@return dbc.row.v1215.GarrFollower
function row:CreateRelated(data) end

---Table container for GarrFollowerUICreature (Build 12.1.5.69594).
---@class dbc.Table.v1215.GarrFollowerUICreature : DbcTable
---@field [integer] dbc.row.v1215.GarrFollowerUICreature
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GarrFollowerUICreature
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GarrFollowerUICreature|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GarrFollowerUICreature
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GarrFollowerUICreature>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GarrFollowerUICreature[]
function tbl:GetByRelation(foreign_id) end

return {}
