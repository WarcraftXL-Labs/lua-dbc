---@meta
-- Generated LuaLS annotations for UiCamFbackTransmogChrRace (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of UiCamFbackTransmogChrRace in build 12.1.5.69594.
---@class dbc.row.v1215.UiCamFbackTransmogChrRace : RowProxy
---@field ID integer
---@field ChrRaceID integer
---@field Gender integer
---@field InventoryType integer
---@field Variation integer
---@field UiCameraID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.UiCamFbackTransmogChrRace self
function row:SetID(value) end

---Gets the value of field 'ChrRaceID'.
---@return integer value
function row:GetChrRaceID() end

---Sets the value of field 'ChrRaceID'.
---@param value integer
---@return dbc.row.v1215.UiCamFbackTransmogChrRace self
function row:SetChrRaceID(value) end

---Navigates foreign relationship to 'ChrRaces' via 'ChrRaceID'.
---@return dbc.row.v1215.ChrRaces|nil
function row:GetChrRace() end

---Creates a related 'ChrRaces' row and automatically links 'ChrRaceID'.
---@param data? table
---@return dbc.row.v1215.ChrRaces
function row:CreateRelated(data) end

---Gets the value of field 'Gender'.
---@return integer value
function row:GetGender() end

---Sets the value of field 'Gender'.
---@param value integer
---@return dbc.row.v1215.UiCamFbackTransmogChrRace self
function row:SetGender(value) end

---Gets the value of field 'InventoryType'.
---@return integer value
function row:GetInventoryType() end

---Sets the value of field 'InventoryType'.
---@param value integer
---@return dbc.row.v1215.UiCamFbackTransmogChrRace self
function row:SetInventoryType(value) end

---Gets the value of field 'Variation'.
---@return integer value
function row:GetVariation() end

---Sets the value of field 'Variation'.
---@param value integer
---@return dbc.row.v1215.UiCamFbackTransmogChrRace self
function row:SetVariation(value) end

---Gets the value of field 'UiCameraID'.
---@return integer value
function row:GetUiCameraID() end

---Sets the value of field 'UiCameraID'.
---@param value integer
---@return dbc.row.v1215.UiCamFbackTransmogChrRace self
function row:SetUiCameraID(value) end

---Navigates foreign relationship to 'UiCamera' via 'UiCameraID'.
---@return dbc.row.v1215.UiCamera|nil
function row:GetUiCamera() end

---Creates a related 'UiCamera' row and automatically links 'UiCameraID'.
---@param data? table
---@return dbc.row.v1215.UiCamera
function row:CreateRelated(data) end

---Table container for UiCamFbackTransmogChrRace (Build 12.1.5.69594).
---@class dbc.Table.v1215.UiCamFbackTransmogChrRace : DbcTable
---@field [integer] dbc.row.v1215.UiCamFbackTransmogChrRace
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.UiCamFbackTransmogChrRace
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.UiCamFbackTransmogChrRace|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.UiCamFbackTransmogChrRace
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.UiCamFbackTransmogChrRace>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.UiCamFbackTransmogChrRace[]
function tbl:GetByRelation(foreign_id) end

return {}
