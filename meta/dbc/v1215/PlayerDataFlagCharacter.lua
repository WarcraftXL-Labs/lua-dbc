---@meta
-- Generated LuaLS annotations for PlayerDataFlagCharacter (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of PlayerDataFlagCharacter in build 12.1.5.69594.
---@class dbc.row.v1215.PlayerDataFlagCharacter : RowProxy
---@field ID integer
---@field StorageIndex integer
---@field Field_11_0_7_57361_001 integer
---@field Field_11_2_5_62554_002 integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.PlayerDataFlagCharacter self
function row:SetID(value) end

---Gets the value of field 'StorageIndex'.
---@return integer value
function row:GetStorageIndex() end

---Sets the value of field 'StorageIndex'.
---@param value integer
---@return dbc.row.v1215.PlayerDataFlagCharacter self
function row:SetStorageIndex(value) end

---Gets the value of field 'Field_11_0_7_57361_001'.
---@return integer value
function row:GetField_11_0_7_57361_001() end

---Sets the value of field 'Field_11_0_7_57361_001'.
---@param value integer
---@return dbc.row.v1215.PlayerDataFlagCharacter self
function row:SetField_11_0_7_57361_001(value) end

---Gets the value of field 'Field_11_2_5_62554_002'.
---@return integer value
function row:GetField_11_2_5_62554_002() end

---Sets the value of field 'Field_11_2_5_62554_002'.
---@param value integer
---@return dbc.row.v1215.PlayerDataFlagCharacter self
function row:SetField_11_2_5_62554_002(value) end

---Table container for PlayerDataFlagCharacter (Build 12.1.5.69594).
---@class dbc.Table.v1215.PlayerDataFlagCharacter : DbcTable
---@field [integer] dbc.row.v1215.PlayerDataFlagCharacter
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.PlayerDataFlagCharacter
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.PlayerDataFlagCharacter|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.PlayerDataFlagCharacter
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.PlayerDataFlagCharacter>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.PlayerDataFlagCharacter[]
function tbl:GetByRelation(foreign_id) end

return {}
