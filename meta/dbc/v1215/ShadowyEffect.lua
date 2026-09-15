---@meta
-- Generated LuaLS annotations for ShadowyEffect (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ShadowyEffect in build 12.1.5.69594.
---@class dbc.row.v1215.ShadowyEffect : RowProxy
---@field ID integer
---@field PrimaryColor integer
---@field SecondaryColor integer
---@field Duration number
---@field Value number
---@field FadeInTime number
---@field FadeOutTime number
---@field AttachPos integer
---@field Flags integer
---@field InnerStrength number
---@field OuterStrength number
---@field InitialDelay number
---@field CurveID integer
---@field Priority integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ShadowyEffect self
function row:SetID(value) end

---Gets the value of field 'PrimaryColor'.
---@return integer value
function row:GetPrimaryColor() end

---Sets the value of field 'PrimaryColor'.
---@param value integer
---@return dbc.row.v1215.ShadowyEffect self
function row:SetPrimaryColor(value) end

---Gets the value of field 'SecondaryColor'.
---@return integer value
function row:GetSecondaryColor() end

---Sets the value of field 'SecondaryColor'.
---@param value integer
---@return dbc.row.v1215.ShadowyEffect self
function row:SetSecondaryColor(value) end

---Gets the value of field 'Duration'.
---@return number value
function row:GetDuration() end

---Sets the value of field 'Duration'.
---@param value number
---@return dbc.row.v1215.ShadowyEffect self
function row:SetDuration(value) end

---Gets the value of field 'Value'.
---@return number value
function row:GetValue() end

---Sets the value of field 'Value'.
---@param value number
---@return dbc.row.v1215.ShadowyEffect self
function row:SetValue(value) end

---Gets the value of field 'FadeInTime'.
---@return number value
function row:GetFadeInTime() end

---Sets the value of field 'FadeInTime'.
---@param value number
---@return dbc.row.v1215.ShadowyEffect self
function row:SetFadeInTime(value) end

---Gets the value of field 'FadeOutTime'.
---@return number value
function row:GetFadeOutTime() end

---Sets the value of field 'FadeOutTime'.
---@param value number
---@return dbc.row.v1215.ShadowyEffect self
function row:SetFadeOutTime(value) end

---Gets the value of field 'AttachPos'.
---@return integer value
function row:GetAttachPos() end

---Sets the value of field 'AttachPos'.
---@param value integer
---@return dbc.row.v1215.ShadowyEffect self
function row:SetAttachPos(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.ShadowyEffect self
function row:SetFlags(value) end

---Gets the value of field 'InnerStrength'.
---@return number value
function row:GetInnerStrength() end

---Sets the value of field 'InnerStrength'.
---@param value number
---@return dbc.row.v1215.ShadowyEffect self
function row:SetInnerStrength(value) end

---Gets the value of field 'OuterStrength'.
---@return number value
function row:GetOuterStrength() end

---Sets the value of field 'OuterStrength'.
---@param value number
---@return dbc.row.v1215.ShadowyEffect self
function row:SetOuterStrength(value) end

---Gets the value of field 'InitialDelay'.
---@return number value
function row:GetInitialDelay() end

---Sets the value of field 'InitialDelay'.
---@param value number
---@return dbc.row.v1215.ShadowyEffect self
function row:SetInitialDelay(value) end

---Gets the value of field 'CurveID'.
---@return integer value
function row:GetCurveID() end

---Sets the value of field 'CurveID'.
---@param value integer
---@return dbc.row.v1215.ShadowyEffect self
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
---@return dbc.row.v1215.ShadowyEffect self
function row:SetPriority(value) end

---Table container for ShadowyEffect (Build 12.1.5.69594).
---@class dbc.Table.v1215.ShadowyEffect : DbcTable
---@field [integer] dbc.row.v1215.ShadowyEffect
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ShadowyEffect
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ShadowyEffect|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ShadowyEffect
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ShadowyEffect>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ShadowyEffect[]
function tbl:GetByRelation(foreign_id) end

return {}
