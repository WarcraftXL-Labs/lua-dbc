---@meta
-- Generated LuaLS annotations for SpellVisualColorEffect (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SpellVisualColorEffect in build 12.1.5.69594.
---@class dbc.row.v1215.SpellVisualColorEffect : RowProxy
---@field ID integer
---@field Duration number
---@field Color integer
---@field Flags integer
---@field Type integer
---@field RedCurveID integer
---@field GreenCurveID integer
---@field BlueCurveID integer
---@field AlphaCurveID integer
---@field OpacityCurveID integer
---@field ColorMultiplier number
---@field PositionerID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SpellVisualColorEffect self
function row:SetID(value) end

---Gets the value of field 'Duration'.
---@return number value
function row:GetDuration() end

---Sets the value of field 'Duration'.
---@param value number
---@return dbc.row.v1215.SpellVisualColorEffect self
function row:SetDuration(value) end

---Gets the value of field 'Color'.
---@return integer value
function row:GetColor() end

---Sets the value of field 'Color'.
---@param value integer
---@return dbc.row.v1215.SpellVisualColorEffect self
function row:SetColor(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.SpellVisualColorEffect self
function row:SetFlags(value) end

---Gets the value of field 'Type'.
---@return integer value
function row:GetType() end

---Sets the value of field 'Type'.
---@param value integer
---@return dbc.row.v1215.SpellVisualColorEffect self
function row:SetType(value) end

---Gets the value of field 'RedCurveID'.
---@return integer value
function row:GetRedCurveID() end

---Sets the value of field 'RedCurveID'.
---@param value integer
---@return dbc.row.v1215.SpellVisualColorEffect self
function row:SetRedCurveID(value) end

---Navigates foreign relationship to 'Curve' via 'RedCurveID'.
---@return dbc.row.v1215.Curve|nil
function row:GetRedCurve() end

---Creates a related 'Curve' row and automatically links 'RedCurveID'.
---@param data? table
---@return dbc.row.v1215.Curve
function row:CreateRelated(data) end

---Gets the value of field 'GreenCurveID'.
---@return integer value
function row:GetGreenCurveID() end

---Sets the value of field 'GreenCurveID'.
---@param value integer
---@return dbc.row.v1215.SpellVisualColorEffect self
function row:SetGreenCurveID(value) end

---Navigates foreign relationship to 'Curve' via 'GreenCurveID'.
---@return dbc.row.v1215.Curve|nil
function row:GetGreenCurve() end

---Creates a related 'Curve' row and automatically links 'GreenCurveID'.
---@param data? table
---@return dbc.row.v1215.Curve
function row:CreateRelated(data) end

---Gets the value of field 'BlueCurveID'.
---@return integer value
function row:GetBlueCurveID() end

---Sets the value of field 'BlueCurveID'.
---@param value integer
---@return dbc.row.v1215.SpellVisualColorEffect self
function row:SetBlueCurveID(value) end

---Navigates foreign relationship to 'Curve' via 'BlueCurveID'.
---@return dbc.row.v1215.Curve|nil
function row:GetBlueCurve() end

---Creates a related 'Curve' row and automatically links 'BlueCurveID'.
---@param data? table
---@return dbc.row.v1215.Curve
function row:CreateRelated(data) end

---Gets the value of field 'AlphaCurveID'.
---@return integer value
function row:GetAlphaCurveID() end

---Sets the value of field 'AlphaCurveID'.
---@param value integer
---@return dbc.row.v1215.SpellVisualColorEffect self
function row:SetAlphaCurveID(value) end

---Navigates foreign relationship to 'Curve' via 'AlphaCurveID'.
---@return dbc.row.v1215.Curve|nil
function row:GetAlphaCurve() end

---Creates a related 'Curve' row and automatically links 'AlphaCurveID'.
---@param data? table
---@return dbc.row.v1215.Curve
function row:CreateRelated(data) end

---Gets the value of field 'OpacityCurveID'.
---@return integer value
function row:GetOpacityCurveID() end

---Sets the value of field 'OpacityCurveID'.
---@param value integer
---@return dbc.row.v1215.SpellVisualColorEffect self
function row:SetOpacityCurveID(value) end

---Navigates foreign relationship to 'Curve' via 'OpacityCurveID'.
---@return dbc.row.v1215.Curve|nil
function row:GetOpacityCurve() end

---Creates a related 'Curve' row and automatically links 'OpacityCurveID'.
---@param data? table
---@return dbc.row.v1215.Curve
function row:CreateRelated(data) end

---Gets the value of field 'ColorMultiplier'.
---@return number value
function row:GetColorMultiplier() end

---Sets the value of field 'ColorMultiplier'.
---@param value number
---@return dbc.row.v1215.SpellVisualColorEffect self
function row:SetColorMultiplier(value) end

---Gets the value of field 'PositionerID'.
---@return integer value
function row:GetPositionerID() end

---Sets the value of field 'PositionerID'.
---@param value integer
---@return dbc.row.v1215.SpellVisualColorEffect self
function row:SetPositionerID(value) end

---Navigates foreign relationship to 'Positioner' via 'PositionerID'.
---@return dbc.row.v1215.Positioner|nil
function row:GetPositioner() end

---Creates a related 'Positioner' row and automatically links 'PositionerID'.
---@param data? table
---@return dbc.row.v1215.Positioner
function row:CreateRelated(data) end

---Table container for SpellVisualColorEffect (Build 12.1.5.69594).
---@class dbc.Table.v1215.SpellVisualColorEffect : DbcTable
---@field [integer] dbc.row.v1215.SpellVisualColorEffect
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SpellVisualColorEffect
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SpellVisualColorEffect|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SpellVisualColorEffect
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SpellVisualColorEffect>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SpellVisualColorEffect[]
function tbl:GetByRelation(foreign_id) end

return {}
