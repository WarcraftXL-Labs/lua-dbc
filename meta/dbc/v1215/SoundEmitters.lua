---@meta
-- Generated LuaLS annotations for SoundEmitters (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SoundEmitters in build 12.1.5.69594.
---@class dbc.row.v1215.SoundEmitters : RowProxy
---@field Name string
---@field Position number[]
---@field Direction number[]
---@field ID integer
---@field SoundEntriesID integer
---@field WorldStateExpressionID integer
---@field EmitterType integer
---@field PhaseID integer
---@field PhaseGroupID integer
---@field PhaseUseFlags integer
---@field Flags integer
---@field MapID integer

local row = {}

---Gets the value of field 'Name'.
---@return string value
function row:GetName() end

---Sets the value of field 'Name'.
---@param value string
---@return dbc.row.v1215.SoundEmitters self
function row:SetName(value) end

---Gets the value of field 'Position'.
---@return number[] value
function row:GetPosition() end

---Sets the value of field 'Position'.
---@param value number[]
---@return dbc.row.v1215.SoundEmitters self
function row:SetPosition(value) end

---Gets element at 1-based index in 'Position'.
---@param index integer
---@return number value
function row:GetPositionItem(index) end

---Gets the value of field 'Direction'.
---@return number[] value
function row:GetDirection() end

---Sets the value of field 'Direction'.
---@param value number[]
---@return dbc.row.v1215.SoundEmitters self
function row:SetDirection(value) end

---Gets element at 1-based index in 'Direction'.
---@param index integer
---@return number value
function row:GetDirectionItem(index) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SoundEmitters self
function row:SetID(value) end

---Gets the value of field 'SoundEntriesID'.
---@return integer value
function row:GetSoundEntriesID() end

---Sets the value of field 'SoundEntriesID'.
---@param value integer
---@return dbc.row.v1215.SoundEmitters self
function row:SetSoundEntriesID(value) end

---Navigates foreign relationship to 'SoundKit' via 'SoundEntriesID'.
---@return dbc.row.v1215.SoundKit|nil
function row:GetSoundEntries() end

---Creates a related 'SoundKit' row and automatically links 'SoundEntriesID'.
---@param data? table
---@return dbc.row.v1215.SoundKit
function row:CreateRelated(data) end

---Gets the value of field 'WorldStateExpressionID'.
---@return integer value
function row:GetWorldStateExpressionID() end

---Sets the value of field 'WorldStateExpressionID'.
---@param value integer
---@return dbc.row.v1215.SoundEmitters self
function row:SetWorldStateExpressionID(value) end

---Navigates foreign relationship to 'WorldStateExpression' via 'WorldStateExpressionID'.
---@return dbc.row.v1215.WorldStateExpression|nil
function row:GetWorldStateExpression() end

---Creates a related 'WorldStateExpression' row and automatically links 'WorldStateExpressionID'.
---@param data? table
---@return dbc.row.v1215.WorldStateExpression
function row:CreateRelated(data) end

---Gets the value of field 'EmitterType'.
---@return integer value
function row:GetEmitterType() end

---Sets the value of field 'EmitterType'.
---@param value integer
---@return dbc.row.v1215.SoundEmitters self
function row:SetEmitterType(value) end

---Gets the value of field 'PhaseID'.
---@return integer value
function row:GetPhaseID() end

---Sets the value of field 'PhaseID'.
---@param value integer
---@return dbc.row.v1215.SoundEmitters self
function row:SetPhaseID(value) end

---Navigates foreign relationship to 'Phase' via 'PhaseID'.
---@return dbc.row.v1215.Phase|nil
function row:GetPhase() end

---Creates a related 'Phase' row and automatically links 'PhaseID'.
---@param data? table
---@return dbc.row.v1215.Phase
function row:CreateRelated(data) end

---Gets the value of field 'PhaseGroupID'.
---@return integer value
function row:GetPhaseGroupID() end

---Sets the value of field 'PhaseGroupID'.
---@param value integer
---@return dbc.row.v1215.SoundEmitters self
function row:SetPhaseGroupID(value) end

---Navigates foreign relationship to 'PhaseXPhaseGroup' via 'PhaseGroupID'.
---@return dbc.row.v1215.PhaseXPhaseGroup|nil
function row:GetPhaseGroup() end

---Creates a related 'PhaseXPhaseGroup' row and automatically links 'PhaseGroupID'.
---@param data? table
---@return dbc.row.v1215.PhaseXPhaseGroup
function row:CreateRelated(data) end

---Gets the value of field 'PhaseUseFlags'.
---@return integer value
function row:GetPhaseUseFlags() end

---Sets the value of field 'PhaseUseFlags'.
---@param value integer
---@return dbc.row.v1215.SoundEmitters self
function row:SetPhaseUseFlags(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.SoundEmitters self
function row:SetFlags(value) end

---Gets the value of field 'MapID'.
---@return integer value
function row:GetMapID() end

---Sets the value of field 'MapID'.
---@param value integer
---@return dbc.row.v1215.SoundEmitters self
function row:SetMapID(value) end

---Navigates foreign relationship to 'Map' via 'MapID'.
---@return dbc.row.v1215.Map|nil
function row:GetMap() end

---Creates a related 'Map' row and automatically links 'MapID'.
---@param data? table
---@return dbc.row.v1215.Map
function row:CreateRelated(data) end

---Table container for SoundEmitters (Build 12.1.5.69594).
---@class dbc.Table.v1215.SoundEmitters : DbcTable
---@field [integer] dbc.row.v1215.SoundEmitters
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SoundEmitters
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SoundEmitters|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SoundEmitters
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SoundEmitters>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SoundEmitters[]
function tbl:GetByRelation(foreign_id) end

return {}
