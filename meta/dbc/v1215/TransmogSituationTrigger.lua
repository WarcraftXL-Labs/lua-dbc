---@meta
-- Generated LuaLS annotations for TransmogSituationTrigger (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of TransmogSituationTrigger in build 12.1.5.69594.
---@class dbc.row.v1215.TransmogSituationTrigger : RowProxy
---@field Name_lang string
---@field Description_lang string
---@field ID integer
---@field TriggerEnum integer 0: Manual, 1: TransmogUpdate, 2: Location, 3: Movement, 4: Specialization, 5: EquipmentSet, 6: Forms
---@field Flags integer 0x1: CanLockOutfit, 0x2: CanChangeLockedOutfit, 0x4: IsPlayerFacing, 0x8: SituationsAreExclusive, 0x10: DisabledTrigger

local row = {}

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.TransmogSituationTrigger self
function row:SetName_lang(value) end

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v1215.TransmogSituationTrigger self
function row:SetDescription_lang(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.TransmogSituationTrigger self
function row:SetID(value) end

---Gets the value of field 'TriggerEnum'.
---@return integer value
function row:GetTriggerEnum() end

---Sets the value of field 'TriggerEnum'.
---@param value integer
---@return dbc.row.v1215.TransmogSituationTrigger self
function row:SetTriggerEnum(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.TransmogSituationTrigger self
function row:SetFlags(value) end

---Table container for TransmogSituationTrigger (Build 12.1.5.69594).
---@class dbc.Table.v1215.TransmogSituationTrigger : DbcTable
---@field [integer] dbc.row.v1215.TransmogSituationTrigger
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.TransmogSituationTrigger
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.TransmogSituationTrigger|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.TransmogSituationTrigger
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.TransmogSituationTrigger>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.TransmogSituationTrigger[]
function tbl:GetByRelation(foreign_id) end

return {}
