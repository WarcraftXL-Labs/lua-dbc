---@meta
-- Generated LuaLS annotations for PvpScalingEffect (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of PvpScalingEffect in build 12.1.5.69594.
---@class dbc.row.v1215.PvpScalingEffect : RowProxy
---@field ID integer
---@field SpecializationID integer
---@field PvpScalingEffectTypeID integer
---@field Value number

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.PvpScalingEffect self
function row:SetID(value) end

---Gets the value of field 'SpecializationID'.
---@return integer value
function row:GetSpecializationID() end

---Sets the value of field 'SpecializationID'.
---@param value integer
---@return dbc.row.v1215.PvpScalingEffect self
function row:SetSpecializationID(value) end

---Navigates foreign relationship to 'Specialization' via 'SpecializationID'.
---@return dbc.row.v1215.Specialization|nil
function row:GetSpecialization() end

---Creates a related 'Specialization' row and automatically links 'SpecializationID'.
---@param data? table
---@return dbc.row.v1215.Specialization
function row:CreateRelated(data) end

---Gets the value of field 'PvpScalingEffectTypeID'.
---@return integer value
function row:GetPvpScalingEffectTypeID() end

---Sets the value of field 'PvpScalingEffectTypeID'.
---@param value integer
---@return dbc.row.v1215.PvpScalingEffect self
function row:SetPvpScalingEffectTypeID(value) end

---Navigates foreign relationship to 'PvpScalingEffectType' via 'PvpScalingEffectTypeID'.
---@return dbc.row.v1215.PvpScalingEffectType|nil
function row:GetPvpScalingEffectType() end

---Creates a related 'PvpScalingEffectType' row and automatically links 'PvpScalingEffectTypeID'.
---@param data? table
---@return dbc.row.v1215.PvpScalingEffectType
function row:CreateRelated(data) end

---Gets the value of field 'Value'.
---@return number value
function row:GetValue() end

---Sets the value of field 'Value'.
---@param value number
---@return dbc.row.v1215.PvpScalingEffect self
function row:SetValue(value) end

---Table container for PvpScalingEffect (Build 12.1.5.69594).
---@class dbc.Table.v1215.PvpScalingEffect : DbcTable
---@field [integer] dbc.row.v1215.PvpScalingEffect
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.PvpScalingEffect
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.PvpScalingEffect|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.PvpScalingEffect
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.PvpScalingEffect>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.PvpScalingEffect[]
function tbl:GetByRelation(foreign_id) end

return {}
