---@meta
-- Generated LuaLS annotations for ProfessionEffect (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ProfessionEffect in build 12.1.5.69594.
---@class dbc.row.v1215.ProfessionEffect : RowProxy
---@field ID integer
---@field ProfessionEffectTypeEnumID integer
---@field Amount number
---@field ModifiedCraftingReagentSlotID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ProfessionEffect self
function row:SetID(value) end

---Gets the value of field 'ProfessionEffectTypeEnumID'.
---@return integer value
function row:GetProfessionEffectTypeEnumID() end

---Sets the value of field 'ProfessionEffectTypeEnumID'.
---@param value integer
---@return dbc.row.v1215.ProfessionEffect self
function row:SetProfessionEffectTypeEnumID(value) end

---Navigates foreign relationship to 'ProfessionEffectType' via 'ProfessionEffectTypeEnumID'.
---@return dbc.row.v1215.ProfessionEffectType|nil
function row:GetProfessionEffectTypeEnum() end

---Creates a related 'ProfessionEffectType' row and automatically links 'ProfessionEffectTypeEnumID'.
---@param data? table
---@return dbc.row.v1215.ProfessionEffectType
function row:CreateRelated(data) end

---Gets the value of field 'Amount'.
---@return number value
function row:GetAmount() end

---Sets the value of field 'Amount'.
---@param value number
---@return dbc.row.v1215.ProfessionEffect self
function row:SetAmount(value) end

---Gets the value of field 'ModifiedCraftingReagentSlotID'.
---@return integer value
function row:GetModifiedCraftingReagentSlotID() end

---Sets the value of field 'ModifiedCraftingReagentSlotID'.
---@param value integer
---@return dbc.row.v1215.ProfessionEffect self
function row:SetModifiedCraftingReagentSlotID(value) end

---Navigates foreign relationship to 'ModifiedCraftingReagentSlot' via 'ModifiedCraftingReagentSlotID'.
---@return dbc.row.v1215.ModifiedCraftingReagentSlot|nil
function row:GetModifiedCraftingReagentSlot() end

---Creates a related 'ModifiedCraftingReagentSlot' row and automatically links 'ModifiedCraftingReagentSlotID'.
---@param data? table
---@return dbc.row.v1215.ModifiedCraftingReagentSlot
function row:CreateRelated(data) end

---Table container for ProfessionEffect (Build 12.1.5.69594).
---@class dbc.Table.v1215.ProfessionEffect : DbcTable
---@field [integer] dbc.row.v1215.ProfessionEffect
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ProfessionEffect
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ProfessionEffect|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ProfessionEffect
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ProfessionEffect>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ProfessionEffect[]
function tbl:GetByRelation(foreign_id) end

return {}
