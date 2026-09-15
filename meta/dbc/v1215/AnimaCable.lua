---@meta
-- Generated LuaLS annotations for AnimaCable (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of AnimaCable in build 12.1.5.69594.
---@class dbc.row.v1215.AnimaCable : RowProxy
---@field ID integer
---@field ParticleModel integer
---@field Field_9_0_1_33978_001 number
---@field Field_9_0_1_33978_002 number
---@field Field_9_0_1_33978_003 integer
---@field Field_9_0_1_33978_004 number
---@field Field_9_0_1_33978_005 number
---@field Field_9_0_1_33978_006 integer
---@field Field_9_0_1_33978_007 integer
---@field Field_9_0_1_33978_008 integer
---@field Field_9_0_1_33978_009 integer
---@field Flags integer &1: use 6 instead of 1 positions per node
---@field Field_9_0_1_33978_011 number
---@field Field_9_0_1_33978_012 number
---@field Field_9_0_1_33978_013 number
---@field Field_9_0_1_33978_014 number
---@field Field_9_0_1_33978_015 number
---@field Field_9_0_1_33978_016 number
---@field Field_9_0_1_33978_017 number
---@field Field_9_0_1_33978_018 number
---@field Field_9_0_1_33978_019 number
---@field Field_9_0_1_33978_020 number
---@field Field_9_0_1_33978_021 number
---@field Field_9_0_1_33978_022 number
---@field Field_9_0_1_33978_023 number
---@field Field_9_0_1_33978_024 number
---@field Field_9_0_1_33978_025 number
---@field Field_9_0_1_33978_026 number
---@field Field_9_0_1_33978_027 number
---@field Field_9_0_1_33978_028 number
---@field Field_9_0_1_33978_029 number
---@field Field_9_0_1_33978_030 number
---@field Field_9_0_1_33978_031 number
---@field Field_9_0_1_33978_032 number
---@field Field_9_0_1_34199_033 integer
---@field Field_9_0_1_34972_034 number

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.AnimaCable self
function row:SetID(value) end

---Gets the value of field 'ParticleModel'.
---@return integer value
function row:GetParticleModel() end

---Sets the value of field 'ParticleModel'.
---@param value integer
---@return dbc.row.v1215.AnimaCable self
function row:SetParticleModel(value) end

---Navigates foreign relationship to 'FileData' via 'ParticleModel'.
---@return dbc.row.v1215.FileData|nil
function row:GetParticleModel() end

---Creates a related 'FileData' row and automatically links 'ParticleModel'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'Field_9_0_1_33978_001'.
---@return number value
function row:GetField_9_0_1_33978_001() end

---Sets the value of field 'Field_9_0_1_33978_001'.
---@param value number
---@return dbc.row.v1215.AnimaCable self
function row:SetField_9_0_1_33978_001(value) end

---Gets the value of field 'Field_9_0_1_33978_002'.
---@return number value
function row:GetField_9_0_1_33978_002() end

---Sets the value of field 'Field_9_0_1_33978_002'.
---@param value number
---@return dbc.row.v1215.AnimaCable self
function row:SetField_9_0_1_33978_002(value) end

---Gets the value of field 'Field_9_0_1_33978_003'.
---@return integer value
function row:GetField_9_0_1_33978_003() end

---Sets the value of field 'Field_9_0_1_33978_003'.
---@param value integer
---@return dbc.row.v1215.AnimaCable self
function row:SetField_9_0_1_33978_003(value) end

---Gets the value of field 'Field_9_0_1_33978_004'.
---@return number value
function row:GetField_9_0_1_33978_004() end

---Sets the value of field 'Field_9_0_1_33978_004'.
---@param value number
---@return dbc.row.v1215.AnimaCable self
function row:SetField_9_0_1_33978_004(value) end

---Gets the value of field 'Field_9_0_1_33978_005'.
---@return number value
function row:GetField_9_0_1_33978_005() end

---Sets the value of field 'Field_9_0_1_33978_005'.
---@param value number
---@return dbc.row.v1215.AnimaCable self
function row:SetField_9_0_1_33978_005(value) end

---Gets the value of field 'Field_9_0_1_33978_006'.
---@return integer value
function row:GetField_9_0_1_33978_006() end

---Sets the value of field 'Field_9_0_1_33978_006'.
---@param value integer
---@return dbc.row.v1215.AnimaCable self
function row:SetField_9_0_1_33978_006(value) end

---Navigates foreign relationship to 'SoundKit' via 'Field_9_0_1_33978_006'.
---@return dbc.row.v1215.SoundKit|nil
function row:GetField_9_0_1_33978_006() end

---Creates a related 'SoundKit' row and automatically links 'Field_9_0_1_33978_006'.
---@param data? table
---@return dbc.row.v1215.SoundKit
function row:CreateRelated(data) end

---Gets the value of field 'Field_9_0_1_33978_007'.
---@return integer value
function row:GetField_9_0_1_33978_007() end

---Sets the value of field 'Field_9_0_1_33978_007'.
---@param value integer
---@return dbc.row.v1215.AnimaCable self
function row:SetField_9_0_1_33978_007(value) end

---Gets the value of field 'Field_9_0_1_33978_008'.
---@return integer value
function row:GetField_9_0_1_33978_008() end

---Sets the value of field 'Field_9_0_1_33978_008'.
---@param value integer
---@return dbc.row.v1215.AnimaCable self
function row:SetField_9_0_1_33978_008(value) end

---Gets the value of field 'Field_9_0_1_33978_009'.
---@return integer value
function row:GetField_9_0_1_33978_009() end

---Sets the value of field 'Field_9_0_1_33978_009'.
---@param value integer
---@return dbc.row.v1215.AnimaCable self
function row:SetField_9_0_1_33978_009(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.AnimaCable self
function row:SetFlags(value) end

---Gets the value of field 'Field_9_0_1_33978_011'.
---@return number value
function row:GetField_9_0_1_33978_011() end

---Sets the value of field 'Field_9_0_1_33978_011'.
---@param value number
---@return dbc.row.v1215.AnimaCable self
function row:SetField_9_0_1_33978_011(value) end

---Gets the value of field 'Field_9_0_1_33978_012'.
---@return number value
function row:GetField_9_0_1_33978_012() end

---Sets the value of field 'Field_9_0_1_33978_012'.
---@param value number
---@return dbc.row.v1215.AnimaCable self
function row:SetField_9_0_1_33978_012(value) end

---Gets the value of field 'Field_9_0_1_33978_013'.
---@return number value
function row:GetField_9_0_1_33978_013() end

---Sets the value of field 'Field_9_0_1_33978_013'.
---@param value number
---@return dbc.row.v1215.AnimaCable self
function row:SetField_9_0_1_33978_013(value) end

---Gets the value of field 'Field_9_0_1_33978_014'.
---@return number value
function row:GetField_9_0_1_33978_014() end

---Sets the value of field 'Field_9_0_1_33978_014'.
---@param value number
---@return dbc.row.v1215.AnimaCable self
function row:SetField_9_0_1_33978_014(value) end

---Gets the value of field 'Field_9_0_1_33978_015'.
---@return number value
function row:GetField_9_0_1_33978_015() end

---Sets the value of field 'Field_9_0_1_33978_015'.
---@param value number
---@return dbc.row.v1215.AnimaCable self
function row:SetField_9_0_1_33978_015(value) end

---Gets the value of field 'Field_9_0_1_33978_016'.
---@return number value
function row:GetField_9_0_1_33978_016() end

---Sets the value of field 'Field_9_0_1_33978_016'.
---@param value number
---@return dbc.row.v1215.AnimaCable self
function row:SetField_9_0_1_33978_016(value) end

---Gets the value of field 'Field_9_0_1_33978_017'.
---@return number value
function row:GetField_9_0_1_33978_017() end

---Sets the value of field 'Field_9_0_1_33978_017'.
---@param value number
---@return dbc.row.v1215.AnimaCable self
function row:SetField_9_0_1_33978_017(value) end

---Gets the value of field 'Field_9_0_1_33978_018'.
---@return number value
function row:GetField_9_0_1_33978_018() end

---Sets the value of field 'Field_9_0_1_33978_018'.
---@param value number
---@return dbc.row.v1215.AnimaCable self
function row:SetField_9_0_1_33978_018(value) end

---Gets the value of field 'Field_9_0_1_33978_019'.
---@return number value
function row:GetField_9_0_1_33978_019() end

---Sets the value of field 'Field_9_0_1_33978_019'.
---@param value number
---@return dbc.row.v1215.AnimaCable self
function row:SetField_9_0_1_33978_019(value) end

---Gets the value of field 'Field_9_0_1_33978_020'.
---@return number value
function row:GetField_9_0_1_33978_020() end

---Sets the value of field 'Field_9_0_1_33978_020'.
---@param value number
---@return dbc.row.v1215.AnimaCable self
function row:SetField_9_0_1_33978_020(value) end

---Gets the value of field 'Field_9_0_1_33978_021'.
---@return number value
function row:GetField_9_0_1_33978_021() end

---Sets the value of field 'Field_9_0_1_33978_021'.
---@param value number
---@return dbc.row.v1215.AnimaCable self
function row:SetField_9_0_1_33978_021(value) end

---Gets the value of field 'Field_9_0_1_33978_022'.
---@return number value
function row:GetField_9_0_1_33978_022() end

---Sets the value of field 'Field_9_0_1_33978_022'.
---@param value number
---@return dbc.row.v1215.AnimaCable self
function row:SetField_9_0_1_33978_022(value) end

---Gets the value of field 'Field_9_0_1_33978_023'.
---@return number value
function row:GetField_9_0_1_33978_023() end

---Sets the value of field 'Field_9_0_1_33978_023'.
---@param value number
---@return dbc.row.v1215.AnimaCable self
function row:SetField_9_0_1_33978_023(value) end

---Gets the value of field 'Field_9_0_1_33978_024'.
---@return number value
function row:GetField_9_0_1_33978_024() end

---Sets the value of field 'Field_9_0_1_33978_024'.
---@param value number
---@return dbc.row.v1215.AnimaCable self
function row:SetField_9_0_1_33978_024(value) end

---Gets the value of field 'Field_9_0_1_33978_025'.
---@return number value
function row:GetField_9_0_1_33978_025() end

---Sets the value of field 'Field_9_0_1_33978_025'.
---@param value number
---@return dbc.row.v1215.AnimaCable self
function row:SetField_9_0_1_33978_025(value) end

---Gets the value of field 'Field_9_0_1_33978_026'.
---@return number value
function row:GetField_9_0_1_33978_026() end

---Sets the value of field 'Field_9_0_1_33978_026'.
---@param value number
---@return dbc.row.v1215.AnimaCable self
function row:SetField_9_0_1_33978_026(value) end

---Gets the value of field 'Field_9_0_1_33978_027'.
---@return number value
function row:GetField_9_0_1_33978_027() end

---Sets the value of field 'Field_9_0_1_33978_027'.
---@param value number
---@return dbc.row.v1215.AnimaCable self
function row:SetField_9_0_1_33978_027(value) end

---Gets the value of field 'Field_9_0_1_33978_028'.
---@return number value
function row:GetField_9_0_1_33978_028() end

---Sets the value of field 'Field_9_0_1_33978_028'.
---@param value number
---@return dbc.row.v1215.AnimaCable self
function row:SetField_9_0_1_33978_028(value) end

---Gets the value of field 'Field_9_0_1_33978_029'.
---@return number value
function row:GetField_9_0_1_33978_029() end

---Sets the value of field 'Field_9_0_1_33978_029'.
---@param value number
---@return dbc.row.v1215.AnimaCable self
function row:SetField_9_0_1_33978_029(value) end

---Gets the value of field 'Field_9_0_1_33978_030'.
---@return number value
function row:GetField_9_0_1_33978_030() end

---Sets the value of field 'Field_9_0_1_33978_030'.
---@param value number
---@return dbc.row.v1215.AnimaCable self
function row:SetField_9_0_1_33978_030(value) end

---Gets the value of field 'Field_9_0_1_33978_031'.
---@return number value
function row:GetField_9_0_1_33978_031() end

---Sets the value of field 'Field_9_0_1_33978_031'.
---@param value number
---@return dbc.row.v1215.AnimaCable self
function row:SetField_9_0_1_33978_031(value) end

---Gets the value of field 'Field_9_0_1_33978_032'.
---@return number value
function row:GetField_9_0_1_33978_032() end

---Sets the value of field 'Field_9_0_1_33978_032'.
---@param value number
---@return dbc.row.v1215.AnimaCable self
function row:SetField_9_0_1_33978_032(value) end

---Gets the value of field 'Field_9_0_1_34199_033'.
---@return integer value
function row:GetField_9_0_1_34199_033() end

---Sets the value of field 'Field_9_0_1_34199_033'.
---@param value integer
---@return dbc.row.v1215.AnimaCable self
function row:SetField_9_0_1_34199_033(value) end

---Gets the value of field 'Field_9_0_1_34972_034'.
---@return number value
function row:GetField_9_0_1_34972_034() end

---Sets the value of field 'Field_9_0_1_34972_034'.
---@param value number
---@return dbc.row.v1215.AnimaCable self
function row:SetField_9_0_1_34972_034(value) end

---Table container for AnimaCable (Build 12.1.5.69594).
---@class dbc.Table.v1215.AnimaCable : DbcTable
---@field [integer] dbc.row.v1215.AnimaCable
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.AnimaCable
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.AnimaCable|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.AnimaCable
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.AnimaCable>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.AnimaCable[]
function tbl:GetByRelation(foreign_id) end

return {}
