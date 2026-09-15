---@meta
-- Generated LuaLS annotations for Lightning (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of Lightning in build 12.1.5.69594.
---@class dbc.row.v1215.Lightning : RowProxy
---@field ID integer
---@field BoltDirection number[]
---@field SoundKitID integer[]
---@field BoltDirectionVariance number
---@field MinDivergence number
---@field MaxDivergence number
---@field MinConvergenceSpeed number
---@field MaxConvergenceSpeed number
---@field SegmentSize number
---@field MinBoltWidth number
---@field MaxBoltWidth number
---@field MinBoltHeight number
---@field MaxBoltHeight number
---@field MaxSegmentCount integer
---@field MinStrikeTime number
---@field MaxStrikeTime number
---@field MinEndTime number
---@field MaxEndTime number
---@field MinFadeTime number
---@field MaxFadeTime number
---@field MinIntervalTime number
---@field MaxIntervalTime number
---@field FlashColor integer
---@field BoltColor integer
---@field Brightness number
---@field MinCloudDepth number
---@field MaxCloudDepth number
---@field MinFadeInStrength number
---@field MaxFadeInStrength number
---@field MinStrikeStrength number
---@field MaxStrikeStrength number
---@field GroundBrightnessScalar number
---@field BoltBrightnessScalar number
---@field CloudBrightnessScalar number
---@field SoundEmitterDistance number

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.Lightning self
function row:SetID(value) end

---Gets the value of field 'BoltDirection'.
---@return number[] value
function row:GetBoltDirection() end

---Sets the value of field 'BoltDirection'.
---@param value number[]
---@return dbc.row.v1215.Lightning self
function row:SetBoltDirection(value) end

---Gets element at 1-based index in 'BoltDirection'.
---@param index integer
---@return number value
function row:GetBoltDirectionItem(index) end

---Gets the value of field 'SoundKitID'.
---@return integer[] value
function row:GetSoundKitID() end

---Sets the value of field 'SoundKitID'.
---@param value integer[]
---@return dbc.row.v1215.Lightning self
function row:SetSoundKitID(value) end

---Gets element at 1-based index in 'SoundKitID'.
---@param index integer
---@return integer value
function row:GetSoundKitIDItem(index) end

---Navigates foreign relationship to 'SoundKit' via 'SoundKitID'.
---@return dbc.row.v1215.SoundKit|nil
function row:GetSoundKit() end

---Creates a related 'SoundKit' row and automatically links 'SoundKitID'.
---@param data? table
---@return dbc.row.v1215.SoundKit
function row:CreateRelated(data) end

---Gets the value of field 'BoltDirectionVariance'.
---@return number value
function row:GetBoltDirectionVariance() end

---Sets the value of field 'BoltDirectionVariance'.
---@param value number
---@return dbc.row.v1215.Lightning self
function row:SetBoltDirectionVariance(value) end

---Gets the value of field 'MinDivergence'.
---@return number value
function row:GetMinDivergence() end

---Sets the value of field 'MinDivergence'.
---@param value number
---@return dbc.row.v1215.Lightning self
function row:SetMinDivergence(value) end

---Gets the value of field 'MaxDivergence'.
---@return number value
function row:GetMaxDivergence() end

---Sets the value of field 'MaxDivergence'.
---@param value number
---@return dbc.row.v1215.Lightning self
function row:SetMaxDivergence(value) end

---Gets the value of field 'MinConvergenceSpeed'.
---@return number value
function row:GetMinConvergenceSpeed() end

---Sets the value of field 'MinConvergenceSpeed'.
---@param value number
---@return dbc.row.v1215.Lightning self
function row:SetMinConvergenceSpeed(value) end

---Gets the value of field 'MaxConvergenceSpeed'.
---@return number value
function row:GetMaxConvergenceSpeed() end

---Sets the value of field 'MaxConvergenceSpeed'.
---@param value number
---@return dbc.row.v1215.Lightning self
function row:SetMaxConvergenceSpeed(value) end

---Gets the value of field 'SegmentSize'.
---@return number value
function row:GetSegmentSize() end

---Sets the value of field 'SegmentSize'.
---@param value number
---@return dbc.row.v1215.Lightning self
function row:SetSegmentSize(value) end

---Gets the value of field 'MinBoltWidth'.
---@return number value
function row:GetMinBoltWidth() end

---Sets the value of field 'MinBoltWidth'.
---@param value number
---@return dbc.row.v1215.Lightning self
function row:SetMinBoltWidth(value) end

---Gets the value of field 'MaxBoltWidth'.
---@return number value
function row:GetMaxBoltWidth() end

---Sets the value of field 'MaxBoltWidth'.
---@param value number
---@return dbc.row.v1215.Lightning self
function row:SetMaxBoltWidth(value) end

---Gets the value of field 'MinBoltHeight'.
---@return number value
function row:GetMinBoltHeight() end

---Sets the value of field 'MinBoltHeight'.
---@param value number
---@return dbc.row.v1215.Lightning self
function row:SetMinBoltHeight(value) end

---Gets the value of field 'MaxBoltHeight'.
---@return number value
function row:GetMaxBoltHeight() end

---Sets the value of field 'MaxBoltHeight'.
---@param value number
---@return dbc.row.v1215.Lightning self
function row:SetMaxBoltHeight(value) end

---Gets the value of field 'MaxSegmentCount'.
---@return integer value
function row:GetMaxSegmentCount() end

---Sets the value of field 'MaxSegmentCount'.
---@param value integer
---@return dbc.row.v1215.Lightning self
function row:SetMaxSegmentCount(value) end

---Gets the value of field 'MinStrikeTime'.
---@return number value
function row:GetMinStrikeTime() end

---Sets the value of field 'MinStrikeTime'.
---@param value number
---@return dbc.row.v1215.Lightning self
function row:SetMinStrikeTime(value) end

---Gets the value of field 'MaxStrikeTime'.
---@return number value
function row:GetMaxStrikeTime() end

---Sets the value of field 'MaxStrikeTime'.
---@param value number
---@return dbc.row.v1215.Lightning self
function row:SetMaxStrikeTime(value) end

---Gets the value of field 'MinEndTime'.
---@return number value
function row:GetMinEndTime() end

---Sets the value of field 'MinEndTime'.
---@param value number
---@return dbc.row.v1215.Lightning self
function row:SetMinEndTime(value) end

---Gets the value of field 'MaxEndTime'.
---@return number value
function row:GetMaxEndTime() end

---Sets the value of field 'MaxEndTime'.
---@param value number
---@return dbc.row.v1215.Lightning self
function row:SetMaxEndTime(value) end

---Gets the value of field 'MinFadeTime'.
---@return number value
function row:GetMinFadeTime() end

---Sets the value of field 'MinFadeTime'.
---@param value number
---@return dbc.row.v1215.Lightning self
function row:SetMinFadeTime(value) end

---Gets the value of field 'MaxFadeTime'.
---@return number value
function row:GetMaxFadeTime() end

---Sets the value of field 'MaxFadeTime'.
---@param value number
---@return dbc.row.v1215.Lightning self
function row:SetMaxFadeTime(value) end

---Gets the value of field 'MinIntervalTime'.
---@return number value
function row:GetMinIntervalTime() end

---Sets the value of field 'MinIntervalTime'.
---@param value number
---@return dbc.row.v1215.Lightning self
function row:SetMinIntervalTime(value) end

---Gets the value of field 'MaxIntervalTime'.
---@return number value
function row:GetMaxIntervalTime() end

---Sets the value of field 'MaxIntervalTime'.
---@param value number
---@return dbc.row.v1215.Lightning self
function row:SetMaxIntervalTime(value) end

---Gets the value of field 'FlashColor'.
---@return integer value
function row:GetFlashColor() end

---Sets the value of field 'FlashColor'.
---@param value integer
---@return dbc.row.v1215.Lightning self
function row:SetFlashColor(value) end

---Gets the value of field 'BoltColor'.
---@return integer value
function row:GetBoltColor() end

---Sets the value of field 'BoltColor'.
---@param value integer
---@return dbc.row.v1215.Lightning self
function row:SetBoltColor(value) end

---Gets the value of field 'Brightness'.
---@return number value
function row:GetBrightness() end

---Sets the value of field 'Brightness'.
---@param value number
---@return dbc.row.v1215.Lightning self
function row:SetBrightness(value) end

---Gets the value of field 'MinCloudDepth'.
---@return number value
function row:GetMinCloudDepth() end

---Sets the value of field 'MinCloudDepth'.
---@param value number
---@return dbc.row.v1215.Lightning self
function row:SetMinCloudDepth(value) end

---Gets the value of field 'MaxCloudDepth'.
---@return number value
function row:GetMaxCloudDepth() end

---Sets the value of field 'MaxCloudDepth'.
---@param value number
---@return dbc.row.v1215.Lightning self
function row:SetMaxCloudDepth(value) end

---Gets the value of field 'MinFadeInStrength'.
---@return number value
function row:GetMinFadeInStrength() end

---Sets the value of field 'MinFadeInStrength'.
---@param value number
---@return dbc.row.v1215.Lightning self
function row:SetMinFadeInStrength(value) end

---Gets the value of field 'MaxFadeInStrength'.
---@return number value
function row:GetMaxFadeInStrength() end

---Sets the value of field 'MaxFadeInStrength'.
---@param value number
---@return dbc.row.v1215.Lightning self
function row:SetMaxFadeInStrength(value) end

---Gets the value of field 'MinStrikeStrength'.
---@return number value
function row:GetMinStrikeStrength() end

---Sets the value of field 'MinStrikeStrength'.
---@param value number
---@return dbc.row.v1215.Lightning self
function row:SetMinStrikeStrength(value) end

---Gets the value of field 'MaxStrikeStrength'.
---@return number value
function row:GetMaxStrikeStrength() end

---Sets the value of field 'MaxStrikeStrength'.
---@param value number
---@return dbc.row.v1215.Lightning self
function row:SetMaxStrikeStrength(value) end

---Gets the value of field 'GroundBrightnessScalar'.
---@return number value
function row:GetGroundBrightnessScalar() end

---Sets the value of field 'GroundBrightnessScalar'.
---@param value number
---@return dbc.row.v1215.Lightning self
function row:SetGroundBrightnessScalar(value) end

---Gets the value of field 'BoltBrightnessScalar'.
---@return number value
function row:GetBoltBrightnessScalar() end

---Sets the value of field 'BoltBrightnessScalar'.
---@param value number
---@return dbc.row.v1215.Lightning self
function row:SetBoltBrightnessScalar(value) end

---Gets the value of field 'CloudBrightnessScalar'.
---@return number value
function row:GetCloudBrightnessScalar() end

---Sets the value of field 'CloudBrightnessScalar'.
---@param value number
---@return dbc.row.v1215.Lightning self
function row:SetCloudBrightnessScalar(value) end

---Gets the value of field 'SoundEmitterDistance'.
---@return number value
function row:GetSoundEmitterDistance() end

---Sets the value of field 'SoundEmitterDistance'.
---@param value number
---@return dbc.row.v1215.Lightning self
function row:SetSoundEmitterDistance(value) end

---Table container for Lightning (Build 12.1.5.69594).
---@class dbc.Table.v1215.Lightning : DbcTable
---@field [integer] dbc.row.v1215.Lightning
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.Lightning
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.Lightning|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.Lightning
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.Lightning>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.Lightning[]
function tbl:GetByRelation(foreign_id) end

return {}
