---@meta
-- Generated LuaLS annotations for RopeEffect (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of RopeEffect in build 12.1.5.69594.
---@class dbc.row.v1215.RopeEffect : RowProxy
---@field ID integer
---@field Flags integer &1: ???
---@field Field_8_3_0_32712_001 integer
---@field Field_8_3_0_32712_002 integer
---@field Field_8_3_0_32712_003 integer
---@field NumberOfJoints integer required: >= 2
---@field Field_8_3_0_32712_005 number
---@field Stiffness number required: >= NumberOfJoints * 2500
---@field Damping number required: >= NumberOfJoints * 50
---@field IntegrateAtJointIndex integer default to 1 if <= 0, required <= NumberOfJoints

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.RopeEffect self
function row:SetID(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.RopeEffect self
function row:SetFlags(value) end

---Gets the value of field 'Field_8_3_0_32712_001'.
---@return integer value
function row:GetField_8_3_0_32712_001() end

---Sets the value of field 'Field_8_3_0_32712_001'.
---@param value integer
---@return dbc.row.v1215.RopeEffect self
function row:SetField_8_3_0_32712_001(value) end

---Gets the value of field 'Field_8_3_0_32712_002'.
---@return integer value
function row:GetField_8_3_0_32712_002() end

---Sets the value of field 'Field_8_3_0_32712_002'.
---@param value integer
---@return dbc.row.v1215.RopeEffect self
function row:SetField_8_3_0_32712_002(value) end

---Gets the value of field 'Field_8_3_0_32712_003'.
---@return integer value
function row:GetField_8_3_0_32712_003() end

---Sets the value of field 'Field_8_3_0_32712_003'.
---@param value integer
---@return dbc.row.v1215.RopeEffect self
function row:SetField_8_3_0_32712_003(value) end

---Gets the value of field 'NumberOfJoints'.
---@return integer value
function row:GetNumberOfJoints() end

---Sets the value of field 'NumberOfJoints'.
---@param value integer
---@return dbc.row.v1215.RopeEffect self
function row:SetNumberOfJoints(value) end

---Gets the value of field 'Field_8_3_0_32712_005'.
---@return number value
function row:GetField_8_3_0_32712_005() end

---Sets the value of field 'Field_8_3_0_32712_005'.
---@param value number
---@return dbc.row.v1215.RopeEffect self
function row:SetField_8_3_0_32712_005(value) end

---Gets the value of field 'Stiffness'.
---@return number value
function row:GetStiffness() end

---Sets the value of field 'Stiffness'.
---@param value number
---@return dbc.row.v1215.RopeEffect self
function row:SetStiffness(value) end

---Gets the value of field 'Damping'.
---@return number value
function row:GetDamping() end

---Sets the value of field 'Damping'.
---@param value number
---@return dbc.row.v1215.RopeEffect self
function row:SetDamping(value) end

---Gets the value of field 'IntegrateAtJointIndex'.
---@return integer value
function row:GetIntegrateAtJointIndex() end

---Sets the value of field 'IntegrateAtJointIndex'.
---@param value integer
---@return dbc.row.v1215.RopeEffect self
function row:SetIntegrateAtJointIndex(value) end

---Table container for RopeEffect (Build 12.1.5.69594).
---@class dbc.Table.v1215.RopeEffect : DbcTable
---@field [integer] dbc.row.v1215.RopeEffect
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.RopeEffect
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.RopeEffect|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.RopeEffect
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.RopeEffect>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.RopeEffect[]
function tbl:GetByRelation(foreign_id) end

return {}
