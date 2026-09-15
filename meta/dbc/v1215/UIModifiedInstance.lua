---@meta
-- Generated LuaLS annotations for UIModifiedInstance (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of UIModifiedInstance in build 12.1.5.69594.
---@class dbc.row.v1215.UIModifiedInstance : RowProxy
---@field ID integer
---@field Description_lang string
---@field MapID integer
---@field LFRItemLevel integer
---@field NormalItemLevel integer
---@field HeroicItemLevel integer
---@field MythicItemLevel integer
---@field UiTextureKitID integer
---@field PlayerConditionID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.UIModifiedInstance self
function row:SetID(value) end

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v1215.UIModifiedInstance self
function row:SetDescription_lang(value) end

---Gets the value of field 'MapID'.
---@return integer value
function row:GetMapID() end

---Sets the value of field 'MapID'.
---@param value integer
---@return dbc.row.v1215.UIModifiedInstance self
function row:SetMapID(value) end

---Navigates foreign relationship to 'Map' via 'MapID'.
---@return dbc.row.v1215.Map|nil
function row:GetMap() end

---Creates a related 'Map' row and automatically links 'MapID'.
---@param data? table
---@return dbc.row.v1215.Map
function row:CreateRelated(data) end

---Gets the value of field 'LFRItemLevel'.
---@return integer value
function row:GetLFRItemLevel() end

---Sets the value of field 'LFRItemLevel'.
---@param value integer
---@return dbc.row.v1215.UIModifiedInstance self
function row:SetLFRItemLevel(value) end

---Navigates foreign relationship to 'ItemLevelSelector' via 'LFRItemLevel'.
---@return dbc.row.v1215.ItemLevelSelector|nil
function row:GetLFRItemLevel() end

---Creates a related 'ItemLevelSelector' row and automatically links 'LFRItemLevel'.
---@param data? table
---@return dbc.row.v1215.ItemLevelSelector
function row:CreateRelated(data) end

---Gets the value of field 'NormalItemLevel'.
---@return integer value
function row:GetNormalItemLevel() end

---Sets the value of field 'NormalItemLevel'.
---@param value integer
---@return dbc.row.v1215.UIModifiedInstance self
function row:SetNormalItemLevel(value) end

---Navigates foreign relationship to 'ItemLevelSelector' via 'NormalItemLevel'.
---@return dbc.row.v1215.ItemLevelSelector|nil
function row:GetNormalItemLevel() end

---Creates a related 'ItemLevelSelector' row and automatically links 'NormalItemLevel'.
---@param data? table
---@return dbc.row.v1215.ItemLevelSelector
function row:CreateRelated(data) end

---Gets the value of field 'HeroicItemLevel'.
---@return integer value
function row:GetHeroicItemLevel() end

---Sets the value of field 'HeroicItemLevel'.
---@param value integer
---@return dbc.row.v1215.UIModifiedInstance self
function row:SetHeroicItemLevel(value) end

---Navigates foreign relationship to 'ItemLevelSelector' via 'HeroicItemLevel'.
---@return dbc.row.v1215.ItemLevelSelector|nil
function row:GetHeroicItemLevel() end

---Creates a related 'ItemLevelSelector' row and automatically links 'HeroicItemLevel'.
---@param data? table
---@return dbc.row.v1215.ItemLevelSelector
function row:CreateRelated(data) end

---Gets the value of field 'MythicItemLevel'.
---@return integer value
function row:GetMythicItemLevel() end

---Sets the value of field 'MythicItemLevel'.
---@param value integer
---@return dbc.row.v1215.UIModifiedInstance self
function row:SetMythicItemLevel(value) end

---Navigates foreign relationship to 'ItemLevelSelector' via 'MythicItemLevel'.
---@return dbc.row.v1215.ItemLevelSelector|nil
function row:GetMythicItemLevel() end

---Creates a related 'ItemLevelSelector' row and automatically links 'MythicItemLevel'.
---@param data? table
---@return dbc.row.v1215.ItemLevelSelector
function row:CreateRelated(data) end

---Gets the value of field 'UiTextureKitID'.
---@return integer value
function row:GetUiTextureKitID() end

---Sets the value of field 'UiTextureKitID'.
---@param value integer
---@return dbc.row.v1215.UIModifiedInstance self
function row:SetUiTextureKitID(value) end

---Navigates foreign relationship to 'UiTextureKit' via 'UiTextureKitID'.
---@return dbc.row.v1215.UiTextureKit|nil
function row:GetUiTextureKit() end

---Creates a related 'UiTextureKit' row and automatically links 'UiTextureKitID'.
---@param data? table
---@return dbc.row.v1215.UiTextureKit
function row:CreateRelated(data) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.UIModifiedInstance self
function row:SetPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Table container for UIModifiedInstance (Build 12.1.5.69594).
---@class dbc.Table.v1215.UIModifiedInstance : DbcTable
---@field [integer] dbc.row.v1215.UIModifiedInstance
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.UIModifiedInstance
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.UIModifiedInstance|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.UIModifiedInstance
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.UIModifiedInstance>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.UIModifiedInstance[]
function tbl:GetByRelation(foreign_id) end

return {}
