---@meta
-- Generated LuaLS annotations for ProfessionEffectType (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ProfessionEffectType in build 12.1.5.69594.
---@class dbc.row.v1215.ProfessionEffectType : RowProxy
---@field ID integer
---@field Name_lang string
---@field EnumID integer 0: Skill, 1: StatInspiration, 2: StatResourcefulness, 3: StatFinesse, 4: StatDeftness, 5: StatPerception, 6: StatCraftingSpeed, 7: StatMulticraft, 8: UnlockReagentSlot, 9: ModCraftCrit, 10: ModCraftReduction, 11: ModGatherExtra, 12: ModGatherTimeDecrease, 13: ModGatherDiscover, 14: ModCraftTimeDecrease, 15: ModCraftExtra, 16: ModGatherTimeIncrease, 17: ModGatherRange, 18: ModCraftExtraQuantity, 19: ModGatherExtraQuantity, 20: ModCraftCritSize, 21: ModCraftReductionQuantity

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ProfessionEffectType self
function row:SetID(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.ProfessionEffectType self
function row:SetName_lang(value) end

---Gets the value of field 'EnumID'.
---@return integer value
function row:GetEnumID() end

---Sets the value of field 'EnumID'.
---@param value integer
---@return dbc.row.v1215.ProfessionEffectType self
function row:SetEnumID(value) end

---Navigates foreign relationship to 'Enum' via 'EnumID'.
---@return dbc.row.v1215.Enum|nil
function row:GetEnum() end

---Creates a related 'Enum' row and automatically links 'EnumID'.
---@param data? table
---@return dbc.row.v1215.Enum
function row:CreateRelated(data) end

---Table container for ProfessionEffectType (Build 12.1.5.69594).
---@class dbc.Table.v1215.ProfessionEffectType : DbcTable
---@field [integer] dbc.row.v1215.ProfessionEffectType
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ProfessionEffectType
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ProfessionEffectType|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ProfessionEffectType
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ProfessionEffectType>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ProfessionEffectType[]
function tbl:GetByRelation(foreign_id) end

return {}
