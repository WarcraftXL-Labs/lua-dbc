---@meta
-- Generated LuaLS annotations for QuestObjective (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of QuestObjective in build 12.1.5.69594.
---@class dbc.row.v1215.QuestObjective : RowProxy
---@field ID integer
---@field Description_lang string
---@field Type integer {0, 2}: interact, {1, 17}: obtain, {3, 9}: kill, 4: ???, {11, 12}: pet battle, 14: complete, 15: descriptive text only, 19: ???
---@field Amount integer
---@field ObjectID integer depending on Type: {0, 3, 11}: CreatureID, 1: ItemID, 2: GameObjectID, 4: ???, 9: ???, 12: BattlePetSpeciesID, 14: CriteriaTreeID, 15: 0, 17: CurrencyTypesID, 19: ???
---@field OrderIndex integer
---@field Flags integer
---@field StorageIndex integer
---@field Field_12_0_0_63534_007 integer
---@field QuestID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.QuestObjective self
function row:SetID(value) end

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v1215.QuestObjective self
function row:SetDescription_lang(value) end

---Gets the value of field 'Type'.
---@return integer value
function row:GetType() end

---Sets the value of field 'Type'.
---@param value integer
---@return dbc.row.v1215.QuestObjective self
function row:SetType(value) end

---Gets the value of field 'Amount'.
---@return integer value
function row:GetAmount() end

---Sets the value of field 'Amount'.
---@param value integer
---@return dbc.row.v1215.QuestObjective self
function row:SetAmount(value) end

---Gets the value of field 'ObjectID'.
---@return integer value
function row:GetObjectID() end

---Sets the value of field 'ObjectID'.
---@param value integer
---@return dbc.row.v1215.QuestObjective self
function row:SetObjectID(value) end

---Navigates foreign relationship to 'Object' via 'ObjectID'.
---@return dbc.row.v1215.Object|nil
function row:GetObject() end

---Creates a related 'Object' row and automatically links 'ObjectID'.
---@param data? table
---@return dbc.row.v1215.Object
function row:CreateRelated(data) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.QuestObjective self
function row:SetOrderIndex(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.QuestObjective self
function row:SetFlags(value) end

---Gets the value of field 'StorageIndex'.
---@return integer value
function row:GetStorageIndex() end

---Sets the value of field 'StorageIndex'.
---@param value integer
---@return dbc.row.v1215.QuestObjective self
function row:SetStorageIndex(value) end

---Gets the value of field 'Field_12_0_0_63534_007'.
---@return integer value
function row:GetField_12_0_0_63534_007() end

---Sets the value of field 'Field_12_0_0_63534_007'.
---@param value integer
---@return dbc.row.v1215.QuestObjective self
function row:SetField_12_0_0_63534_007(value) end

---Gets the value of field 'QuestID'.
---@return integer value
function row:GetQuestID() end

---Sets the value of field 'QuestID'.
---@param value integer
---@return dbc.row.v1215.QuestObjective self
function row:SetQuestID(value) end

---Navigates foreign relationship to 'QuestV2' via 'QuestID'.
---@return dbc.row.v1215.QuestV2|nil
function row:GetQuest() end

---Creates a related 'QuestV2' row and automatically links 'QuestID'.
---@param data? table
---@return dbc.row.v1215.QuestV2
function row:CreateRelated(data) end

---Table container for QuestObjective (Build 12.1.5.69594).
---@class dbc.Table.v1215.QuestObjective : DbcTable
---@field [integer] dbc.row.v1215.QuestObjective
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.QuestObjective
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.QuestObjective|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.QuestObjective
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.QuestObjective>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.QuestObjective[]
function tbl:GetByRelation(foreign_id) end

return {}
