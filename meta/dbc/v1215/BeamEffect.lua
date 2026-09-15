---@meta
-- Generated LuaLS annotations for BeamEffect (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of BeamEffect in build 12.1.5.69594.
---@class dbc.row.v1215.BeamEffect : RowProxy
---@field ID integer
---@field BeamID integer
---@field SourceMinDistance number
---@field FixedLength number
---@field Flags integer
---@field SourceOffset integer
---@field DestOffset integer
---@field SourceAttachID integer
---@field DestAttachID integer
---@field SourcePositionerID integer
---@field DestPositionerID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.BeamEffect self
function row:SetID(value) end

---Gets the value of field 'BeamID'.
---@return integer value
function row:GetBeamID() end

---Sets the value of field 'BeamID'.
---@param value integer
---@return dbc.row.v1215.BeamEffect self
function row:SetBeamID(value) end

---Navigates foreign relationship to 'SpellChainEffects' via 'BeamID'.
---@return dbc.row.v1215.SpellChainEffects|nil
function row:GetBeam() end

---Creates a related 'SpellChainEffects' row and automatically links 'BeamID'.
---@param data? table
---@return dbc.row.v1215.SpellChainEffects
function row:CreateRelated(data) end

---Gets the value of field 'SourceMinDistance'.
---@return number value
function row:GetSourceMinDistance() end

---Sets the value of field 'SourceMinDistance'.
---@param value number
---@return dbc.row.v1215.BeamEffect self
function row:SetSourceMinDistance(value) end

---Gets the value of field 'FixedLength'.
---@return number value
function row:GetFixedLength() end

---Sets the value of field 'FixedLength'.
---@param value number
---@return dbc.row.v1215.BeamEffect self
function row:SetFixedLength(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.BeamEffect self
function row:SetFlags(value) end

---Gets the value of field 'SourceOffset'.
---@return integer value
function row:GetSourceOffset() end

---Sets the value of field 'SourceOffset'.
---@param value integer
---@return dbc.row.v1215.BeamEffect self
function row:SetSourceOffset(value) end

---Gets the value of field 'DestOffset'.
---@return integer value
function row:GetDestOffset() end

---Sets the value of field 'DestOffset'.
---@param value integer
---@return dbc.row.v1215.BeamEffect self
function row:SetDestOffset(value) end

---Gets the value of field 'SourceAttachID'.
---@return integer value
function row:GetSourceAttachID() end

---Sets the value of field 'SourceAttachID'.
---@param value integer
---@return dbc.row.v1215.BeamEffect self
function row:SetSourceAttachID(value) end

---Navigates foreign relationship to 'SourceAttach' via 'SourceAttachID'.
---@return dbc.row.v1215.SourceAttach|nil
function row:GetSourceAttach() end

---Creates a related 'SourceAttach' row and automatically links 'SourceAttachID'.
---@param data? table
---@return dbc.row.v1215.SourceAttach
function row:CreateRelated(data) end

---Gets the value of field 'DestAttachID'.
---@return integer value
function row:GetDestAttachID() end

---Sets the value of field 'DestAttachID'.
---@param value integer
---@return dbc.row.v1215.BeamEffect self
function row:SetDestAttachID(value) end

---Navigates foreign relationship to 'DestAttach' via 'DestAttachID'.
---@return dbc.row.v1215.DestAttach|nil
function row:GetDestAttach() end

---Creates a related 'DestAttach' row and automatically links 'DestAttachID'.
---@param data? table
---@return dbc.row.v1215.DestAttach
function row:CreateRelated(data) end

---Gets the value of field 'SourcePositionerID'.
---@return integer value
function row:GetSourcePositionerID() end

---Sets the value of field 'SourcePositionerID'.
---@param value integer
---@return dbc.row.v1215.BeamEffect self
function row:SetSourcePositionerID(value) end

---Navigates foreign relationship to 'Positioner' via 'SourcePositionerID'.
---@return dbc.row.v1215.Positioner|nil
function row:GetSourcePositioner() end

---Creates a related 'Positioner' row and automatically links 'SourcePositionerID'.
---@param data? table
---@return dbc.row.v1215.Positioner
function row:CreateRelated(data) end

---Gets the value of field 'DestPositionerID'.
---@return integer value
function row:GetDestPositionerID() end

---Sets the value of field 'DestPositionerID'.
---@param value integer
---@return dbc.row.v1215.BeamEffect self
function row:SetDestPositionerID(value) end

---Navigates foreign relationship to 'Positioner' via 'DestPositionerID'.
---@return dbc.row.v1215.Positioner|nil
function row:GetDestPositioner() end

---Creates a related 'Positioner' row and automatically links 'DestPositionerID'.
---@param data? table
---@return dbc.row.v1215.Positioner
function row:CreateRelated(data) end

---Table container for BeamEffect (Build 12.1.5.69594).
---@class dbc.Table.v1215.BeamEffect : DbcTable
---@field [integer] dbc.row.v1215.BeamEffect
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.BeamEffect
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.BeamEffect|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.BeamEffect
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.BeamEffect>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.BeamEffect[]
function tbl:GetByRelation(foreign_id) end

return {}
