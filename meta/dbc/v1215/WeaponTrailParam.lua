---@meta
-- Generated LuaLS annotations for WeaponTrailParam (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of WeaponTrailParam in build 12.1.5.69594.
---@class dbc.row.v1215.WeaponTrailParam : RowProxy
---@field ID integer
---@field Hand integer
---@field Duration number
---@field FadeOutTime number
---@field EdgeLifeSpan number
---@field InitialDelay number
---@field SmoothSampleAngle number
---@field OverrideAttachTop integer
---@field OverrideAttachBot integer
---@field Flags integer
---@field WeaponTrailID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.WeaponTrailParam self
function row:SetID(value) end

---Gets the value of field 'Hand'.
---@return integer value
function row:GetHand() end

---Sets the value of field 'Hand'.
---@param value integer
---@return dbc.row.v1215.WeaponTrailParam self
function row:SetHand(value) end

---Gets the value of field 'Duration'.
---@return number value
function row:GetDuration() end

---Sets the value of field 'Duration'.
---@param value number
---@return dbc.row.v1215.WeaponTrailParam self
function row:SetDuration(value) end

---Gets the value of field 'FadeOutTime'.
---@return number value
function row:GetFadeOutTime() end

---Sets the value of field 'FadeOutTime'.
---@param value number
---@return dbc.row.v1215.WeaponTrailParam self
function row:SetFadeOutTime(value) end

---Gets the value of field 'EdgeLifeSpan'.
---@return number value
function row:GetEdgeLifeSpan() end

---Sets the value of field 'EdgeLifeSpan'.
---@param value number
---@return dbc.row.v1215.WeaponTrailParam self
function row:SetEdgeLifeSpan(value) end

---Gets the value of field 'InitialDelay'.
---@return number value
function row:GetInitialDelay() end

---Sets the value of field 'InitialDelay'.
---@param value number
---@return dbc.row.v1215.WeaponTrailParam self
function row:SetInitialDelay(value) end

---Gets the value of field 'SmoothSampleAngle'.
---@return number value
function row:GetSmoothSampleAngle() end

---Sets the value of field 'SmoothSampleAngle'.
---@param value number
---@return dbc.row.v1215.WeaponTrailParam self
function row:SetSmoothSampleAngle(value) end

---Gets the value of field 'OverrideAttachTop'.
---@return integer value
function row:GetOverrideAttachTop() end

---Sets the value of field 'OverrideAttachTop'.
---@param value integer
---@return dbc.row.v1215.WeaponTrailParam self
function row:SetOverrideAttachTop(value) end

---Gets the value of field 'OverrideAttachBot'.
---@return integer value
function row:GetOverrideAttachBot() end

---Sets the value of field 'OverrideAttachBot'.
---@param value integer
---@return dbc.row.v1215.WeaponTrailParam self
function row:SetOverrideAttachBot(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.WeaponTrailParam self
function row:SetFlags(value) end

---Gets the value of field 'WeaponTrailID'.
---@return integer value
function row:GetWeaponTrailID() end

---Sets the value of field 'WeaponTrailID'.
---@param value integer
---@return dbc.row.v1215.WeaponTrailParam self
function row:SetWeaponTrailID(value) end

---Navigates foreign relationship to 'WeaponTrail' via 'WeaponTrailID'.
---@return dbc.row.v1215.WeaponTrail|nil
function row:GetWeaponTrail() end

---Creates a related 'WeaponTrail' row and automatically links 'WeaponTrailID'.
---@param data? table
---@return dbc.row.v1215.WeaponTrail
function row:CreateRelated(data) end

---Table container for WeaponTrailParam (Build 12.1.5.69594).
---@class dbc.Table.v1215.WeaponTrailParam : DbcTable
---@field [integer] dbc.row.v1215.WeaponTrailParam
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.WeaponTrailParam
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.WeaponTrailParam|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.WeaponTrailParam
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.WeaponTrailParam>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.WeaponTrailParam[]
function tbl:GetByRelation(foreign_id) end

return {}
