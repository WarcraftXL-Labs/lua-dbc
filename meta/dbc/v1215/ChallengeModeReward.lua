---@meta
-- Generated LuaLS annotations for ChallengeModeReward (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ChallengeModeReward in build 12.1.5.69594.
---@class dbc.row.v1215.ChallengeModeReward : RowProxy
---@field ID integer
---@field Field_5_5_0_61000_001 integer
---@field Field_5_5_0_61000_002 integer
---@field Field_5_5_0_61000_003 integer
---@field Field_5_5_0_61000_004 integer
---@field Field_5_5_0_61000_005 integer
---@field Field_5_5_0_61000_006 integer
---@field Field_5_5_0_61000_007 integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ChallengeModeReward self
function row:SetID(value) end

---Gets the value of field 'Field_5_5_0_61000_001'.
---@return integer value
function row:GetField_5_5_0_61000_001() end

---Sets the value of field 'Field_5_5_0_61000_001'.
---@param value integer
---@return dbc.row.v1215.ChallengeModeReward self
function row:SetField_5_5_0_61000_001(value) end

---Gets the value of field 'Field_5_5_0_61000_002'.
---@return integer value
function row:GetField_5_5_0_61000_002() end

---Sets the value of field 'Field_5_5_0_61000_002'.
---@param value integer
---@return dbc.row.v1215.ChallengeModeReward self
function row:SetField_5_5_0_61000_002(value) end

---Gets the value of field 'Field_5_5_0_61000_003'.
---@return integer value
function row:GetField_5_5_0_61000_003() end

---Sets the value of field 'Field_5_5_0_61000_003'.
---@param value integer
---@return dbc.row.v1215.ChallengeModeReward self
function row:SetField_5_5_0_61000_003(value) end

---Gets the value of field 'Field_5_5_0_61000_004'.
---@return integer value
function row:GetField_5_5_0_61000_004() end

---Sets the value of field 'Field_5_5_0_61000_004'.
---@param value integer
---@return dbc.row.v1215.ChallengeModeReward self
function row:SetField_5_5_0_61000_004(value) end

---Gets the value of field 'Field_5_5_0_61000_005'.
---@return integer value
function row:GetField_5_5_0_61000_005() end

---Sets the value of field 'Field_5_5_0_61000_005'.
---@param value integer
---@return dbc.row.v1215.ChallengeModeReward self
function row:SetField_5_5_0_61000_005(value) end

---Gets the value of field 'Field_5_5_0_61000_006'.
---@return integer value
function row:GetField_5_5_0_61000_006() end

---Sets the value of field 'Field_5_5_0_61000_006'.
---@param value integer
---@return dbc.row.v1215.ChallengeModeReward self
function row:SetField_5_5_0_61000_006(value) end

---Gets the value of field 'Field_5_5_0_61000_007'.
---@return integer value
function row:GetField_5_5_0_61000_007() end

---Sets the value of field 'Field_5_5_0_61000_007'.
---@param value integer
---@return dbc.row.v1215.ChallengeModeReward self
function row:SetField_5_5_0_61000_007(value) end

---Table container for ChallengeModeReward (Build 12.1.5.69594).
---@class dbc.Table.v1215.ChallengeModeReward : DbcTable
---@field [integer] dbc.row.v1215.ChallengeModeReward
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ChallengeModeReward
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ChallengeModeReward|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ChallengeModeReward
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ChallengeModeReward>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ChallengeModeReward[]
function tbl:GetByRelation(foreign_id) end

return {}
