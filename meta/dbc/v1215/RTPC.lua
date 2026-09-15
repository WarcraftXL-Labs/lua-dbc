---@meta
-- Generated LuaLS annotations for RTPC (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of RTPC in build 12.1.5.69594.
---@class dbc.row.v1215.RTPC : RowProxy
---@field ID integer
---@field SoundParameterID integer
---@field GameParameterID integer
---@field CurveID integer
---@field Field_9_0_1_33978_004 integer
---@field SoundKitID integer Guess! Assumes RTPC stands for Real Time Parameter Control (WWISE). Specified soundkits could make sense as test sounds.

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.RTPC self
function row:SetID(value) end

---Gets the value of field 'SoundParameterID'.
---@return integer value
function row:GetSoundParameterID() end

---Sets the value of field 'SoundParameterID'.
---@param value integer
---@return dbc.row.v1215.RTPC self
function row:SetSoundParameterID(value) end

---Navigates foreign relationship to 'SoundParameter' via 'SoundParameterID'.
---@return dbc.row.v1215.SoundParameter|nil
function row:GetSoundParameter() end

---Creates a related 'SoundParameter' row and automatically links 'SoundParameterID'.
---@param data? table
---@return dbc.row.v1215.SoundParameter
function row:CreateRelated(data) end

---Gets the value of field 'GameParameterID'.
---@return integer value
function row:GetGameParameterID() end

---Sets the value of field 'GameParameterID'.
---@param value integer
---@return dbc.row.v1215.RTPC self
function row:SetGameParameterID(value) end

---Navigates foreign relationship to 'GameParameter' via 'GameParameterID'.
---@return dbc.row.v1215.GameParameter|nil
function row:GetGameParameter() end

---Creates a related 'GameParameter' row and automatically links 'GameParameterID'.
---@param data? table
---@return dbc.row.v1215.GameParameter
function row:CreateRelated(data) end

---Gets the value of field 'CurveID'.
---@return integer value
function row:GetCurveID() end

---Sets the value of field 'CurveID'.
---@param value integer
---@return dbc.row.v1215.RTPC self
function row:SetCurveID(value) end

---Navigates foreign relationship to 'Curve' via 'CurveID'.
---@return dbc.row.v1215.Curve|nil
function row:GetCurve() end

---Creates a related 'Curve' row and automatically links 'CurveID'.
---@param data? table
---@return dbc.row.v1215.Curve
function row:CreateRelated(data) end

---Gets the value of field 'Field_9_0_1_33978_004'.
---@return integer value
function row:GetField_9_0_1_33978_004() end

---Sets the value of field 'Field_9_0_1_33978_004'.
---@param value integer
---@return dbc.row.v1215.RTPC self
function row:SetField_9_0_1_33978_004(value) end

---Gets the value of field 'SoundKitID'.
---@return integer value
function row:GetSoundKitID() end

---Sets the value of field 'SoundKitID'.
---@param value integer
---@return dbc.row.v1215.RTPC self
function row:SetSoundKitID(value) end

---Navigates foreign relationship to 'SoundKit' via 'SoundKitID'.
---@return dbc.row.v1215.SoundKit|nil
function row:GetSoundKit() end

---Creates a related 'SoundKit' row and automatically links 'SoundKitID'.
---@param data? table
---@return dbc.row.v1215.SoundKit
function row:CreateRelated(data) end

---Table container for RTPC (Build 12.1.5.69594).
---@class dbc.Table.v1215.RTPC : DbcTable
---@field [integer] dbc.row.v1215.RTPC
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.RTPC
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.RTPC|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.RTPC
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.RTPC>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.RTPC[]
function tbl:GetByRelation(foreign_id) end

return {}
