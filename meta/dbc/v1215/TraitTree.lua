---@meta
-- Generated LuaLS annotations for TraitTree (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of TraitTree in build 12.1.5.69594.
---@class dbc.row.v1215.TraitTree : RowProxy
---@field TitleText_lang string
---@field ID integer
---@field TraitSystemID integer
---@field TraitTreeID integer ??!!
---@field FirstTraitNodeID integer
---@field PlayerConditionID integer
---@field Flags integer 0: Talents, 1: Professions; one of these is flags. &1: CannotRefund, &2 HideSingleRankNumbers
---@field Field_10_0_0_45697_006 number
---@field Field_10_0_0_45697_007 number
---@field UiTextureKitID integer

local row = {}

---Gets the value of field 'TitleText_lang'.
---@return string value
function row:GetTitleText_lang() end

---Sets the value of field 'TitleText_lang'.
---@param value string
---@return dbc.row.v1215.TraitTree self
function row:SetTitleText_lang(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.TraitTree self
function row:SetID(value) end

---Gets the value of field 'TraitSystemID'.
---@return integer value
function row:GetTraitSystemID() end

---Sets the value of field 'TraitSystemID'.
---@param value integer
---@return dbc.row.v1215.TraitTree self
function row:SetTraitSystemID(value) end

---Navigates foreign relationship to 'TraitSystem' via 'TraitSystemID'.
---@return dbc.row.v1215.TraitSystem|nil
function row:GetTraitSystem() end

---Creates a related 'TraitSystem' row and automatically links 'TraitSystemID'.
---@param data? table
---@return dbc.row.v1215.TraitSystem
function row:CreateRelated(data) end

---Gets the value of field 'TraitTreeID'.
---@return integer value
function row:GetTraitTreeID() end

---Sets the value of field 'TraitTreeID'.
---@param value integer
---@return dbc.row.v1215.TraitTree self
function row:SetTraitTreeID(value) end

---Navigates foreign relationship to 'TraitTree' via 'TraitTreeID'.
---@return dbc.row.v1215.TraitTree|nil
function row:GetTraitTree() end

---Creates a related 'TraitTree' row and automatically links 'TraitTreeID'.
---@param data? table
---@return dbc.row.v1215.TraitTree
function row:CreateRelated(data) end

---Gets the value of field 'FirstTraitNodeID'.
---@return integer value
function row:GetFirstTraitNodeID() end

---Sets the value of field 'FirstTraitNodeID'.
---@param value integer
---@return dbc.row.v1215.TraitTree self
function row:SetFirstTraitNodeID(value) end

---Navigates foreign relationship to 'TraitNode' via 'FirstTraitNodeID'.
---@return dbc.row.v1215.TraitNode|nil
function row:GetFirstTraitNode() end

---Creates a related 'TraitNode' row and automatically links 'FirstTraitNodeID'.
---@param data? table
---@return dbc.row.v1215.TraitNode
function row:CreateRelated(data) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.TraitTree self
function row:SetPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.TraitTree self
function row:SetFlags(value) end

---Gets the value of field 'Field_10_0_0_45697_006'.
---@return number value
function row:GetField_10_0_0_45697_006() end

---Sets the value of field 'Field_10_0_0_45697_006'.
---@param value number
---@return dbc.row.v1215.TraitTree self
function row:SetField_10_0_0_45697_006(value) end

---Gets the value of field 'Field_10_0_0_45697_007'.
---@return number value
function row:GetField_10_0_0_45697_007() end

---Sets the value of field 'Field_10_0_0_45697_007'.
---@param value number
---@return dbc.row.v1215.TraitTree self
function row:SetField_10_0_0_45697_007(value) end

---Gets the value of field 'UiTextureKitID'.
---@return integer value
function row:GetUiTextureKitID() end

---Sets the value of field 'UiTextureKitID'.
---@param value integer
---@return dbc.row.v1215.TraitTree self
function row:SetUiTextureKitID(value) end

---Navigates foreign relationship to 'UiTextureKit' via 'UiTextureKitID'.
---@return dbc.row.v1215.UiTextureKit|nil
function row:GetUiTextureKit() end

---Creates a related 'UiTextureKit' row and automatically links 'UiTextureKitID'.
---@param data? table
---@return dbc.row.v1215.UiTextureKit
function row:CreateRelated(data) end

---Table container for TraitTree (Build 12.1.5.69594).
---@class dbc.Table.v1215.TraitTree : DbcTable
---@field [integer] dbc.row.v1215.TraitTree
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.TraitTree
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.TraitTree|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.TraitTree
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.TraitTree>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.TraitTree[]
function tbl:GetByRelation(foreign_id) end

return {}
