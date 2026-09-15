---@meta
-- Generated LuaLS annotations for ComponentModelFileData (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ComponentModelFileData in build 12.1.5.69594.
---@class dbc.row.v1215.ComponentModelFileData : RowProxy
---@field ID integer
---@field GenderIndex integer
---@field ClassID integer
---@field RaceID integer
---@field PositionIndex integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ComponentModelFileData self
function row:SetID(value) end

---Navigates foreign relationship to 'FileData' via 'ID'.
---@return dbc.row.v1215.FileData|nil
function row:GetID() end

---Creates a related 'FileData' row and automatically links 'ID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'GenderIndex'.
---@return integer value
function row:GetGenderIndex() end

---Sets the value of field 'GenderIndex'.
---@param value integer
---@return dbc.row.v1215.ComponentModelFileData self
function row:SetGenderIndex(value) end

---Gets the value of field 'ClassID'.
---@return integer value
function row:GetClassID() end

---Sets the value of field 'ClassID'.
---@param value integer
---@return dbc.row.v1215.ComponentModelFileData self
function row:SetClassID(value) end

---Navigates foreign relationship to 'ChrClasses' via 'ClassID'.
---@return dbc.row.v1215.ChrClasses|nil
function row:GetClass() end

---Creates a related 'ChrClasses' row and automatically links 'ClassID'.
---@param data? table
---@return dbc.row.v1215.ChrClasses
function row:CreateRelated(data) end

---Gets the value of field 'RaceID'.
---@return integer value
function row:GetRaceID() end

---Sets the value of field 'RaceID'.
---@param value integer
---@return dbc.row.v1215.ComponentModelFileData self
function row:SetRaceID(value) end

---Navigates foreign relationship to 'ChrRaces' via 'RaceID'.
---@return dbc.row.v1215.ChrRaces|nil
function row:GetRace() end

---Creates a related 'ChrRaces' row and automatically links 'RaceID'.
---@param data? table
---@return dbc.row.v1215.ChrRaces
function row:CreateRelated(data) end

---Gets the value of field 'PositionIndex'.
---@return integer value
function row:GetPositionIndex() end

---Sets the value of field 'PositionIndex'.
---@param value integer
---@return dbc.row.v1215.ComponentModelFileData self
function row:SetPositionIndex(value) end

---Table container for ComponentModelFileData (Build 12.1.5.69594).
---@class dbc.Table.v1215.ComponentModelFileData : DbcTable
---@field [integer] dbc.row.v1215.ComponentModelFileData
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ComponentModelFileData
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ComponentModelFileData|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ComponentModelFileData
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ComponentModelFileData>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ComponentModelFileData[]
function tbl:GetByRelation(foreign_id) end

return {}
