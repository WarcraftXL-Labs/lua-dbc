---@meta
-- Generated LuaLS annotations for SoundEntriesAdvanced (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of SoundEntriesAdvanced in build 3.3.5.12340.
---@class dbc.row.v335.SoundEntriesAdvanced : RowProxy
---@field ID integer
---@field SoundEntryID integer
---@field InnerRadius2D number
---@field TimeA integer
---@field TimeB integer
---@field TimeC integer
---@field TimeD integer
---@field RandomOffsetRange integer
---@field Usage integer
---@field TimeIntervalMin integer
---@field TimeIntervalMax integer
---@field VolumeSliderCategory integer
---@field DuckToSFX number
---@field DuckToMusic number
---@field DuckToAmbience number
---@field InnerRadiusOfInfluence number
---@field OuterRadiusOfInfluence number
---@field TimeToDuck integer
---@field TimeToUnduck integer
---@field InsideAngle number
---@field OutsideAngle number
---@field OutsideVolume number
---@field OuterRadius2D number
---@field Name string

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.SoundEntriesAdvanced self
function row:SetID(value) end

---Gets the value of field 'SoundEntryID'.
---@return integer value
function row:GetSoundEntryID() end

---Sets the value of field 'SoundEntryID'.
---@param value integer
---@return dbc.row.v335.SoundEntriesAdvanced self
function row:SetSoundEntryID(value) end

---Navigates foreign relationship to 'SoundEntries' via 'SoundEntryID'.
---@return dbc.row.v335.SoundEntries|nil
function row:GetSoundEntry() end

---Creates a related 'SoundEntries' row and automatically links 'SoundEntryID'.
---@param data? table
---@return dbc.row.v335.SoundEntries
function row:CreateRelated(data) end

---Gets the value of field 'InnerRadius2D'.
---@return number value
function row:GetInnerRadius2D() end

---Sets the value of field 'InnerRadius2D'.
---@param value number
---@return dbc.row.v335.SoundEntriesAdvanced self
function row:SetInnerRadius2D(value) end

---Gets the value of field 'TimeA'.
---@return integer value
function row:GetTimeA() end

---Sets the value of field 'TimeA'.
---@param value integer
---@return dbc.row.v335.SoundEntriesAdvanced self
function row:SetTimeA(value) end

---Gets the value of field 'TimeB'.
---@return integer value
function row:GetTimeB() end

---Sets the value of field 'TimeB'.
---@param value integer
---@return dbc.row.v335.SoundEntriesAdvanced self
function row:SetTimeB(value) end

---Gets the value of field 'TimeC'.
---@return integer value
function row:GetTimeC() end

---Sets the value of field 'TimeC'.
---@param value integer
---@return dbc.row.v335.SoundEntriesAdvanced self
function row:SetTimeC(value) end

---Gets the value of field 'TimeD'.
---@return integer value
function row:GetTimeD() end

---Sets the value of field 'TimeD'.
---@param value integer
---@return dbc.row.v335.SoundEntriesAdvanced self
function row:SetTimeD(value) end

---Gets the value of field 'RandomOffsetRange'.
---@return integer value
function row:GetRandomOffsetRange() end

---Sets the value of field 'RandomOffsetRange'.
---@param value integer
---@return dbc.row.v335.SoundEntriesAdvanced self
function row:SetRandomOffsetRange(value) end

---Gets the value of field 'Usage'.
---@return integer value
function row:GetUsage() end

---Sets the value of field 'Usage'.
---@param value integer
---@return dbc.row.v335.SoundEntriesAdvanced self
function row:SetUsage(value) end

---Gets the value of field 'TimeIntervalMin'.
---@return integer value
function row:GetTimeIntervalMin() end

---Sets the value of field 'TimeIntervalMin'.
---@param value integer
---@return dbc.row.v335.SoundEntriesAdvanced self
function row:SetTimeIntervalMin(value) end

---Gets the value of field 'TimeIntervalMax'.
---@return integer value
function row:GetTimeIntervalMax() end

---Sets the value of field 'TimeIntervalMax'.
---@param value integer
---@return dbc.row.v335.SoundEntriesAdvanced self
function row:SetTimeIntervalMax(value) end

---Gets the value of field 'VolumeSliderCategory'.
---@return integer value
function row:GetVolumeSliderCategory() end

---Sets the value of field 'VolumeSliderCategory'.
---@param value integer
---@return dbc.row.v335.SoundEntriesAdvanced self
function row:SetVolumeSliderCategory(value) end

---Gets the value of field 'DuckToSFX'.
---@return number value
function row:GetDuckToSFX() end

---Sets the value of field 'DuckToSFX'.
---@param value number
---@return dbc.row.v335.SoundEntriesAdvanced self
function row:SetDuckToSFX(value) end

---Gets the value of field 'DuckToMusic'.
---@return number value
function row:GetDuckToMusic() end

---Sets the value of field 'DuckToMusic'.
---@param value number
---@return dbc.row.v335.SoundEntriesAdvanced self
function row:SetDuckToMusic(value) end

---Gets the value of field 'DuckToAmbience'.
---@return number value
function row:GetDuckToAmbience() end

---Sets the value of field 'DuckToAmbience'.
---@param value number
---@return dbc.row.v335.SoundEntriesAdvanced self
function row:SetDuckToAmbience(value) end

---Gets the value of field 'InnerRadiusOfInfluence'.
---@return number value
function row:GetInnerRadiusOfInfluence() end

---Sets the value of field 'InnerRadiusOfInfluence'.
---@param value number
---@return dbc.row.v335.SoundEntriesAdvanced self
function row:SetInnerRadiusOfInfluence(value) end

---Gets the value of field 'OuterRadiusOfInfluence'.
---@return number value
function row:GetOuterRadiusOfInfluence() end

---Sets the value of field 'OuterRadiusOfInfluence'.
---@param value number
---@return dbc.row.v335.SoundEntriesAdvanced self
function row:SetOuterRadiusOfInfluence(value) end

---Gets the value of field 'TimeToDuck'.
---@return integer value
function row:GetTimeToDuck() end

---Sets the value of field 'TimeToDuck'.
---@param value integer
---@return dbc.row.v335.SoundEntriesAdvanced self
function row:SetTimeToDuck(value) end

---Gets the value of field 'TimeToUnduck'.
---@return integer value
function row:GetTimeToUnduck() end

---Sets the value of field 'TimeToUnduck'.
---@param value integer
---@return dbc.row.v335.SoundEntriesAdvanced self
function row:SetTimeToUnduck(value) end

---Gets the value of field 'InsideAngle'.
---@return number value
function row:GetInsideAngle() end

---Sets the value of field 'InsideAngle'.
---@param value number
---@return dbc.row.v335.SoundEntriesAdvanced self
function row:SetInsideAngle(value) end

---Gets the value of field 'OutsideAngle'.
---@return number value
function row:GetOutsideAngle() end

---Sets the value of field 'OutsideAngle'.
---@param value number
---@return dbc.row.v335.SoundEntriesAdvanced self
function row:SetOutsideAngle(value) end

---Gets the value of field 'OutsideVolume'.
---@return number value
function row:GetOutsideVolume() end

---Sets the value of field 'OutsideVolume'.
---@param value number
---@return dbc.row.v335.SoundEntriesAdvanced self
function row:SetOutsideVolume(value) end

---Gets the value of field 'OuterRadius2D'.
---@return number value
function row:GetOuterRadius2D() end

---Sets the value of field 'OuterRadius2D'.
---@param value number
---@return dbc.row.v335.SoundEntriesAdvanced self
function row:SetOuterRadius2D(value) end

---Gets the value of field 'Name'.
---@return string value
function row:GetName() end

---Sets the value of field 'Name'.
---@param value string
---@return dbc.row.v335.SoundEntriesAdvanced self
function row:SetName(value) end

---Table container for SoundEntriesAdvanced (Build 3.3.5.12340).
---@class dbc.Table.v335.SoundEntriesAdvanced : DbcTable
---@field [integer] dbc.row.v335.SoundEntriesAdvanced
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.SoundEntriesAdvanced
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.SoundEntriesAdvanced|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.SoundEntriesAdvanced
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.SoundEntriesAdvanced>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.SoundEntriesAdvanced[]
function tbl:GetByRelation(foreign_id) end

return {}
