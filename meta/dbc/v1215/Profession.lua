---@meta
-- Generated LuaLS annotations for Profession (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of Profession in build 12.1.5.69594.
---@class dbc.row.v1215.Profession : RowProxy
---@field ID integer
---@field SkillLineID integer
---@field ProfessionEnumValue integer enum Profession, 0: FirstAid, 1: Blacksmithing, 2: Leatherworking, 3: Alchemy, 4: Herbalism, 5: Cooking, 6: Mining:, 7: Tailoring, 8: Engineering, 9: Enchanting, 10: Fishing, 11: Skinning, 12: Jewelcrafting, 13: Inscription, 14: Archaeology
---@field ResourcefulEffectLow number
---@field ResourcefulEffectHigh number
---@field MinCraftExtraQtyPct number
---@field MaxCraftExtraQtyPct number
---@field GatherTimeIncreasePct number
---@field ActionTypeEnumValue integer enum ProfessionActionType, 0: Craft, 1: Gather
---@field RecraftModSkillGainPct number
---@field PublicOrderCapacityCurrencyID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.Profession self
function row:SetID(value) end

---Gets the value of field 'SkillLineID'.
---@return integer value
function row:GetSkillLineID() end

---Sets the value of field 'SkillLineID'.
---@param value integer
---@return dbc.row.v1215.Profession self
function row:SetSkillLineID(value) end

---Navigates foreign relationship to 'SkillLine' via 'SkillLineID'.
---@return dbc.row.v1215.SkillLine|nil
function row:GetSkillLine() end

---Creates a related 'SkillLine' row and automatically links 'SkillLineID'.
---@param data? table
---@return dbc.row.v1215.SkillLine
function row:CreateRelated(data) end

---Gets the value of field 'ProfessionEnumValue'.
---@return integer value
function row:GetProfessionEnumValue() end

---Sets the value of field 'ProfessionEnumValue'.
---@param value integer
---@return dbc.row.v1215.Profession self
function row:SetProfessionEnumValue(value) end

---Gets the value of field 'ResourcefulEffectLow'.
---@return number value
function row:GetResourcefulEffectLow() end

---Sets the value of field 'ResourcefulEffectLow'.
---@param value number
---@return dbc.row.v1215.Profession self
function row:SetResourcefulEffectLow(value) end

---Gets the value of field 'ResourcefulEffectHigh'.
---@return number value
function row:GetResourcefulEffectHigh() end

---Sets the value of field 'ResourcefulEffectHigh'.
---@param value number
---@return dbc.row.v1215.Profession self
function row:SetResourcefulEffectHigh(value) end

---Gets the value of field 'MinCraftExtraQtyPct'.
---@return number value
function row:GetMinCraftExtraQtyPct() end

---Sets the value of field 'MinCraftExtraQtyPct'.
---@param value number
---@return dbc.row.v1215.Profession self
function row:SetMinCraftExtraQtyPct(value) end

---Gets the value of field 'MaxCraftExtraQtyPct'.
---@return number value
function row:GetMaxCraftExtraQtyPct() end

---Sets the value of field 'MaxCraftExtraQtyPct'.
---@param value number
---@return dbc.row.v1215.Profession self
function row:SetMaxCraftExtraQtyPct(value) end

---Gets the value of field 'GatherTimeIncreasePct'.
---@return number value
function row:GetGatherTimeIncreasePct() end

---Sets the value of field 'GatherTimeIncreasePct'.
---@param value number
---@return dbc.row.v1215.Profession self
function row:SetGatherTimeIncreasePct(value) end

---Gets the value of field 'ActionTypeEnumValue'.
---@return integer value
function row:GetActionTypeEnumValue() end

---Sets the value of field 'ActionTypeEnumValue'.
---@param value integer
---@return dbc.row.v1215.Profession self
function row:SetActionTypeEnumValue(value) end

---Gets the value of field 'RecraftModSkillGainPct'.
---@return number value
function row:GetRecraftModSkillGainPct() end

---Sets the value of field 'RecraftModSkillGainPct'.
---@param value number
---@return dbc.row.v1215.Profession self
function row:SetRecraftModSkillGainPct(value) end

---Gets the value of field 'PublicOrderCapacityCurrencyID'.
---@return integer value
function row:GetPublicOrderCapacityCurrencyID() end

---Sets the value of field 'PublicOrderCapacityCurrencyID'.
---@param value integer
---@return dbc.row.v1215.Profession self
function row:SetPublicOrderCapacityCurrencyID(value) end

---Navigates foreign relationship to 'CurrencyTypes' via 'PublicOrderCapacityCurrencyID'.
---@return dbc.row.v1215.CurrencyTypes|nil
function row:GetPublicOrderCapacityCurrency() end

---Creates a related 'CurrencyTypes' row and automatically links 'PublicOrderCapacityCurrencyID'.
---@param data? table
---@return dbc.row.v1215.CurrencyTypes
function row:CreateRelated(data) end

---Table container for Profession (Build 12.1.5.69594).
---@class dbc.Table.v1215.Profession : DbcTable
---@field [integer] dbc.row.v1215.Profession
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.Profession
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.Profession|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.Profession
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.Profession>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.Profession[]
function tbl:GetByRelation(foreign_id) end

return {}
