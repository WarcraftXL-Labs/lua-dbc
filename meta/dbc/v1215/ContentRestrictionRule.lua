---@meta
-- Generated LuaLS annotations for ContentRestrictionRule (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ContentRestrictionRule in build 12.1.5.69594.
---@class dbc.row.v1215.ContentRestrictionRule : RowProxy
---@field ID integer
---@field RuleType integer 0: Map.isPvP; 1: some player flag?; 2: AreaTable.AreaBit; 3: Legion Mage Tower (mapIDs 1673, 1616, 1698, 1702, 1703, 1684, 1710); 4: C_PvP.IsSoloShuffle(); 5: Map.Expansion == 8/ExpansionID; 6: MapDifficulty-like == 8 (Mythic Dungeon?); 7: Map.InstanceType == 1; 8: Map.InstanceType == 2; 9: Map.InstanceType == 4; 10: Map.InstanceType == 3; 11: something PvP queue
---@field Flags integer &1: invert condition
---@field MapID integer
---@field AreaTableID integer
---@field AchievementID integer
---@field AreaGroupID integer argument 1?
---@field ExpansionID integer argument 2?
---@field Field_11_0_5_56749_007 integer
---@field ContentRestrictionRuleSetID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ContentRestrictionRule self
function row:SetID(value) end

---Gets the value of field 'RuleType'.
---@return integer value
function row:GetRuleType() end

---Sets the value of field 'RuleType'.
---@param value integer
---@return dbc.row.v1215.ContentRestrictionRule self
function row:SetRuleType(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.ContentRestrictionRule self
function row:SetFlags(value) end

---Gets the value of field 'MapID'.
---@return integer value
function row:GetMapID() end

---Sets the value of field 'MapID'.
---@param value integer
---@return dbc.row.v1215.ContentRestrictionRule self
function row:SetMapID(value) end

---Navigates foreign relationship to 'Map' via 'MapID'.
---@return dbc.row.v1215.Map|nil
function row:GetMap() end

---Creates a related 'Map' row and automatically links 'MapID'.
---@param data? table
---@return dbc.row.v1215.Map
function row:CreateRelated(data) end

---Gets the value of field 'AreaTableID'.
---@return integer value
function row:GetAreaTableID() end

---Sets the value of field 'AreaTableID'.
---@param value integer
---@return dbc.row.v1215.ContentRestrictionRule self
function row:SetAreaTableID(value) end

---Navigates foreign relationship to 'AreaTable' via 'AreaTableID'.
---@return dbc.row.v1215.AreaTable|nil
function row:GetAreaTable() end

---Creates a related 'AreaTable' row and automatically links 'AreaTableID'.
---@param data? table
---@return dbc.row.v1215.AreaTable
function row:CreateRelated(data) end

---Gets the value of field 'AchievementID'.
---@return integer value
function row:GetAchievementID() end

---Sets the value of field 'AchievementID'.
---@param value integer
---@return dbc.row.v1215.ContentRestrictionRule self
function row:SetAchievementID(value) end

---Navigates foreign relationship to 'Achievement' via 'AchievementID'.
---@return dbc.row.v1215.Achievement|nil
function row:GetAchievement() end

---Creates a related 'Achievement' row and automatically links 'AchievementID'.
---@param data? table
---@return dbc.row.v1215.Achievement
function row:CreateRelated(data) end

---Gets the value of field 'AreaGroupID'.
---@return integer value
function row:GetAreaGroupID() end

---Sets the value of field 'AreaGroupID'.
---@param value integer
---@return dbc.row.v1215.ContentRestrictionRule self
function row:SetAreaGroupID(value) end

---Navigates foreign relationship to 'AreaGroupMember' via 'AreaGroupID'.
---@return dbc.row.v1215.AreaGroupMember|nil
function row:GetAreaGroup() end

---Creates a related 'AreaGroupMember' row and automatically links 'AreaGroupID'.
---@param data? table
---@return dbc.row.v1215.AreaGroupMember
function row:CreateRelated(data) end

---Gets the value of field 'ExpansionID'.
---@return integer value
function row:GetExpansionID() end

---Sets the value of field 'ExpansionID'.
---@param value integer
---@return dbc.row.v1215.ContentRestrictionRule self
function row:SetExpansionID(value) end

---Navigates foreign relationship to 'Expansion' via 'ExpansionID'.
---@return dbc.row.v1215.Expansion|nil
function row:GetExpansion() end

---Creates a related 'Expansion' row and automatically links 'ExpansionID'.
---@param data? table
---@return dbc.row.v1215.Expansion
function row:CreateRelated(data) end

---Gets the value of field 'Field_11_0_5_56749_007'.
---@return integer value
function row:GetField_11_0_5_56749_007() end

---Sets the value of field 'Field_11_0_5_56749_007'.
---@param value integer
---@return dbc.row.v1215.ContentRestrictionRule self
function row:SetField_11_0_5_56749_007(value) end

---Gets the value of field 'ContentRestrictionRuleSetID'.
---@return integer value
function row:GetContentRestrictionRuleSetID() end

---Sets the value of field 'ContentRestrictionRuleSetID'.
---@param value integer
---@return dbc.row.v1215.ContentRestrictionRule self
function row:SetContentRestrictionRuleSetID(value) end

---Navigates foreign relationship to 'ContentRestrictionRuleSet' via 'ContentRestrictionRuleSetID'.
---@return dbc.row.v1215.ContentRestrictionRuleSet|nil
function row:GetContentRestrictionRuleSet() end

---Creates a related 'ContentRestrictionRuleSet' row and automatically links 'ContentRestrictionRuleSetID'.
---@param data? table
---@return dbc.row.v1215.ContentRestrictionRuleSet
function row:CreateRelated(data) end

---Table container for ContentRestrictionRule (Build 12.1.5.69594).
---@class dbc.Table.v1215.ContentRestrictionRule : DbcTable
---@field [integer] dbc.row.v1215.ContentRestrictionRule
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ContentRestrictionRule
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ContentRestrictionRule|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ContentRestrictionRule
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ContentRestrictionRule>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ContentRestrictionRule[]
function tbl:GetByRelation(foreign_id) end

return {}
