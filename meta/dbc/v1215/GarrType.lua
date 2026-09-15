---@meta
-- Generated LuaLS annotations for GarrType (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GarrType in build 12.1.5.69594.
---@class dbc.row.v1215.GarrType : RowProxy
---@field ID integer
---@field PrimaryCurrencyTypeID integer
---@field SecondaryCurrencyTypeID integer
---@field ExpansionID integer
---@field Flags integer
---@field AutoFollowerHealRate number
---@field MissionCostCurveID integer
---@field AutoFollowerHealCostMult number
---@field MapIDs integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GarrType self
function row:SetID(value) end

---Gets the value of field 'PrimaryCurrencyTypeID'.
---@return integer value
function row:GetPrimaryCurrencyTypeID() end

---Sets the value of field 'PrimaryCurrencyTypeID'.
---@param value integer
---@return dbc.row.v1215.GarrType self
function row:SetPrimaryCurrencyTypeID(value) end

---Navigates foreign relationship to 'CurrencyTypes' via 'PrimaryCurrencyTypeID'.
---@return dbc.row.v1215.CurrencyTypes|nil
function row:GetPrimaryCurrencyType() end

---Creates a related 'CurrencyTypes' row and automatically links 'PrimaryCurrencyTypeID'.
---@param data? table
---@return dbc.row.v1215.CurrencyTypes
function row:CreateRelated(data) end

---Gets the value of field 'SecondaryCurrencyTypeID'.
---@return integer value
function row:GetSecondaryCurrencyTypeID() end

---Sets the value of field 'SecondaryCurrencyTypeID'.
---@param value integer
---@return dbc.row.v1215.GarrType self
function row:SetSecondaryCurrencyTypeID(value) end

---Navigates foreign relationship to 'CurrencyTypes' via 'SecondaryCurrencyTypeID'.
---@return dbc.row.v1215.CurrencyTypes|nil
function row:GetSecondaryCurrencyType() end

---Creates a related 'CurrencyTypes' row and automatically links 'SecondaryCurrencyTypeID'.
---@param data? table
---@return dbc.row.v1215.CurrencyTypes
function row:CreateRelated(data) end

---Gets the value of field 'ExpansionID'.
---@return integer value
function row:GetExpansionID() end

---Sets the value of field 'ExpansionID'.
---@param value integer
---@return dbc.row.v1215.GarrType self
function row:SetExpansionID(value) end

---Navigates foreign relationship to 'Expansion' via 'ExpansionID'.
---@return dbc.row.v1215.Expansion|nil
function row:GetExpansion() end

---Creates a related 'Expansion' row and automatically links 'ExpansionID'.
---@param data? table
---@return dbc.row.v1215.Expansion
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.GarrType self
function row:SetFlags(value) end

---Gets the value of field 'AutoFollowerHealRate'.
---@return number value
function row:GetAutoFollowerHealRate() end

---Sets the value of field 'AutoFollowerHealRate'.
---@param value number
---@return dbc.row.v1215.GarrType self
function row:SetAutoFollowerHealRate(value) end

---Gets the value of field 'MissionCostCurveID'.
---@return integer value
function row:GetMissionCostCurveID() end

---Sets the value of field 'MissionCostCurveID'.
---@param value integer
---@return dbc.row.v1215.GarrType self
function row:SetMissionCostCurveID(value) end

---Navigates foreign relationship to 'Curve' via 'MissionCostCurveID'.
---@return dbc.row.v1215.Curve|nil
function row:GetMissionCostCurve() end

---Creates a related 'Curve' row and automatically links 'MissionCostCurveID'.
---@param data? table
---@return dbc.row.v1215.Curve
function row:CreateRelated(data) end

---Gets the value of field 'AutoFollowerHealCostMult'.
---@return number value
function row:GetAutoFollowerHealCostMult() end

---Sets the value of field 'AutoFollowerHealCostMult'.
---@param value number
---@return dbc.row.v1215.GarrType self
function row:SetAutoFollowerHealCostMult(value) end

---Gets the value of field 'MapIDs'.
---@return integer[] value
function row:GetMapIDs() end

---Sets the value of field 'MapIDs'.
---@param value integer[]
---@return dbc.row.v1215.GarrType self
function row:SetMapIDs(value) end

---Gets element at 1-based index in 'MapIDs'.
---@param index integer
---@return integer value
function row:GetMapIDsItem(index) end

---Navigates foreign relationship to 'Map' via 'MapIDs'.
---@return dbc.row.v1215.Map|nil
function row:GetMapIDs() end

---Creates a related 'Map' row and automatically links 'MapIDs'.
---@param data? table
---@return dbc.row.v1215.Map
function row:CreateRelated(data) end

---Table container for GarrType (Build 12.1.5.69594).
---@class dbc.Table.v1215.GarrType : DbcTable
---@field [integer] dbc.row.v1215.GarrType
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GarrType
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GarrType|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GarrType
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GarrType>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GarrType[]
function tbl:GetByRelation(foreign_id) end

return {}
