---@meta
-- Generated LuaLS annotations for ChrCreateClassAnimTarget (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ChrCreateClassAnimTarget in build 12.1.5.69594.
---@class dbc.row.v1215.ChrCreateClassAnimTarget : RowProxy
---@field ID integer
---@field TargetPositionX number
---@field TargetPositionY number
---@field TargetPositionZ number
---@field TimeStamp integer
---@field Field_9_0_1_34972_004 integer
---@field Field_9_0_1_34972_005 integer
---@field ChrCreateClassAnimTargetInfoID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ChrCreateClassAnimTarget self
function row:SetID(value) end

---Gets the value of field 'TargetPositionX'.
---@return number value
function row:GetTargetPositionX() end

---Sets the value of field 'TargetPositionX'.
---@param value number
---@return dbc.row.v1215.ChrCreateClassAnimTarget self
function row:SetTargetPositionX(value) end

---Gets the value of field 'TargetPositionY'.
---@return number value
function row:GetTargetPositionY() end

---Sets the value of field 'TargetPositionY'.
---@param value number
---@return dbc.row.v1215.ChrCreateClassAnimTarget self
function row:SetTargetPositionY(value) end

---Gets the value of field 'TargetPositionZ'.
---@return number value
function row:GetTargetPositionZ() end

---Sets the value of field 'TargetPositionZ'.
---@param value number
---@return dbc.row.v1215.ChrCreateClassAnimTarget self
function row:SetTargetPositionZ(value) end

---Gets the value of field 'TimeStamp'.
---@return integer value
function row:GetTimeStamp() end

---Sets the value of field 'TimeStamp'.
---@param value integer
---@return dbc.row.v1215.ChrCreateClassAnimTarget self
function row:SetTimeStamp(value) end

---Gets the value of field 'Field_9_0_1_34972_004'.
---@return integer value
function row:GetField_9_0_1_34972_004() end

---Sets the value of field 'Field_9_0_1_34972_004'.
---@param value integer
---@return dbc.row.v1215.ChrCreateClassAnimTarget self
function row:SetField_9_0_1_34972_004(value) end

---Gets the value of field 'Field_9_0_1_34972_005'.
---@return integer value
function row:GetField_9_0_1_34972_005() end

---Sets the value of field 'Field_9_0_1_34972_005'.
---@param value integer
---@return dbc.row.v1215.ChrCreateClassAnimTarget self
function row:SetField_9_0_1_34972_005(value) end

---Gets the value of field 'ChrCreateClassAnimTargetInfoID'.
---@return integer value
function row:GetChrCreateClassAnimTargetInfoID() end

---Sets the value of field 'ChrCreateClassAnimTargetInfoID'.
---@param value integer
---@return dbc.row.v1215.ChrCreateClassAnimTarget self
function row:SetChrCreateClassAnimTargetInfoID(value) end

---Navigates foreign relationship to 'ChrCreateClassAnimTargetInfo' via 'ChrCreateClassAnimTargetInfoID'.
---@return dbc.row.v1215.ChrCreateClassAnimTargetInfo|nil
function row:GetChrCreateClassAnimTargetInfo() end

---Creates a related 'ChrCreateClassAnimTargetInfo' row and automatically links 'ChrCreateClassAnimTargetInfoID'.
---@param data? table
---@return dbc.row.v1215.ChrCreateClassAnimTargetInfo
function row:CreateRelated(data) end

---Table container for ChrCreateClassAnimTarget (Build 12.1.5.69594).
---@class dbc.Table.v1215.ChrCreateClassAnimTarget : DbcTable
---@field [integer] dbc.row.v1215.ChrCreateClassAnimTarget
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ChrCreateClassAnimTarget
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ChrCreateClassAnimTarget|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ChrCreateClassAnimTarget
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ChrCreateClassAnimTarget>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ChrCreateClassAnimTarget[]
function tbl:GetByRelation(foreign_id) end

return {}
