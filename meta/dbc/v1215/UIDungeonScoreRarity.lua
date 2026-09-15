---@meta
-- Generated LuaLS annotations for UIDungeonScoreRarity (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of UIDungeonScoreRarity in build 12.1.5.69594.
---@class dbc.row.v1215.UIDungeonScoreRarity : RowProxy
---@field ID integer
---@field ScoreColor integer
---@field DungeonScoreMin integer
---@field DungeonScoreMax integer
---@field OrderIndex integer
---@field KeystoneLevelMin integer
---@field KeystoneLevelMax integer
---@field Field_9_2_5_43630_007 integer
---@field Field_9_2_5_43630_008 integer
---@field Field_9_2_5_43630_009 integer
---@field Field_9_2_5_43630_010 integer
---@field Field_9_2_5_43630_011 integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.UIDungeonScoreRarity self
function row:SetID(value) end

---Gets the value of field 'ScoreColor'.
---@return integer value
function row:GetScoreColor() end

---Sets the value of field 'ScoreColor'.
---@param value integer
---@return dbc.row.v1215.UIDungeonScoreRarity self
function row:SetScoreColor(value) end

---Gets the value of field 'DungeonScoreMin'.
---@return integer value
function row:GetDungeonScoreMin() end

---Sets the value of field 'DungeonScoreMin'.
---@param value integer
---@return dbc.row.v1215.UIDungeonScoreRarity self
function row:SetDungeonScoreMin(value) end

---Gets the value of field 'DungeonScoreMax'.
---@return integer value
function row:GetDungeonScoreMax() end

---Sets the value of field 'DungeonScoreMax'.
---@param value integer
---@return dbc.row.v1215.UIDungeonScoreRarity self
function row:SetDungeonScoreMax(value) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.UIDungeonScoreRarity self
function row:SetOrderIndex(value) end

---Gets the value of field 'KeystoneLevelMin'.
---@return integer value
function row:GetKeystoneLevelMin() end

---Sets the value of field 'KeystoneLevelMin'.
---@param value integer
---@return dbc.row.v1215.UIDungeonScoreRarity self
function row:SetKeystoneLevelMin(value) end

---Gets the value of field 'KeystoneLevelMax'.
---@return integer value
function row:GetKeystoneLevelMax() end

---Sets the value of field 'KeystoneLevelMax'.
---@param value integer
---@return dbc.row.v1215.UIDungeonScoreRarity self
function row:SetKeystoneLevelMax(value) end

---Gets the value of field 'Field_9_2_5_43630_007'.
---@return integer value
function row:GetField_9_2_5_43630_007() end

---Sets the value of field 'Field_9_2_5_43630_007'.
---@param value integer
---@return dbc.row.v1215.UIDungeonScoreRarity self
function row:SetField_9_2_5_43630_007(value) end

---Gets the value of field 'Field_9_2_5_43630_008'.
---@return integer value
function row:GetField_9_2_5_43630_008() end

---Sets the value of field 'Field_9_2_5_43630_008'.
---@param value integer
---@return dbc.row.v1215.UIDungeonScoreRarity self
function row:SetField_9_2_5_43630_008(value) end

---Gets the value of field 'Field_9_2_5_43630_009'.
---@return integer value
function row:GetField_9_2_5_43630_009() end

---Sets the value of field 'Field_9_2_5_43630_009'.
---@param value integer
---@return dbc.row.v1215.UIDungeonScoreRarity self
function row:SetField_9_2_5_43630_009(value) end

---Gets the value of field 'Field_9_2_5_43630_010'.
---@return integer value
function row:GetField_9_2_5_43630_010() end

---Sets the value of field 'Field_9_2_5_43630_010'.
---@param value integer
---@return dbc.row.v1215.UIDungeonScoreRarity self
function row:SetField_9_2_5_43630_010(value) end

---Gets the value of field 'Field_9_2_5_43630_011'.
---@return integer value
function row:GetField_9_2_5_43630_011() end

---Sets the value of field 'Field_9_2_5_43630_011'.
---@param value integer
---@return dbc.row.v1215.UIDungeonScoreRarity self
function row:SetField_9_2_5_43630_011(value) end

---Table container for UIDungeonScoreRarity (Build 12.1.5.69594).
---@class dbc.Table.v1215.UIDungeonScoreRarity : DbcTable
---@field [integer] dbc.row.v1215.UIDungeonScoreRarity
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.UIDungeonScoreRarity
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.UIDungeonScoreRarity|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.UIDungeonScoreRarity
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.UIDungeonScoreRarity>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.UIDungeonScoreRarity[]
function tbl:GetByRelation(foreign_id) end

return {}
