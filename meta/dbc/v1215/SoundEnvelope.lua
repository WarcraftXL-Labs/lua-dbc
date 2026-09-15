---@meta
-- Generated LuaLS annotations for SoundEnvelope (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SoundEnvelope in build 12.1.5.69594.
---@class dbc.row.v1215.SoundEnvelope : RowProxy
---@field ID integer
---@field SoundKitID integer
---@field EnvelopeType integer
---@field Flags integer
---@field CurveID integer
---@field DecayIndex integer
---@field SustainIndex integer
---@field ReleaseIndex integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SoundEnvelope self
function row:SetID(value) end

---Gets the value of field 'SoundKitID'.
---@return integer value
function row:GetSoundKitID() end

---Sets the value of field 'SoundKitID'.
---@param value integer
---@return dbc.row.v1215.SoundEnvelope self
function row:SetSoundKitID(value) end

---Navigates foreign relationship to 'SoundKit' via 'SoundKitID'.
---@return dbc.row.v1215.SoundKit|nil
function row:GetSoundKit() end

---Creates a related 'SoundKit' row and automatically links 'SoundKitID'.
---@param data? table
---@return dbc.row.v1215.SoundKit
function row:CreateRelated(data) end

---Gets the value of field 'EnvelopeType'.
---@return integer value
function row:GetEnvelopeType() end

---Sets the value of field 'EnvelopeType'.
---@param value integer
---@return dbc.row.v1215.SoundEnvelope self
function row:SetEnvelopeType(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.SoundEnvelope self
function row:SetFlags(value) end

---Gets the value of field 'CurveID'.
---@return integer value
function row:GetCurveID() end

---Sets the value of field 'CurveID'.
---@param value integer
---@return dbc.row.v1215.SoundEnvelope self
function row:SetCurveID(value) end

---Navigates foreign relationship to 'Curve' via 'CurveID'.
---@return dbc.row.v1215.Curve|nil
function row:GetCurve() end

---Creates a related 'Curve' row and automatically links 'CurveID'.
---@param data? table
---@return dbc.row.v1215.Curve
function row:CreateRelated(data) end

---Gets the value of field 'DecayIndex'.
---@return integer value
function row:GetDecayIndex() end

---Sets the value of field 'DecayIndex'.
---@param value integer
---@return dbc.row.v1215.SoundEnvelope self
function row:SetDecayIndex(value) end

---Gets the value of field 'SustainIndex'.
---@return integer value
function row:GetSustainIndex() end

---Sets the value of field 'SustainIndex'.
---@param value integer
---@return dbc.row.v1215.SoundEnvelope self
function row:SetSustainIndex(value) end

---Gets the value of field 'ReleaseIndex'.
---@return integer value
function row:GetReleaseIndex() end

---Sets the value of field 'ReleaseIndex'.
---@param value integer
---@return dbc.row.v1215.SoundEnvelope self
function row:SetReleaseIndex(value) end

---Table container for SoundEnvelope (Build 12.1.5.69594).
---@class dbc.Table.v1215.SoundEnvelope : DbcTable
---@field [integer] dbc.row.v1215.SoundEnvelope
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SoundEnvelope
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SoundEnvelope|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SoundEnvelope
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SoundEnvelope>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SoundEnvelope[]
function tbl:GetByRelation(foreign_id) end

return {}
