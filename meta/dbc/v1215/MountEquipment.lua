---@meta
-- Generated LuaLS annotations for MountEquipment (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of MountEquipment in build 12.1.5.69594.
---@class dbc.row.v1215.MountEquipment : RowProxy
---@field ID integer
---@field Item integer
---@field BuffSpell integer
---@field Field_8_2_0_30080_002 integer
---@field LearnedBySpell integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.MountEquipment self
function row:SetID(value) end

---Gets the value of field 'Item'.
---@return integer value
function row:GetItem() end

---Sets the value of field 'Item'.
---@param value integer
---@return dbc.row.v1215.MountEquipment self
function row:SetItem(value) end

---Navigates foreign relationship to 'Item' via 'Item'.
---@return dbc.row.v1215.Item|nil
function row:GetItem() end

---Creates a related 'Item' row and automatically links 'Item'.
---@param data? table
---@return dbc.row.v1215.Item
function row:CreateRelated(data) end

---Gets the value of field 'BuffSpell'.
---@return integer value
function row:GetBuffSpell() end

---Sets the value of field 'BuffSpell'.
---@param value integer
---@return dbc.row.v1215.MountEquipment self
function row:SetBuffSpell(value) end

---Navigates foreign relationship to 'Spell' via 'BuffSpell'.
---@return dbc.row.v1215.Spell|nil
function row:GetBuffSpell() end

---Creates a related 'Spell' row and automatically links 'BuffSpell'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'Field_8_2_0_30080_002'.
---@return integer value
function row:GetField_8_2_0_30080_002() end

---Sets the value of field 'Field_8_2_0_30080_002'.
---@param value integer
---@return dbc.row.v1215.MountEquipment self
function row:SetField_8_2_0_30080_002(value) end

---Gets the value of field 'LearnedBySpell'.
---@return integer value
function row:GetLearnedBySpell() end

---Sets the value of field 'LearnedBySpell'.
---@param value integer
---@return dbc.row.v1215.MountEquipment self
function row:SetLearnedBySpell(value) end

---Navigates foreign relationship to 'Spell' via 'LearnedBySpell'.
---@return dbc.row.v1215.Spell|nil
function row:GetLearnedBySpell() end

---Creates a related 'Spell' row and automatically links 'LearnedBySpell'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Table container for MountEquipment (Build 12.1.5.69594).
---@class dbc.Table.v1215.MountEquipment : DbcTable
---@field [integer] dbc.row.v1215.MountEquipment
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.MountEquipment
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.MountEquipment|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.MountEquipment
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.MountEquipment>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.MountEquipment[]
function tbl:GetByRelation(foreign_id) end

return {}
