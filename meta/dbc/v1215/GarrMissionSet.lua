---@meta
-- Generated LuaLS annotations for GarrMissionSet (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GarrMissionSet in build 12.1.5.69594.
---@class dbc.row.v1215.GarrMissionSet : RowProxy
---@field ID integer
---@field GarrTypeID integer
---@field Field_9_0_2_36294_001 integer
---@field CooldownSeconds integer
---@field Condition_9_0_2_36294_003 integer
---@field Field_9_0_2_36294_004 integer related to which table? 176 = Shipyard; 336 = Legionfall; 337 = Argus; 339 = Legion ???; 347 = Legion ???; 464 = BfA ???
---@field Field_9_0_2_36294_005 integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GarrMissionSet self
function row:SetID(value) end

---Gets the value of field 'GarrTypeID'.
---@return integer value
function row:GetGarrTypeID() end

---Sets the value of field 'GarrTypeID'.
---@param value integer
---@return dbc.row.v1215.GarrMissionSet self
function row:SetGarrTypeID(value) end

---Navigates foreign relationship to 'GarrType' via 'GarrTypeID'.
---@return dbc.row.v1215.GarrType|nil
function row:GetGarrType() end

---Creates a related 'GarrType' row and automatically links 'GarrTypeID'.
---@param data? table
---@return dbc.row.v1215.GarrType
function row:CreateRelated(data) end

---Gets the value of field 'Field_9_0_2_36294_001'.
---@return integer value
function row:GetField_9_0_2_36294_001() end

---Sets the value of field 'Field_9_0_2_36294_001'.
---@param value integer
---@return dbc.row.v1215.GarrMissionSet self
function row:SetField_9_0_2_36294_001(value) end

---Gets the value of field 'CooldownSeconds'.
---@return integer value
function row:GetCooldownSeconds() end

---Sets the value of field 'CooldownSeconds'.
---@param value integer
---@return dbc.row.v1215.GarrMissionSet self
function row:SetCooldownSeconds(value) end

---Gets the value of field 'Condition_9_0_2_36294_003'.
---@return integer value
function row:GetCondition_9_0_2_36294_003() end

---Sets the value of field 'Condition_9_0_2_36294_003'.
---@param value integer
---@return dbc.row.v1215.GarrMissionSet self
function row:SetCondition_9_0_2_36294_003(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'Condition_9_0_2_36294_003'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetCondition_9_0_2_36294_003() end

---Creates a related 'PlayerCondition' row and automatically links 'Condition_9_0_2_36294_003'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'Field_9_0_2_36294_004'.
---@return integer value
function row:GetField_9_0_2_36294_004() end

---Sets the value of field 'Field_9_0_2_36294_004'.
---@param value integer
---@return dbc.row.v1215.GarrMissionSet self
function row:SetField_9_0_2_36294_004(value) end

---Gets the value of field 'Field_9_0_2_36294_005'.
---@return integer value
function row:GetField_9_0_2_36294_005() end

---Sets the value of field 'Field_9_0_2_36294_005'.
---@param value integer
---@return dbc.row.v1215.GarrMissionSet self
function row:SetField_9_0_2_36294_005(value) end

---Table container for GarrMissionSet (Build 12.1.5.69594).
---@class dbc.Table.v1215.GarrMissionSet : DbcTable
---@field [integer] dbc.row.v1215.GarrMissionSet
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GarrMissionSet
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GarrMissionSet|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GarrMissionSet
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GarrMissionSet>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GarrMissionSet[]
function tbl:GetByRelation(foreign_id) end

return {}
