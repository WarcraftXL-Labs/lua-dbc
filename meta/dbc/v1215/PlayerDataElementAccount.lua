---@meta
-- Generated LuaLS annotations for PlayerDataElementAccount (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of PlayerDataElementAccount in build 12.1.5.69594.
---@class dbc.row.v1215.PlayerDataElementAccount : RowProxy
---@field ID integer
---@field StorageIndex integer
---@field Type integer 0 = int64, 1 = float
---@field Field_11_2_5_62554_003 integer
---@field Field_12_1_5_69594_004 integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.PlayerDataElementAccount self
function row:SetID(value) end

---Gets the value of field 'StorageIndex'.
---@return integer value
function row:GetStorageIndex() end

---Sets the value of field 'StorageIndex'.
---@param value integer
---@return dbc.row.v1215.PlayerDataElementAccount self
function row:SetStorageIndex(value) end

---Gets the value of field 'Type'.
---@return integer value
function row:GetType() end

---Sets the value of field 'Type'.
---@param value integer
---@return dbc.row.v1215.PlayerDataElementAccount self
function row:SetType(value) end

---Gets the value of field 'Field_11_2_5_62554_003'.
---@return integer value
function row:GetField_11_2_5_62554_003() end

---Sets the value of field 'Field_11_2_5_62554_003'.
---@param value integer
---@return dbc.row.v1215.PlayerDataElementAccount self
function row:SetField_11_2_5_62554_003(value) end

---Gets the value of field 'Field_12_1_5_69594_004'.
---@return integer value
function row:GetField_12_1_5_69594_004() end

---Sets the value of field 'Field_12_1_5_69594_004'.
---@param value integer
---@return dbc.row.v1215.PlayerDataElementAccount self
function row:SetField_12_1_5_69594_004(value) end

---Table container for PlayerDataElementAccount (Build 12.1.5.69594).
---@class dbc.Table.v1215.PlayerDataElementAccount : DbcTable
---@field [integer] dbc.row.v1215.PlayerDataElementAccount
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.PlayerDataElementAccount
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.PlayerDataElementAccount|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.PlayerDataElementAccount
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.PlayerDataElementAccount>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.PlayerDataElementAccount[]
function tbl:GetByRelation(foreign_id) end

return {}
