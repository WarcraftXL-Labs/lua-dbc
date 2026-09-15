---@meta
-- Generated LuaLS annotations for EdgeGlowEffect (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of EdgeGlowEffect in build 12.1.5.69594.
---@class dbc.row.v1215.EdgeGlowEffect : RowProxy
---@field ID integer
---@field Duration number
---@field FadeIn number
---@field FadeOut number
---@field FresnelCoefficient number
---@field GlowRed number
---@field GlowGreen number
---@field GlowBlue number
---@field GlowAlpha number
---@field GlowMultiplier number
---@field Flags integer
---@field InitialDelay number
---@field CurveID integer
---@field Priority integer
---@field Field_12_1_0_68569_013 integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.EdgeGlowEffect self
function row:SetID(value) end

---Gets the value of field 'Duration'.
---@return number value
function row:GetDuration() end

---Sets the value of field 'Duration'.
---@param value number
---@return dbc.row.v1215.EdgeGlowEffect self
function row:SetDuration(value) end

---Gets the value of field 'FadeIn'.
---@return number value
function row:GetFadeIn() end

---Sets the value of field 'FadeIn'.
---@param value number
---@return dbc.row.v1215.EdgeGlowEffect self
function row:SetFadeIn(value) end

---Gets the value of field 'FadeOut'.
---@return number value
function row:GetFadeOut() end

---Sets the value of field 'FadeOut'.
---@param value number
---@return dbc.row.v1215.EdgeGlowEffect self
function row:SetFadeOut(value) end

---Gets the value of field 'FresnelCoefficient'.
---@return number value
function row:GetFresnelCoefficient() end

---Sets the value of field 'FresnelCoefficient'.
---@param value number
---@return dbc.row.v1215.EdgeGlowEffect self
function row:SetFresnelCoefficient(value) end

---Gets the value of field 'GlowRed'.
---@return number value
function row:GetGlowRed() end

---Sets the value of field 'GlowRed'.
---@param value number
---@return dbc.row.v1215.EdgeGlowEffect self
function row:SetGlowRed(value) end

---Gets the value of field 'GlowGreen'.
---@return number value
function row:GetGlowGreen() end

---Sets the value of field 'GlowGreen'.
---@param value number
---@return dbc.row.v1215.EdgeGlowEffect self
function row:SetGlowGreen(value) end

---Gets the value of field 'GlowBlue'.
---@return number value
function row:GetGlowBlue() end

---Sets the value of field 'GlowBlue'.
---@param value number
---@return dbc.row.v1215.EdgeGlowEffect self
function row:SetGlowBlue(value) end

---Gets the value of field 'GlowAlpha'.
---@return number value
function row:GetGlowAlpha() end

---Sets the value of field 'GlowAlpha'.
---@param value number
---@return dbc.row.v1215.EdgeGlowEffect self
function row:SetGlowAlpha(value) end

---Gets the value of field 'GlowMultiplier'.
---@return number value
function row:GetGlowMultiplier() end

---Sets the value of field 'GlowMultiplier'.
---@param value number
---@return dbc.row.v1215.EdgeGlowEffect self
function row:SetGlowMultiplier(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.EdgeGlowEffect self
function row:SetFlags(value) end

---Gets the value of field 'InitialDelay'.
---@return number value
function row:GetInitialDelay() end

---Sets the value of field 'InitialDelay'.
---@param value number
---@return dbc.row.v1215.EdgeGlowEffect self
function row:SetInitialDelay(value) end

---Gets the value of field 'CurveID'.
---@return integer value
function row:GetCurveID() end

---Sets the value of field 'CurveID'.
---@param value integer
---@return dbc.row.v1215.EdgeGlowEffect self
function row:SetCurveID(value) end

---Navigates foreign relationship to 'Curve' via 'CurveID'.
---@return dbc.row.v1215.Curve|nil
function row:GetCurve() end

---Creates a related 'Curve' row and automatically links 'CurveID'.
---@param data? table
---@return dbc.row.v1215.Curve
function row:CreateRelated(data) end

---Gets the value of field 'Priority'.
---@return integer value
function row:GetPriority() end

---Sets the value of field 'Priority'.
---@param value integer
---@return dbc.row.v1215.EdgeGlowEffect self
function row:SetPriority(value) end

---Gets the value of field 'Field_12_1_0_68569_013'.
---@return integer value
function row:GetField_12_1_0_68569_013() end

---Sets the value of field 'Field_12_1_0_68569_013'.
---@param value integer
---@return dbc.row.v1215.EdgeGlowEffect self
function row:SetField_12_1_0_68569_013(value) end

---Table container for EdgeGlowEffect (Build 12.1.5.69594).
---@class dbc.Table.v1215.EdgeGlowEffect : DbcTable
---@field [integer] dbc.row.v1215.EdgeGlowEffect
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.EdgeGlowEffect
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.EdgeGlowEffect|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.EdgeGlowEffect
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.EdgeGlowEffect>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.EdgeGlowEffect[]
function tbl:GetByRelation(foreign_id) end

return {}
