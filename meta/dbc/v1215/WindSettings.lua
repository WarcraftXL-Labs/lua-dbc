---@meta
-- Generated LuaLS annotations for WindSettings (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of WindSettings in build 12.1.5.69594.
---@class dbc.row.v1215.WindSettings : RowProxy
---@field ID integer
---@field BaseDir number[]
---@field VarianceDir number[]
---@field MaxStepDir number[]
---@field BaseMag number
---@field VarianceMagOver number
---@field VarianceMagUnder number
---@field MaxStepMag number
---@field Frequency number
---@field Duration number
---@field Flags integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.WindSettings self
function row:SetID(value) end

---Gets the value of field 'BaseDir'.
---@return number[] value
function row:GetBaseDir() end

---Sets the value of field 'BaseDir'.
---@param value number[]
---@return dbc.row.v1215.WindSettings self
function row:SetBaseDir(value) end

---Gets element at 1-based index in 'BaseDir'.
---@param index integer
---@return number value
function row:GetBaseDirItem(index) end

---Gets the value of field 'VarianceDir'.
---@return number[] value
function row:GetVarianceDir() end

---Sets the value of field 'VarianceDir'.
---@param value number[]
---@return dbc.row.v1215.WindSettings self
function row:SetVarianceDir(value) end

---Gets element at 1-based index in 'VarianceDir'.
---@param index integer
---@return number value
function row:GetVarianceDirItem(index) end

---Gets the value of field 'MaxStepDir'.
---@return number[] value
function row:GetMaxStepDir() end

---Sets the value of field 'MaxStepDir'.
---@param value number[]
---@return dbc.row.v1215.WindSettings self
function row:SetMaxStepDir(value) end

---Gets element at 1-based index in 'MaxStepDir'.
---@param index integer
---@return number value
function row:GetMaxStepDirItem(index) end

---Gets the value of field 'BaseMag'.
---@return number value
function row:GetBaseMag() end

---Sets the value of field 'BaseMag'.
---@param value number
---@return dbc.row.v1215.WindSettings self
function row:SetBaseMag(value) end

---Gets the value of field 'VarianceMagOver'.
---@return number value
function row:GetVarianceMagOver() end

---Sets the value of field 'VarianceMagOver'.
---@param value number
---@return dbc.row.v1215.WindSettings self
function row:SetVarianceMagOver(value) end

---Gets the value of field 'VarianceMagUnder'.
---@return number value
function row:GetVarianceMagUnder() end

---Sets the value of field 'VarianceMagUnder'.
---@param value number
---@return dbc.row.v1215.WindSettings self
function row:SetVarianceMagUnder(value) end

---Gets the value of field 'MaxStepMag'.
---@return number value
function row:GetMaxStepMag() end

---Sets the value of field 'MaxStepMag'.
---@param value number
---@return dbc.row.v1215.WindSettings self
function row:SetMaxStepMag(value) end

---Gets the value of field 'Frequency'.
---@return number value
function row:GetFrequency() end

---Sets the value of field 'Frequency'.
---@param value number
---@return dbc.row.v1215.WindSettings self
function row:SetFrequency(value) end

---Gets the value of field 'Duration'.
---@return number value
function row:GetDuration() end

---Sets the value of field 'Duration'.
---@param value number
---@return dbc.row.v1215.WindSettings self
function row:SetDuration(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.WindSettings self
function row:SetFlags(value) end

---Table container for WindSettings (Build 12.1.5.69594).
---@class dbc.Table.v1215.WindSettings : DbcTable
---@field [integer] dbc.row.v1215.WindSettings
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.WindSettings
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.WindSettings|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.WindSettings
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.WindSettings>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.WindSettings[]
function tbl:GetByRelation(foreign_id) end

return {}
