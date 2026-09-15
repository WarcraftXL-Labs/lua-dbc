---@meta
-- Generated LuaLS annotations for UiCamFbackTalkingHeadChrRace (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of UiCamFbackTalkingHeadChrRace in build 12.1.5.69594.
---@class dbc.row.v1215.UiCamFbackTalkingHeadChrRace : RowProxy
---@field ID integer
---@field Gender integer
---@field Variation integer
---@field CameraID integer
---@field RaceID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.UiCamFbackTalkingHeadChrRace self
function row:SetID(value) end

---Gets the value of field 'Gender'.
---@return integer value
function row:GetGender() end

---Sets the value of field 'Gender'.
---@param value integer
---@return dbc.row.v1215.UiCamFbackTalkingHeadChrRace self
function row:SetGender(value) end

---Gets the value of field 'Variation'.
---@return integer value
function row:GetVariation() end

---Sets the value of field 'Variation'.
---@param value integer
---@return dbc.row.v1215.UiCamFbackTalkingHeadChrRace self
function row:SetVariation(value) end

---Gets the value of field 'CameraID'.
---@return integer value
function row:GetCameraID() end

---Sets the value of field 'CameraID'.
---@param value integer
---@return dbc.row.v1215.UiCamFbackTalkingHeadChrRace self
function row:SetCameraID(value) end

---Navigates foreign relationship to 'UiCamera' via 'CameraID'.
---@return dbc.row.v1215.UiCamera|nil
function row:GetCamera() end

---Creates a related 'UiCamera' row and automatically links 'CameraID'.
---@param data? table
---@return dbc.row.v1215.UiCamera
function row:CreateRelated(data) end

---Gets the value of field 'RaceID'.
---@return integer value
function row:GetRaceID() end

---Sets the value of field 'RaceID'.
---@param value integer
---@return dbc.row.v1215.UiCamFbackTalkingHeadChrRace self
function row:SetRaceID(value) end

---Navigates foreign relationship to 'ChrRaces' via 'RaceID'.
---@return dbc.row.v1215.ChrRaces|nil
function row:GetRace() end

---Creates a related 'ChrRaces' row and automatically links 'RaceID'.
---@param data? table
---@return dbc.row.v1215.ChrRaces
function row:CreateRelated(data) end

---Table container for UiCamFbackTalkingHeadChrRace (Build 12.1.5.69594).
---@class dbc.Table.v1215.UiCamFbackTalkingHeadChrRace : DbcTable
---@field [integer] dbc.row.v1215.UiCamFbackTalkingHeadChrRace
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.UiCamFbackTalkingHeadChrRace
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.UiCamFbackTalkingHeadChrRace|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.UiCamFbackTalkingHeadChrRace
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.UiCamFbackTalkingHeadChrRace>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.UiCamFbackTalkingHeadChrRace[]
function tbl:GetByRelation(foreign_id) end

return {}
