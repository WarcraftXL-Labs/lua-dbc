---@meta
-- Generated LuaLS annotations for GarrMechanic (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GarrMechanic in build 12.1.5.69594.
---@class dbc.row.v1215.GarrMechanic : RowProxy
---@field ID integer
---@field GarrMechanicTypeID integer
---@field Factor number
---@field GarrAbilityID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GarrMechanic self
function row:SetID(value) end

---Gets the value of field 'GarrMechanicTypeID'.
---@return integer value
function row:GetGarrMechanicTypeID() end

---Sets the value of field 'GarrMechanicTypeID'.
---@param value integer
---@return dbc.row.v1215.GarrMechanic self
function row:SetGarrMechanicTypeID(value) end

---Navigates foreign relationship to 'GarrMechanicType' via 'GarrMechanicTypeID'.
---@return dbc.row.v1215.GarrMechanicType|nil
function row:GetGarrMechanicType() end

---Creates a related 'GarrMechanicType' row and automatically links 'GarrMechanicTypeID'.
---@param data? table
---@return dbc.row.v1215.GarrMechanicType
function row:CreateRelated(data) end

---Gets the value of field 'Factor'.
---@return number value
function row:GetFactor() end

---Sets the value of field 'Factor'.
---@param value number
---@return dbc.row.v1215.GarrMechanic self
function row:SetFactor(value) end

---Gets the value of field 'GarrAbilityID'.
---@return integer value
function row:GetGarrAbilityID() end

---Sets the value of field 'GarrAbilityID'.
---@param value integer
---@return dbc.row.v1215.GarrMechanic self
function row:SetGarrAbilityID(value) end

---Navigates foreign relationship to 'GarrAbility' via 'GarrAbilityID'.
---@return dbc.row.v1215.GarrAbility|nil
function row:GetGarrAbility() end

---Creates a related 'GarrAbility' row and automatically links 'GarrAbilityID'.
---@param data? table
---@return dbc.row.v1215.GarrAbility
function row:CreateRelated(data) end

---Table container for GarrMechanic (Build 12.1.5.69594).
---@class dbc.Table.v1215.GarrMechanic : DbcTable
---@field [integer] dbc.row.v1215.GarrMechanic
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GarrMechanic
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GarrMechanic|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GarrMechanic
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GarrMechanic>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GarrMechanic[]
function tbl:GetByRelation(foreign_id) end

return {}
