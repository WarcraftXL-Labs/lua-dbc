---@meta
-- Generated LuaLS annotations for GarrUiAnimClassInfo (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GarrUiAnimClassInfo in build 12.1.5.69594.
---@class dbc.row.v1215.GarrUiAnimClassInfo : RowProxy
---@field ID integer
---@field GarrClassSpecID integer
---@field MovementType integer
---@field ImpactDelaySecs number
---@field CastKit integer
---@field ImpactKit integer
---@field TargetImpactKit integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GarrUiAnimClassInfo self
function row:SetID(value) end

---Gets the value of field 'GarrClassSpecID'.
---@return integer value
function row:GetGarrClassSpecID() end

---Sets the value of field 'GarrClassSpecID'.
---@param value integer
---@return dbc.row.v1215.GarrUiAnimClassInfo self
function row:SetGarrClassSpecID(value) end

---Navigates foreign relationship to 'GarrClassSpec' via 'GarrClassSpecID'.
---@return dbc.row.v1215.GarrClassSpec|nil
function row:GetGarrClassSpec() end

---Creates a related 'GarrClassSpec' row and automatically links 'GarrClassSpecID'.
---@param data? table
---@return dbc.row.v1215.GarrClassSpec
function row:CreateRelated(data) end

---Gets the value of field 'MovementType'.
---@return integer value
function row:GetMovementType() end

---Sets the value of field 'MovementType'.
---@param value integer
---@return dbc.row.v1215.GarrUiAnimClassInfo self
function row:SetMovementType(value) end

---Gets the value of field 'ImpactDelaySecs'.
---@return number value
function row:GetImpactDelaySecs() end

---Sets the value of field 'ImpactDelaySecs'.
---@param value number
---@return dbc.row.v1215.GarrUiAnimClassInfo self
function row:SetImpactDelaySecs(value) end

---Gets the value of field 'CastKit'.
---@return integer value
function row:GetCastKit() end

---Sets the value of field 'CastKit'.
---@param value integer
---@return dbc.row.v1215.GarrUiAnimClassInfo self
function row:SetCastKit(value) end

---Gets the value of field 'ImpactKit'.
---@return integer value
function row:GetImpactKit() end

---Sets the value of field 'ImpactKit'.
---@param value integer
---@return dbc.row.v1215.GarrUiAnimClassInfo self
function row:SetImpactKit(value) end

---Gets the value of field 'TargetImpactKit'.
---@return integer value
function row:GetTargetImpactKit() end

---Sets the value of field 'TargetImpactKit'.
---@param value integer
---@return dbc.row.v1215.GarrUiAnimClassInfo self
function row:SetTargetImpactKit(value) end

---Table container for GarrUiAnimClassInfo (Build 12.1.5.69594).
---@class dbc.Table.v1215.GarrUiAnimClassInfo : DbcTable
---@field [integer] dbc.row.v1215.GarrUiAnimClassInfo
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GarrUiAnimClassInfo
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GarrUiAnimClassInfo|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GarrUiAnimClassInfo
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GarrUiAnimClassInfo>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GarrUiAnimClassInfo[]
function tbl:GetByRelation(foreign_id) end

return {}
