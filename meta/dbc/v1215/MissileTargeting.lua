---@meta
-- Generated LuaLS annotations for MissileTargeting (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of MissileTargeting in build 12.1.5.69594.
---@class dbc.row.v1215.MissileTargeting : RowProxy
---@field ID integer
---@field TurnLingering number
---@field PitchLingering number
---@field MouseLingering number
---@field EndOpacity number
---@field ArcSpeed number
---@field ArcRepeat number
---@field ArcWidth number
---@field ImpactTexRadius number
---@field ArcTextureFileID integer
---@field ImpactTextureFileID integer
---@field ImpactRadius number[]
---@field ImpactModelFileID integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.MissileTargeting self
function row:SetID(value) end

---Gets the value of field 'TurnLingering'.
---@return number value
function row:GetTurnLingering() end

---Sets the value of field 'TurnLingering'.
---@param value number
---@return dbc.row.v1215.MissileTargeting self
function row:SetTurnLingering(value) end

---Gets the value of field 'PitchLingering'.
---@return number value
function row:GetPitchLingering() end

---Sets the value of field 'PitchLingering'.
---@param value number
---@return dbc.row.v1215.MissileTargeting self
function row:SetPitchLingering(value) end

---Gets the value of field 'MouseLingering'.
---@return number value
function row:GetMouseLingering() end

---Sets the value of field 'MouseLingering'.
---@param value number
---@return dbc.row.v1215.MissileTargeting self
function row:SetMouseLingering(value) end

---Gets the value of field 'EndOpacity'.
---@return number value
function row:GetEndOpacity() end

---Sets the value of field 'EndOpacity'.
---@param value number
---@return dbc.row.v1215.MissileTargeting self
function row:SetEndOpacity(value) end

---Gets the value of field 'ArcSpeed'.
---@return number value
function row:GetArcSpeed() end

---Sets the value of field 'ArcSpeed'.
---@param value number
---@return dbc.row.v1215.MissileTargeting self
function row:SetArcSpeed(value) end

---Gets the value of field 'ArcRepeat'.
---@return number value
function row:GetArcRepeat() end

---Sets the value of field 'ArcRepeat'.
---@param value number
---@return dbc.row.v1215.MissileTargeting self
function row:SetArcRepeat(value) end

---Gets the value of field 'ArcWidth'.
---@return number value
function row:GetArcWidth() end

---Sets the value of field 'ArcWidth'.
---@param value number
---@return dbc.row.v1215.MissileTargeting self
function row:SetArcWidth(value) end

---Gets the value of field 'ImpactTexRadius'.
---@return number value
function row:GetImpactTexRadius() end

---Sets the value of field 'ImpactTexRadius'.
---@param value number
---@return dbc.row.v1215.MissileTargeting self
function row:SetImpactTexRadius(value) end

---Gets the value of field 'ArcTextureFileID'.
---@return integer value
function row:GetArcTextureFileID() end

---Sets the value of field 'ArcTextureFileID'.
---@param value integer
---@return dbc.row.v1215.MissileTargeting self
function row:SetArcTextureFileID(value) end

---Navigates foreign relationship to 'FileData' via 'ArcTextureFileID'.
---@return dbc.row.v1215.FileData|nil
function row:GetArcTextureFile() end

---Creates a related 'FileData' row and automatically links 'ArcTextureFileID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'ImpactTextureFileID'.
---@return integer value
function row:GetImpactTextureFileID() end

---Sets the value of field 'ImpactTextureFileID'.
---@param value integer
---@return dbc.row.v1215.MissileTargeting self
function row:SetImpactTextureFileID(value) end

---Navigates foreign relationship to 'FileData' via 'ImpactTextureFileID'.
---@return dbc.row.v1215.FileData|nil
function row:GetImpactTextureFile() end

---Creates a related 'FileData' row and automatically links 'ImpactTextureFileID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'ImpactRadius'.
---@return number[] value
function row:GetImpactRadius() end

---Sets the value of field 'ImpactRadius'.
---@param value number[]
---@return dbc.row.v1215.MissileTargeting self
function row:SetImpactRadius(value) end

---Gets element at 1-based index in 'ImpactRadius'.
---@param index integer
---@return number value
function row:GetImpactRadiusItem(index) end

---Gets the value of field 'ImpactModelFileID'.
---@return integer[] value
function row:GetImpactModelFileID() end

---Sets the value of field 'ImpactModelFileID'.
---@param value integer[]
---@return dbc.row.v1215.MissileTargeting self
function row:SetImpactModelFileID(value) end

---Gets element at 1-based index in 'ImpactModelFileID'.
---@param index integer
---@return integer value
function row:GetImpactModelFileIDItem(index) end

---Navigates foreign relationship to 'FileData' via 'ImpactModelFileID'.
---@return dbc.row.v1215.FileData|nil
function row:GetImpactModelFile() end

---Creates a related 'FileData' row and automatically links 'ImpactModelFileID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Table container for MissileTargeting (Build 12.1.5.69594).
---@class dbc.Table.v1215.MissileTargeting : DbcTable
---@field [integer] dbc.row.v1215.MissileTargeting
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.MissileTargeting
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.MissileTargeting|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.MissileTargeting
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.MissileTargeting>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.MissileTargeting[]
function tbl:GetByRelation(foreign_id) end

return {}
