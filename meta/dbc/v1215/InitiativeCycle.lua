---@meta
-- Generated LuaLS annotations for InitiativeCycle (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of InitiativeCycle in build 12.1.5.69594.
---@class dbc.row.v1215.InitiativeCycle : RowProxy
---@field ID integer
---@field TimeEventID integer
---@field Field_12_0_0_63534_002 integer
---@field Field_12_0_0_63534_003 integer
---@field HouseXPCap integer
---@field NextCycleID integer Complete guesswork

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.InitiativeCycle self
function row:SetID(value) end

---Gets the value of field 'TimeEventID'.
---@return integer value
function row:GetTimeEventID() end

---Sets the value of field 'TimeEventID'.
---@param value integer
---@return dbc.row.v1215.InitiativeCycle self
function row:SetTimeEventID(value) end

---Navigates foreign relationship to 'TimeEvent' via 'TimeEventID'.
---@return dbc.row.v1215.TimeEvent|nil
function row:GetTimeEvent() end

---Creates a related 'TimeEvent' row and automatically links 'TimeEventID'.
---@param data? table
---@return dbc.row.v1215.TimeEvent
function row:CreateRelated(data) end

---Gets the value of field 'Field_12_0_0_63534_002'.
---@return integer value
function row:GetField_12_0_0_63534_002() end

---Sets the value of field 'Field_12_0_0_63534_002'.
---@param value integer
---@return dbc.row.v1215.InitiativeCycle self
function row:SetField_12_0_0_63534_002(value) end

---Gets the value of field 'Field_12_0_0_63534_003'.
---@return integer value
function row:GetField_12_0_0_63534_003() end

---Sets the value of field 'Field_12_0_0_63534_003'.
---@param value integer
---@return dbc.row.v1215.InitiativeCycle self
function row:SetField_12_0_0_63534_003(value) end

---Gets the value of field 'HouseXPCap'.
---@return integer value
function row:GetHouseXPCap() end

---Sets the value of field 'HouseXPCap'.
---@param value integer
---@return dbc.row.v1215.InitiativeCycle self
function row:SetHouseXPCap(value) end

---Gets the value of field 'NextCycleID'.
---@return integer value
function row:GetNextCycleID() end

---Sets the value of field 'NextCycleID'.
---@param value integer
---@return dbc.row.v1215.InitiativeCycle self
function row:SetNextCycleID(value) end

---Navigates foreign relationship to 'InitiativeCycle' via 'NextCycleID'.
---@return dbc.row.v1215.InitiativeCycle|nil
function row:GetNextCycle() end

---Creates a related 'InitiativeCycle' row and automatically links 'NextCycleID'.
---@param data? table
---@return dbc.row.v1215.InitiativeCycle
function row:CreateRelated(data) end

---Table container for InitiativeCycle (Build 12.1.5.69594).
---@class dbc.Table.v1215.InitiativeCycle : DbcTable
---@field [integer] dbc.row.v1215.InitiativeCycle
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.InitiativeCycle
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.InitiativeCycle|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.InitiativeCycle
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.InitiativeCycle>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.InitiativeCycle[]
function tbl:GetByRelation(foreign_id) end

return {}
