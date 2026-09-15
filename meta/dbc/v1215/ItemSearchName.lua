---@meta
-- Generated LuaLS annotations for ItemSearchName (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ItemSearchName in build 12.1.5.69594.
---@class dbc.row.v1215.ItemSearchName : RowProxy
---@field ID integer
---@field Display_lang string
---@field OverallQualityID integer
---@field ExpansionID integer
---@field MinFactionID integer
---@field MinReputation integer
---@field AllowableClass integer
---@field RequiredLevel integer
---@field RequiredSkill integer
---@field RequiredSkillRank integer
---@field RequiredAbility integer
---@field ItemLevel integer
---@field Flags integer[]
---@field AllowableRaces integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ItemSearchName self
function row:SetID(value) end

---Gets the value of field 'Display_lang'.
---@return string value
function row:GetDisplay_lang() end

---Sets the value of field 'Display_lang'.
---@param value string
---@return dbc.row.v1215.ItemSearchName self
function row:SetDisplay_lang(value) end

---Gets the value of field 'OverallQualityID'.
---@return integer value
function row:GetOverallQualityID() end

---Sets the value of field 'OverallQualityID'.
---@param value integer
---@return dbc.row.v1215.ItemSearchName self
function row:SetOverallQualityID(value) end

---Navigates foreign relationship to 'OverallQuality' via 'OverallQualityID'.
---@return dbc.row.v1215.OverallQuality|nil
function row:GetOverallQuality() end

---Creates a related 'OverallQuality' row and automatically links 'OverallQualityID'.
---@param data? table
---@return dbc.row.v1215.OverallQuality
function row:CreateRelated(data) end

---Gets the value of field 'ExpansionID'.
---@return integer value
function row:GetExpansionID() end

---Sets the value of field 'ExpansionID'.
---@param value integer
---@return dbc.row.v1215.ItemSearchName self
function row:SetExpansionID(value) end

---Navigates foreign relationship to 'Expansion' via 'ExpansionID'.
---@return dbc.row.v1215.Expansion|nil
function row:GetExpansion() end

---Creates a related 'Expansion' row and automatically links 'ExpansionID'.
---@param data? table
---@return dbc.row.v1215.Expansion
function row:CreateRelated(data) end

---Gets the value of field 'MinFactionID'.
---@return integer value
function row:GetMinFactionID() end

---Sets the value of field 'MinFactionID'.
---@param value integer
---@return dbc.row.v1215.ItemSearchName self
function row:SetMinFactionID(value) end

---Navigates foreign relationship to 'Faction' via 'MinFactionID'.
---@return dbc.row.v1215.Faction|nil
function row:GetMinFaction() end

---Creates a related 'Faction' row and automatically links 'MinFactionID'.
---@param data? table
---@return dbc.row.v1215.Faction
function row:CreateRelated(data) end

---Gets the value of field 'MinReputation'.
---@return integer value
function row:GetMinReputation() end

---Sets the value of field 'MinReputation'.
---@param value integer
---@return dbc.row.v1215.ItemSearchName self
function row:SetMinReputation(value) end

---Gets the value of field 'AllowableClass'.
---@return integer value
function row:GetAllowableClass() end

---Sets the value of field 'AllowableClass'.
---@param value integer
---@return dbc.row.v1215.ItemSearchName self
function row:SetAllowableClass(value) end

---Gets the value of field 'RequiredLevel'.
---@return integer value
function row:GetRequiredLevel() end

---Sets the value of field 'RequiredLevel'.
---@param value integer
---@return dbc.row.v1215.ItemSearchName self
function row:SetRequiredLevel(value) end

---Gets the value of field 'RequiredSkill'.
---@return integer value
function row:GetRequiredSkill() end

---Sets the value of field 'RequiredSkill'.
---@param value integer
---@return dbc.row.v1215.ItemSearchName self
function row:SetRequiredSkill(value) end

---Navigates foreign relationship to 'SkillLine' via 'RequiredSkill'.
---@return dbc.row.v1215.SkillLine|nil
function row:GetRequiredSkill() end

---Creates a related 'SkillLine' row and automatically links 'RequiredSkill'.
---@param data? table
---@return dbc.row.v1215.SkillLine
function row:CreateRelated(data) end

---Gets the value of field 'RequiredSkillRank'.
---@return integer value
function row:GetRequiredSkillRank() end

---Sets the value of field 'RequiredSkillRank'.
---@param value integer
---@return dbc.row.v1215.ItemSearchName self
function row:SetRequiredSkillRank(value) end

---Gets the value of field 'RequiredAbility'.
---@return integer value
function row:GetRequiredAbility() end

---Sets the value of field 'RequiredAbility'.
---@param value integer
---@return dbc.row.v1215.ItemSearchName self
function row:SetRequiredAbility(value) end

---Gets the value of field 'ItemLevel'.
---@return integer value
function row:GetItemLevel() end

---Sets the value of field 'ItemLevel'.
---@param value integer
---@return dbc.row.v1215.ItemSearchName self
function row:SetItemLevel(value) end

---Gets the value of field 'Flags'.
---@return integer[] value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer[]
---@return dbc.row.v1215.ItemSearchName self
function row:SetFlags(value) end

---Gets element at 1-based index in 'Flags'.
---@param index integer
---@return integer value
function row:GetFlagsItem(index) end

---Gets the value of field 'AllowableRaces'.
---@return integer[] value
function row:GetAllowableRaces() end

---Sets the value of field 'AllowableRaces'.
---@param value integer[]
---@return dbc.row.v1215.ItemSearchName self
function row:SetAllowableRaces(value) end

---Gets element at 1-based index in 'AllowableRaces'.
---@param index integer
---@return integer value
function row:GetAllowableRacesItem(index) end

---Table container for ItemSearchName (Build 12.1.5.69594).
---@class dbc.Table.v1215.ItemSearchName : DbcTable
---@field [integer] dbc.row.v1215.ItemSearchName
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ItemSearchName
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ItemSearchName|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ItemSearchName
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ItemSearchName>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ItemSearchName[]
function tbl:GetByRelation(foreign_id) end

return {}
