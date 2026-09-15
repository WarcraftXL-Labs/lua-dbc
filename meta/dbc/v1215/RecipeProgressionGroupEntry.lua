---@meta
-- Generated LuaLS annotations for RecipeProgressionGroupEntry (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of RecipeProgressionGroupEntry in build 12.1.5.69594.
---@class dbc.row.v1215.RecipeProgressionGroupEntry : RowProxy
---@field ID integer
---@field RecipeProgressionGroupID integer given a SkillLineAbilityID, get all records with same group id for the other levels
---@field SkillLineAbilityID integer
---@field Order integer ascending per group
---@field RequiredRecipeExperience integer
---@field EarnedExperienceMask integer
---@field Field_9_0_1_35256_005 integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.RecipeProgressionGroupEntry self
function row:SetID(value) end

---Gets the value of field 'RecipeProgressionGroupID'.
---@return integer value
function row:GetRecipeProgressionGroupID() end

---Sets the value of field 'RecipeProgressionGroupID'.
---@param value integer
---@return dbc.row.v1215.RecipeProgressionGroupEntry self
function row:SetRecipeProgressionGroupID(value) end

---Navigates foreign relationship to 'RecipeProgressionGroup' via 'RecipeProgressionGroupID'.
---@return dbc.row.v1215.RecipeProgressionGroup|nil
function row:GetRecipeProgressionGroup() end

---Creates a related 'RecipeProgressionGroup' row and automatically links 'RecipeProgressionGroupID'.
---@param data? table
---@return dbc.row.v1215.RecipeProgressionGroup
function row:CreateRelated(data) end

---Gets the value of field 'SkillLineAbilityID'.
---@return integer value
function row:GetSkillLineAbilityID() end

---Sets the value of field 'SkillLineAbilityID'.
---@param value integer
---@return dbc.row.v1215.RecipeProgressionGroupEntry self
function row:SetSkillLineAbilityID(value) end

---Navigates foreign relationship to 'SkillLineAbility' via 'SkillLineAbilityID'.
---@return dbc.row.v1215.SkillLineAbility|nil
function row:GetSkillLineAbility() end

---Creates a related 'SkillLineAbility' row and automatically links 'SkillLineAbilityID'.
---@param data? table
---@return dbc.row.v1215.SkillLineAbility
function row:CreateRelated(data) end

---Gets the value of field 'Order'.
---@return integer value
function row:GetOrder() end

---Sets the value of field 'Order'.
---@param value integer
---@return dbc.row.v1215.RecipeProgressionGroupEntry self
function row:SetOrder(value) end

---Gets the value of field 'RequiredRecipeExperience'.
---@return integer value
function row:GetRequiredRecipeExperience() end

---Sets the value of field 'RequiredRecipeExperience'.
---@param value integer
---@return dbc.row.v1215.RecipeProgressionGroupEntry self
function row:SetRequiredRecipeExperience(value) end

---Gets the value of field 'EarnedExperienceMask'.
---@return integer value
function row:GetEarnedExperienceMask() end

---Sets the value of field 'EarnedExperienceMask'.
---@param value integer
---@return dbc.row.v1215.RecipeProgressionGroupEntry self
function row:SetEarnedExperienceMask(value) end

---Gets the value of field 'Field_9_0_1_35256_005'.
---@return integer value
function row:GetField_9_0_1_35256_005() end

---Sets the value of field 'Field_9_0_1_35256_005'.
---@param value integer
---@return dbc.row.v1215.RecipeProgressionGroupEntry self
function row:SetField_9_0_1_35256_005(value) end

---Table container for RecipeProgressionGroupEntry (Build 12.1.5.69594).
---@class dbc.Table.v1215.RecipeProgressionGroupEntry : DbcTable
---@field [integer] dbc.row.v1215.RecipeProgressionGroupEntry
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.RecipeProgressionGroupEntry
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.RecipeProgressionGroupEntry|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.RecipeProgressionGroupEntry
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.RecipeProgressionGroupEntry>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.RecipeProgressionGroupEntry[]
function tbl:GetByRelation(foreign_id) end

return {}
