---@meta
-- Generated LuaLS annotations for DissolveEffect (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of DissolveEffect in build 12.1.5.69594.
---@class dbc.row.v1215.DissolveEffect : RowProxy
---@field ID integer
---@field Ramp number
---@field StartValue number
---@field EndValue number
---@field FadeInTime number
---@field FadeOutTime number
---@field Duration number
---@field AttachID integer
---@field ProjectionType integer
---@field TextureBlendSetID integer
---@field Scale number
---@field Flags integer
---@field CurveID integer
---@field Priority integer
---@field FresnelIntensity number
---@field Field_9_1_5_40496_014 number
---@field Field_9_1_5_40496_015 number
---@field Field_9_1_5_40496_016 number
---@field Field_9_1_5_40496_017 number
---@field Field_9_1_5_40496_018 number
---@field Field_10_0_0_44649_019 integer
---@field Field_10_0_0_44649_020 integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.DissolveEffect self
function row:SetID(value) end

---Gets the value of field 'Ramp'.
---@return number value
function row:GetRamp() end

---Sets the value of field 'Ramp'.
---@param value number
---@return dbc.row.v1215.DissolveEffect self
function row:SetRamp(value) end

---Gets the value of field 'StartValue'.
---@return number value
function row:GetStartValue() end

---Sets the value of field 'StartValue'.
---@param value number
---@return dbc.row.v1215.DissolveEffect self
function row:SetStartValue(value) end

---Gets the value of field 'EndValue'.
---@return number value
function row:GetEndValue() end

---Sets the value of field 'EndValue'.
---@param value number
---@return dbc.row.v1215.DissolveEffect self
function row:SetEndValue(value) end

---Gets the value of field 'FadeInTime'.
---@return number value
function row:GetFadeInTime() end

---Sets the value of field 'FadeInTime'.
---@param value number
---@return dbc.row.v1215.DissolveEffect self
function row:SetFadeInTime(value) end

---Gets the value of field 'FadeOutTime'.
---@return number value
function row:GetFadeOutTime() end

---Sets the value of field 'FadeOutTime'.
---@param value number
---@return dbc.row.v1215.DissolveEffect self
function row:SetFadeOutTime(value) end

---Gets the value of field 'Duration'.
---@return number value
function row:GetDuration() end

---Sets the value of field 'Duration'.
---@param value number
---@return dbc.row.v1215.DissolveEffect self
function row:SetDuration(value) end

---Gets the value of field 'AttachID'.
---@return integer value
function row:GetAttachID() end

---Sets the value of field 'AttachID'.
---@param value integer
---@return dbc.row.v1215.DissolveEffect self
function row:SetAttachID(value) end

---Navigates foreign relationship to 'Attach' via 'AttachID'.
---@return dbc.row.v1215.Attach|nil
function row:GetAttach() end

---Creates a related 'Attach' row and automatically links 'AttachID'.
---@param data? table
---@return dbc.row.v1215.Attach
function row:CreateRelated(data) end

---Gets the value of field 'ProjectionType'.
---@return integer value
function row:GetProjectionType() end

---Sets the value of field 'ProjectionType'.
---@param value integer
---@return dbc.row.v1215.DissolveEffect self
function row:SetProjectionType(value) end

---Gets the value of field 'TextureBlendSetID'.
---@return integer value
function row:GetTextureBlendSetID() end

---Sets the value of field 'TextureBlendSetID'.
---@param value integer
---@return dbc.row.v1215.DissolveEffect self
function row:SetTextureBlendSetID(value) end

---Navigates foreign relationship to 'TextureBlendSet' via 'TextureBlendSetID'.
---@return dbc.row.v1215.TextureBlendSet|nil
function row:GetTextureBlendSet() end

---Creates a related 'TextureBlendSet' row and automatically links 'TextureBlendSetID'.
---@param data? table
---@return dbc.row.v1215.TextureBlendSet
function row:CreateRelated(data) end

---Gets the value of field 'Scale'.
---@return number value
function row:GetScale() end

---Sets the value of field 'Scale'.
---@param value number
---@return dbc.row.v1215.DissolveEffect self
function row:SetScale(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.DissolveEffect self
function row:SetFlags(value) end

---Gets the value of field 'CurveID'.
---@return integer value
function row:GetCurveID() end

---Sets the value of field 'CurveID'.
---@param value integer
---@return dbc.row.v1215.DissolveEffect self
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
---@return dbc.row.v1215.DissolveEffect self
function row:SetPriority(value) end

---Gets the value of field 'FresnelIntensity'.
---@return number value
function row:GetFresnelIntensity() end

---Sets the value of field 'FresnelIntensity'.
---@param value number
---@return dbc.row.v1215.DissolveEffect self
function row:SetFresnelIntensity(value) end

---Gets the value of field 'Field_9_1_5_40496_014'.
---@return number value
function row:GetField_9_1_5_40496_014() end

---Sets the value of field 'Field_9_1_5_40496_014'.
---@param value number
---@return dbc.row.v1215.DissolveEffect self
function row:SetField_9_1_5_40496_014(value) end

---Gets the value of field 'Field_9_1_5_40496_015'.
---@return number value
function row:GetField_9_1_5_40496_015() end

---Sets the value of field 'Field_9_1_5_40496_015'.
---@param value number
---@return dbc.row.v1215.DissolveEffect self
function row:SetField_9_1_5_40496_015(value) end

---Gets the value of field 'Field_9_1_5_40496_016'.
---@return number value
function row:GetField_9_1_5_40496_016() end

---Sets the value of field 'Field_9_1_5_40496_016'.
---@param value number
---@return dbc.row.v1215.DissolveEffect self
function row:SetField_9_1_5_40496_016(value) end

---Gets the value of field 'Field_9_1_5_40496_017'.
---@return number value
function row:GetField_9_1_5_40496_017() end

---Sets the value of field 'Field_9_1_5_40496_017'.
---@param value number
---@return dbc.row.v1215.DissolveEffect self
function row:SetField_9_1_5_40496_017(value) end

---Gets the value of field 'Field_9_1_5_40496_018'.
---@return number value
function row:GetField_9_1_5_40496_018() end

---Sets the value of field 'Field_9_1_5_40496_018'.
---@param value number
---@return dbc.row.v1215.DissolveEffect self
function row:SetField_9_1_5_40496_018(value) end

---Gets the value of field 'Field_10_0_0_44649_019'.
---@return integer value
function row:GetField_10_0_0_44649_019() end

---Sets the value of field 'Field_10_0_0_44649_019'.
---@param value integer
---@return dbc.row.v1215.DissolveEffect self
function row:SetField_10_0_0_44649_019(value) end

---Gets the value of field 'Field_10_0_0_44649_020'.
---@return integer value
function row:GetField_10_0_0_44649_020() end

---Sets the value of field 'Field_10_0_0_44649_020'.
---@param value integer
---@return dbc.row.v1215.DissolveEffect self
function row:SetField_10_0_0_44649_020(value) end

---Table container for DissolveEffect (Build 12.1.5.69594).
---@class dbc.Table.v1215.DissolveEffect : DbcTable
---@field [integer] dbc.row.v1215.DissolveEffect
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.DissolveEffect
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.DissolveEffect|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.DissolveEffect
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.DissolveEffect>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.DissolveEffect[]
function tbl:GetByRelation(foreign_id) end

return {}
