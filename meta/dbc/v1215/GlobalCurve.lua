---@meta
-- Generated LuaLS annotations for GlobalCurve (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GlobalCurve in build 12.1.5.69594.
---@class dbc.row.v1215.GlobalCurve : RowProxy
---@field ID integer
---@field CurveID integer
---@field Type integer 0: CombatRatingBonus for CR_CRIT_MELEE, CR_CRIT_RANGED, CR_CRIT_SPELL; 1: CombatRatingBonus for CR_MASTERY; 2: CombatRatingBonus for CR_HASTE_SPELL; 3: CombatRatingBonus for CR_SPEED; 4: CombatRatingBonus for CR_AVOIDANCE; 5: CombatRatingBonus for CR_UNKNOWN_30, CR_VERSATILITY_DAMAGE_DONE, CR_VERSATILITY_DAMAGE_TAKEN; 6: CombatRatingBonus for CR_LIFESTEAL; 7: CombatRatingBonus for CR_DODGE; 8: CombatRatingBonus for CR_BLOCK; 9: CombatRatingBonus for CR_PARRY;

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GlobalCurve self
function row:SetID(value) end

---Gets the value of field 'CurveID'.
---@return integer value
function row:GetCurveID() end

---Sets the value of field 'CurveID'.
---@param value integer
---@return dbc.row.v1215.GlobalCurve self
function row:SetCurveID(value) end

---Navigates foreign relationship to 'Curve' via 'CurveID'.
---@return dbc.row.v1215.Curve|nil
function row:GetCurve() end

---Creates a related 'Curve' row and automatically links 'CurveID'.
---@param data? table
---@return dbc.row.v1215.Curve
function row:CreateRelated(data) end

---Gets the value of field 'Type'.
---@return integer value
function row:GetType() end

---Sets the value of field 'Type'.
---@param value integer
---@return dbc.row.v1215.GlobalCurve self
function row:SetType(value) end

---Table container for GlobalCurve (Build 12.1.5.69594).
---@class dbc.Table.v1215.GlobalCurve : DbcTable
---@field [integer] dbc.row.v1215.GlobalCurve
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GlobalCurve
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GlobalCurve|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GlobalCurve
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GlobalCurve>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GlobalCurve[]
function tbl:GetByRelation(foreign_id) end

return {}
