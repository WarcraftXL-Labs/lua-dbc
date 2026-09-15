---@meta
-- Generated LuaLS annotations for CreatureImmunities (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CreatureImmunities in build 12.1.5.69594.
---@class dbc.row.v1215.CreatureImmunities : RowProxy
---@field ID integer
---@field School integer
---@field DispelType integer
---@field MechanicsAllowed integer
---@field EffectsAllowed integer
---@field StatesAllowed integer
---@field Flags integer
---@field Mechanic integer[]
---@field Effect integer[]
---@field State integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CreatureImmunities self
function row:SetID(value) end

---Gets the value of field 'School'.
---@return integer value
function row:GetSchool() end

---Sets the value of field 'School'.
---@param value integer
---@return dbc.row.v1215.CreatureImmunities self
function row:SetSchool(value) end

---Gets the value of field 'DispelType'.
---@return integer value
function row:GetDispelType() end

---Sets the value of field 'DispelType'.
---@param value integer
---@return dbc.row.v1215.CreatureImmunities self
function row:SetDispelType(value) end

---Gets the value of field 'MechanicsAllowed'.
---@return integer value
function row:GetMechanicsAllowed() end

---Sets the value of field 'MechanicsAllowed'.
---@param value integer
---@return dbc.row.v1215.CreatureImmunities self
function row:SetMechanicsAllowed(value) end

---Gets the value of field 'EffectsAllowed'.
---@return integer value
function row:GetEffectsAllowed() end

---Sets the value of field 'EffectsAllowed'.
---@param value integer
---@return dbc.row.v1215.CreatureImmunities self
function row:SetEffectsAllowed(value) end

---Gets the value of field 'StatesAllowed'.
---@return integer value
function row:GetStatesAllowed() end

---Sets the value of field 'StatesAllowed'.
---@param value integer
---@return dbc.row.v1215.CreatureImmunities self
function row:SetStatesAllowed(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.CreatureImmunities self
function row:SetFlags(value) end

---Gets the value of field 'Mechanic'.
---@return integer[] value
function row:GetMechanic() end

---Sets the value of field 'Mechanic'.
---@param value integer[]
---@return dbc.row.v1215.CreatureImmunities self
function row:SetMechanic(value) end

---Gets element at 1-based index in 'Mechanic'.
---@param index integer
---@return integer value
function row:GetMechanicItem(index) end

---Gets the value of field 'Effect'.
---@return integer[] value
function row:GetEffect() end

---Sets the value of field 'Effect'.
---@param value integer[]
---@return dbc.row.v1215.CreatureImmunities self
function row:SetEffect(value) end

---Gets element at 1-based index in 'Effect'.
---@param index integer
---@return integer value
function row:GetEffectItem(index) end

---Gets the value of field 'State'.
---@return integer[] value
function row:GetState() end

---Sets the value of field 'State'.
---@param value integer[]
---@return dbc.row.v1215.CreatureImmunities self
function row:SetState(value) end

---Gets element at 1-based index in 'State'.
---@param index integer
---@return integer value
function row:GetStateItem(index) end

---Table container for CreatureImmunities (Build 12.1.5.69594).
---@class dbc.Table.v1215.CreatureImmunities : DbcTable
---@field [integer] dbc.row.v1215.CreatureImmunities
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CreatureImmunities
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CreatureImmunities|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CreatureImmunities
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CreatureImmunities>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CreatureImmunities[]
function tbl:GetByRelation(foreign_id) end

return {}
