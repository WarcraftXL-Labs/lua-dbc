---@meta
-- Generated LuaLS annotations for SoundAmbience (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SoundAmbience in build 12.1.5.69594.
---@class dbc.row.v1215.SoundAmbience : RowProxy
---@field ID integer
---@field Flags integer
---@field SoundFilterID integer
---@field FlavorSoundFilterID integer
---@field AmbienceID integer[]
---@field AmbienceStartID integer[]
---@field AmbienceStopID integer[]
---@field SoundKitID integer[] WindSoundKitID? All sound entries are wind loops

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SoundAmbience self
function row:SetID(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.SoundAmbience self
function row:SetFlags(value) end

---Gets the value of field 'SoundFilterID'.
---@return integer value
function row:GetSoundFilterID() end

---Sets the value of field 'SoundFilterID'.
---@param value integer
---@return dbc.row.v1215.SoundAmbience self
function row:SetSoundFilterID(value) end

---Navigates foreign relationship to 'SoundFilter' via 'SoundFilterID'.
---@return dbc.row.v1215.SoundFilter|nil
function row:GetSoundFilter() end

---Creates a related 'SoundFilter' row and automatically links 'SoundFilterID'.
---@param data? table
---@return dbc.row.v1215.SoundFilter
function row:CreateRelated(data) end

---Gets the value of field 'FlavorSoundFilterID'.
---@return integer value
function row:GetFlavorSoundFilterID() end

---Sets the value of field 'FlavorSoundFilterID'.
---@param value integer
---@return dbc.row.v1215.SoundAmbience self
function row:SetFlavorSoundFilterID(value) end

---Navigates foreign relationship to 'FlavorSoundFilter' via 'FlavorSoundFilterID'.
---@return dbc.row.v1215.FlavorSoundFilter|nil
function row:GetFlavorSoundFilter() end

---Creates a related 'FlavorSoundFilter' row and automatically links 'FlavorSoundFilterID'.
---@param data? table
---@return dbc.row.v1215.FlavorSoundFilter
function row:CreateRelated(data) end

---Gets the value of field 'AmbienceID'.
---@return integer[] value
function row:GetAmbienceID() end

---Sets the value of field 'AmbienceID'.
---@param value integer[]
---@return dbc.row.v1215.SoundAmbience self
function row:SetAmbienceID(value) end

---Gets element at 1-based index in 'AmbienceID'.
---@param index integer
---@return integer value
function row:GetAmbienceIDItem(index) end

---Navigates foreign relationship to 'SoundKit' via 'AmbienceID'.
---@return dbc.row.v1215.SoundKit|nil
function row:GetAmbience() end

---Creates a related 'SoundKit' row and automatically links 'AmbienceID'.
---@param data? table
---@return dbc.row.v1215.SoundKit
function row:CreateRelated(data) end

---Gets the value of field 'AmbienceStartID'.
---@return integer[] value
function row:GetAmbienceStartID() end

---Sets the value of field 'AmbienceStartID'.
---@param value integer[]
---@return dbc.row.v1215.SoundAmbience self
function row:SetAmbienceStartID(value) end

---Gets element at 1-based index in 'AmbienceStartID'.
---@param index integer
---@return integer value
function row:GetAmbienceStartIDItem(index) end

---Navigates foreign relationship to 'SoundKit' via 'AmbienceStartID'.
---@return dbc.row.v1215.SoundKit|nil
function row:GetAmbienceStart() end

---Creates a related 'SoundKit' row and automatically links 'AmbienceStartID'.
---@param data? table
---@return dbc.row.v1215.SoundKit
function row:CreateRelated(data) end

---Gets the value of field 'AmbienceStopID'.
---@return integer[] value
function row:GetAmbienceStopID() end

---Sets the value of field 'AmbienceStopID'.
---@param value integer[]
---@return dbc.row.v1215.SoundAmbience self
function row:SetAmbienceStopID(value) end

---Gets element at 1-based index in 'AmbienceStopID'.
---@param index integer
---@return integer value
function row:GetAmbienceStopIDItem(index) end

---Navigates foreign relationship to 'SoundKit' via 'AmbienceStopID'.
---@return dbc.row.v1215.SoundKit|nil
function row:GetAmbienceStop() end

---Creates a related 'SoundKit' row and automatically links 'AmbienceStopID'.
---@param data? table
---@return dbc.row.v1215.SoundKit
function row:CreateRelated(data) end

---Gets the value of field 'SoundKitID'.
---@return integer[] value
function row:GetSoundKitID() end

---Sets the value of field 'SoundKitID'.
---@param value integer[]
---@return dbc.row.v1215.SoundAmbience self
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

---Table container for SoundAmbience (Build 12.1.5.69594).
---@class dbc.Table.v1215.SoundAmbience : DbcTable
---@field [integer] dbc.row.v1215.SoundAmbience
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SoundAmbience
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SoundAmbience|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SoundAmbience
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SoundAmbience>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SoundAmbience[]
function tbl:GetByRelation(foreign_id) end

return {}
