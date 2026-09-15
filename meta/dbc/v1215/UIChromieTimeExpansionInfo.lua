---@meta
-- Generated LuaLS annotations for UIChromieTimeExpansionInfo (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of UIChromieTimeExpansionInfo in build 12.1.5.69594.
---@class dbc.row.v1215.UIChromieTimeExpansionInfo : RowProxy
---@field ID integer
---@field Name_lang string
---@field Description_lang string
---@field AllianceOverrideDesc_lang string
---@field HordeOverrideDesc_lang string
---@field SpellID integer
---@field MapAtlasElement integer
---@field PreviewAtlasElement integer
---@field ShowPlayerConditionID integer
---@field ExpansionMask integer The way ModifierTree references these, type 301.
---@field ContentTuningID integer
---@field CompletedPlayerConditionID integer
---@field SortPriority integer
---@field RecommendPlayerConditionID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.UIChromieTimeExpansionInfo self
function row:SetID(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.UIChromieTimeExpansionInfo self
function row:SetName_lang(value) end

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v1215.UIChromieTimeExpansionInfo self
function row:SetDescription_lang(value) end

---Gets the value of field 'AllianceOverrideDesc_lang'.
---@return string value
function row:GetAllianceOverrideDesc_lang() end

---Sets the value of field 'AllianceOverrideDesc_lang'.
---@param value string
---@return dbc.row.v1215.UIChromieTimeExpansionInfo self
function row:SetAllianceOverrideDesc_lang(value) end

---Gets the value of field 'HordeOverrideDesc_lang'.
---@return string value
function row:GetHordeOverrideDesc_lang() end

---Sets the value of field 'HordeOverrideDesc_lang'.
---@param value string
---@return dbc.row.v1215.UIChromieTimeExpansionInfo self
function row:SetHordeOverrideDesc_lang(value) end

---Gets the value of field 'SpellID'.
---@return integer value
function row:GetSpellID() end

---Sets the value of field 'SpellID'.
---@param value integer
---@return dbc.row.v1215.UIChromieTimeExpansionInfo self
function row:SetSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'SpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetSpell() end

---Creates a related 'Spell' row and automatically links 'SpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'MapAtlasElement'.
---@return integer value
function row:GetMapAtlasElement() end

---Sets the value of field 'MapAtlasElement'.
---@param value integer
---@return dbc.row.v1215.UIChromieTimeExpansionInfo self
function row:SetMapAtlasElement(value) end

---Navigates foreign relationship to 'UiTextureAtlasElement' via 'MapAtlasElement'.
---@return dbc.row.v1215.UiTextureAtlasElement|nil
function row:GetMapAtlasElement() end

---Creates a related 'UiTextureAtlasElement' row and automatically links 'MapAtlasElement'.
---@param data? table
---@return dbc.row.v1215.UiTextureAtlasElement
function row:CreateRelated(data) end

---Gets the value of field 'PreviewAtlasElement'.
---@return integer value
function row:GetPreviewAtlasElement() end

---Sets the value of field 'PreviewAtlasElement'.
---@param value integer
---@return dbc.row.v1215.UIChromieTimeExpansionInfo self
function row:SetPreviewAtlasElement(value) end

---Navigates foreign relationship to 'UiTextureAtlasElement' via 'PreviewAtlasElement'.
---@return dbc.row.v1215.UiTextureAtlasElement|nil
function row:GetPreviewAtlasElement() end

---Creates a related 'UiTextureAtlasElement' row and automatically links 'PreviewAtlasElement'.
---@param data? table
---@return dbc.row.v1215.UiTextureAtlasElement
function row:CreateRelated(data) end

---Gets the value of field 'ShowPlayerConditionID'.
---@return integer value
function row:GetShowPlayerConditionID() end

---Sets the value of field 'ShowPlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.UIChromieTimeExpansionInfo self
function row:SetShowPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'ShowPlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetShowPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'ShowPlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'ExpansionMask'.
---@return integer value
function row:GetExpansionMask() end

---Sets the value of field 'ExpansionMask'.
---@param value integer
---@return dbc.row.v1215.UIChromieTimeExpansionInfo self
function row:SetExpansionMask(value) end

---Gets the value of field 'ContentTuningID'.
---@return integer value
function row:GetContentTuningID() end

---Sets the value of field 'ContentTuningID'.
---@param value integer
---@return dbc.row.v1215.UIChromieTimeExpansionInfo self
function row:SetContentTuningID(value) end

---Navigates foreign relationship to 'ContentTuning' via 'ContentTuningID'.
---@return dbc.row.v1215.ContentTuning|nil
function row:GetContentTuning() end

---Creates a related 'ContentTuning' row and automatically links 'ContentTuningID'.
---@param data? table
---@return dbc.row.v1215.ContentTuning
function row:CreateRelated(data) end

---Gets the value of field 'CompletedPlayerConditionID'.
---@return integer value
function row:GetCompletedPlayerConditionID() end

---Sets the value of field 'CompletedPlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.UIChromieTimeExpansionInfo self
function row:SetCompletedPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'CompletedPlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetCompletedPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'CompletedPlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'SortPriority'.
---@return integer value
function row:GetSortPriority() end

---Sets the value of field 'SortPriority'.
---@param value integer
---@return dbc.row.v1215.UIChromieTimeExpansionInfo self
function row:SetSortPriority(value) end

---Gets the value of field 'RecommendPlayerConditionID'.
---@return integer value
function row:GetRecommendPlayerConditionID() end

---Sets the value of field 'RecommendPlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.UIChromieTimeExpansionInfo self
function row:SetRecommendPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'RecommendPlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetRecommendPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'RecommendPlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Table container for UIChromieTimeExpansionInfo (Build 12.1.5.69594).
---@class dbc.Table.v1215.UIChromieTimeExpansionInfo : DbcTable
---@field [integer] dbc.row.v1215.UIChromieTimeExpansionInfo
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.UIChromieTimeExpansionInfo
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.UIChromieTimeExpansionInfo|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.UIChromieTimeExpansionInfo
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.UIChromieTimeExpansionInfo>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.UIChromieTimeExpansionInfo[]
function tbl:GetByRelation(foreign_id) end

return {}
