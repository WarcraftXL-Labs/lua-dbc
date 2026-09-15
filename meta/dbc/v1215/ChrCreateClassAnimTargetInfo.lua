---@meta
-- Generated LuaLS annotations for ChrCreateClassAnimTargetInfo (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ChrCreateClassAnimTargetInfo in build 12.1.5.69594.
---@class dbc.row.v1215.ChrCreateClassAnimTargetInfo : RowProxy
---@field ID integer
---@field ChrRacesID integer 0: race-independent fallback
---@field Sex integer 0: Male, 1: Female, 3: fallback
---@field ChrClassesID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ChrCreateClassAnimTargetInfo self
function row:SetID(value) end

---Gets the value of field 'ChrRacesID'.
---@return integer value
function row:GetChrRacesID() end

---Sets the value of field 'ChrRacesID'.
---@param value integer
---@return dbc.row.v1215.ChrCreateClassAnimTargetInfo self
function row:SetChrRacesID(value) end

---Navigates foreign relationship to 'ChrRaces' via 'ChrRacesID'.
---@return dbc.row.v1215.ChrRaces|nil
function row:GetChrRaces() end

---Creates a related 'ChrRaces' row and automatically links 'ChrRacesID'.
---@param data? table
---@return dbc.row.v1215.ChrRaces
function row:CreateRelated(data) end

---Gets the value of field 'Sex'.
---@return integer value
function row:GetSex() end

---Sets the value of field 'Sex'.
---@param value integer
---@return dbc.row.v1215.ChrCreateClassAnimTargetInfo self
function row:SetSex(value) end

---Gets the value of field 'ChrClassesID'.
---@return integer value
function row:GetChrClassesID() end

---Sets the value of field 'ChrClassesID'.
---@param value integer
---@return dbc.row.v1215.ChrCreateClassAnimTargetInfo self
function row:SetChrClassesID(value) end

---Navigates foreign relationship to 'ChrClasses' via 'ChrClassesID'.
---@return dbc.row.v1215.ChrClasses|nil
function row:GetChrClasses() end

---Creates a related 'ChrClasses' row and automatically links 'ChrClassesID'.
---@param data? table
---@return dbc.row.v1215.ChrClasses
function row:CreateRelated(data) end

---Table container for ChrCreateClassAnimTargetInfo (Build 12.1.5.69594).
---@class dbc.Table.v1215.ChrCreateClassAnimTargetInfo : DbcTable
---@field [integer] dbc.row.v1215.ChrCreateClassAnimTargetInfo
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ChrCreateClassAnimTargetInfo
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ChrCreateClassAnimTargetInfo|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ChrCreateClassAnimTargetInfo
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ChrCreateClassAnimTargetInfo>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ChrCreateClassAnimTargetInfo[]
function tbl:GetByRelation(foreign_id) end

return {}
