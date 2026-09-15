---@meta
-- Generated LuaLS annotations for ContentTuning (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ContentTuning in build 12.1.5.69594.
---@class dbc.row.v1215.ContentTuning : RowProxy
---@field ID integer
---@field Flags integer &2: add account's expansion's max level to MaxLevelSquish, &4: Non-Scaling, &8: FavorsHorde (use max level instead of target if Alliance), &0x10: FavorsAlliance (use max level instead of target if Horde), &0x20: ???
---@field ExpansionID integer
---@field HPScalingCurveID integer item level scaling
---@field DMGScalingCurveID integer item level scaling
---@field HPPrimaryStatScalingCurveID integer Additional HP scaling based on the ratio of players primary stat to ExpectedStat for his level
---@field DMGPrimaryStatScalingCurveID integer Additional DMG scaling based on the ratio of players primary stat to ExpectedStat for his level
---@field PrimaryStatScalingModPlayerDataElementCharacterID integer modifies PrimaryStatScaling ratio calculation => ratio = ((player.GetPlayerDataElementCharacter(ID) * multiplier) + player.GetPrimaryStatValue()) / expectedPrimaryStatForLevel
---@field PrimaryStatScalingModPlayerDataElementCharacterMultiplier number Scaling value based on the above
---@field MinLevelSquish integer
---@field MaxLevelSquish integer
---@field MinLevelScalingOffset integer when reading MinLevelSquish, modify as per 0: +0, 1: +1, 2: +server's expansion's min level
---@field MaxLevelScalingOffset integer independent of Flags&2, when reading MaxLevelSquish, modify as per 0: +0, 1: +1, 2: +server's expansion's max level
---@field AllowedMinOffset integer
---@field AllowedMaxOffset integer add to effective MaxLevelSquish to get LfgMaxLevel
---@field LfgMinLevel integer
---@field LfgMaxLevel integer
---@field ILevel integer overrides LfgDungeons::MinGear if set
---@field XpMultQuest number

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ContentTuning self
function row:SetID(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.ContentTuning self
function row:SetFlags(value) end

---Gets the value of field 'ExpansionID'.
---@return integer value
function row:GetExpansionID() end

---Sets the value of field 'ExpansionID'.
---@param value integer
---@return dbc.row.v1215.ContentTuning self
function row:SetExpansionID(value) end

---Navigates foreign relationship to 'Expansion' via 'ExpansionID'.
---@return dbc.row.v1215.Expansion|nil
function row:GetExpansion() end

---Creates a related 'Expansion' row and automatically links 'ExpansionID'.
---@param data? table
---@return dbc.row.v1215.Expansion
function row:CreateRelated(data) end

---Gets the value of field 'HPScalingCurveID'.
---@return integer value
function row:GetHPScalingCurveID() end

---Sets the value of field 'HPScalingCurveID'.
---@param value integer
---@return dbc.row.v1215.ContentTuning self
function row:SetHPScalingCurveID(value) end

---Navigates foreign relationship to 'Curve' via 'HPScalingCurveID'.
---@return dbc.row.v1215.Curve|nil
function row:GetHPScalingCurve() end

---Creates a related 'Curve' row and automatically links 'HPScalingCurveID'.
---@param data? table
---@return dbc.row.v1215.Curve
function row:CreateRelated(data) end

---Gets the value of field 'DMGScalingCurveID'.
---@return integer value
function row:GetDMGScalingCurveID() end

---Sets the value of field 'DMGScalingCurveID'.
---@param value integer
---@return dbc.row.v1215.ContentTuning self
function row:SetDMGScalingCurveID(value) end

---Navigates foreign relationship to 'Curve' via 'DMGScalingCurveID'.
---@return dbc.row.v1215.Curve|nil
function row:GetDMGScalingCurve() end

---Creates a related 'Curve' row and automatically links 'DMGScalingCurveID'.
---@param data? table
---@return dbc.row.v1215.Curve
function row:CreateRelated(data) end

---Gets the value of field 'HPPrimaryStatScalingCurveID'.
---@return integer value
function row:GetHPPrimaryStatScalingCurveID() end

---Sets the value of field 'HPPrimaryStatScalingCurveID'.
---@param value integer
---@return dbc.row.v1215.ContentTuning self
function row:SetHPPrimaryStatScalingCurveID(value) end

---Navigates foreign relationship to 'Curve' via 'HPPrimaryStatScalingCurveID'.
---@return dbc.row.v1215.Curve|nil
function row:GetHPPrimaryStatScalingCurve() end

---Creates a related 'Curve' row and automatically links 'HPPrimaryStatScalingCurveID'.
---@param data? table
---@return dbc.row.v1215.Curve
function row:CreateRelated(data) end

---Gets the value of field 'DMGPrimaryStatScalingCurveID'.
---@return integer value
function row:GetDMGPrimaryStatScalingCurveID() end

---Sets the value of field 'DMGPrimaryStatScalingCurveID'.
---@param value integer
---@return dbc.row.v1215.ContentTuning self
function row:SetDMGPrimaryStatScalingCurveID(value) end

---Navigates foreign relationship to 'Curve' via 'DMGPrimaryStatScalingCurveID'.
---@return dbc.row.v1215.Curve|nil
function row:GetDMGPrimaryStatScalingCurve() end

---Creates a related 'Curve' row and automatically links 'DMGPrimaryStatScalingCurveID'.
---@param data? table
---@return dbc.row.v1215.Curve
function row:CreateRelated(data) end

---Gets the value of field 'PrimaryStatScalingModPlayerDataElementCharacterID'.
---@return integer value
function row:GetPrimaryStatScalingModPlayerDataElementCharacterID() end

---Sets the value of field 'PrimaryStatScalingModPlayerDataElementCharacterID'.
---@param value integer
---@return dbc.row.v1215.ContentTuning self
function row:SetPrimaryStatScalingModPlayerDataElementCharacterID(value) end

---Navigates foreign relationship to 'PlayerDataElementCharacter' via 'PrimaryStatScalingModPlayerDataElementCharacterID'.
---@return dbc.row.v1215.PlayerDataElementCharacter|nil
function row:GetPrimaryStatScalingModPlayerDataElementCharacter() end

---Creates a related 'PlayerDataElementCharacter' row and automatically links 'PrimaryStatScalingModPlayerDataElementCharacterID'.
---@param data? table
---@return dbc.row.v1215.PlayerDataElementCharacter
function row:CreateRelated(data) end

---Gets the value of field 'PrimaryStatScalingModPlayerDataElementCharacterMultiplier'.
---@return number value
function row:GetPrimaryStatScalingModPlayerDataElementCharacterMultiplier() end

---Sets the value of field 'PrimaryStatScalingModPlayerDataElementCharacterMultiplier'.
---@param value number
---@return dbc.row.v1215.ContentTuning self
function row:SetPrimaryStatScalingModPlayerDataElementCharacterMultiplier(value) end

---Gets the value of field 'MinLevelSquish'.
---@return integer value
function row:GetMinLevelSquish() end

---Sets the value of field 'MinLevelSquish'.
---@param value integer
---@return dbc.row.v1215.ContentTuning self
function row:SetMinLevelSquish(value) end

---Gets the value of field 'MaxLevelSquish'.
---@return integer value
function row:GetMaxLevelSquish() end

---Sets the value of field 'MaxLevelSquish'.
---@param value integer
---@return dbc.row.v1215.ContentTuning self
function row:SetMaxLevelSquish(value) end

---Gets the value of field 'MinLevelScalingOffset'.
---@return integer value
function row:GetMinLevelScalingOffset() end

---Sets the value of field 'MinLevelScalingOffset'.
---@param value integer
---@return dbc.row.v1215.ContentTuning self
function row:SetMinLevelScalingOffset(value) end

---Gets the value of field 'MaxLevelScalingOffset'.
---@return integer value
function row:GetMaxLevelScalingOffset() end

---Sets the value of field 'MaxLevelScalingOffset'.
---@param value integer
---@return dbc.row.v1215.ContentTuning self
function row:SetMaxLevelScalingOffset(value) end

---Gets the value of field 'AllowedMinOffset'.
---@return integer value
function row:GetAllowedMinOffset() end

---Sets the value of field 'AllowedMinOffset'.
---@param value integer
---@return dbc.row.v1215.ContentTuning self
function row:SetAllowedMinOffset(value) end

---Gets the value of field 'AllowedMaxOffset'.
---@return integer value
function row:GetAllowedMaxOffset() end

---Sets the value of field 'AllowedMaxOffset'.
---@param value integer
---@return dbc.row.v1215.ContentTuning self
function row:SetAllowedMaxOffset(value) end

---Gets the value of field 'LfgMinLevel'.
---@return integer value
function row:GetLfgMinLevel() end

---Sets the value of field 'LfgMinLevel'.
---@param value integer
---@return dbc.row.v1215.ContentTuning self
function row:SetLfgMinLevel(value) end

---Gets the value of field 'LfgMaxLevel'.
---@return integer value
function row:GetLfgMaxLevel() end

---Sets the value of field 'LfgMaxLevel'.
---@param value integer
---@return dbc.row.v1215.ContentTuning self
function row:SetLfgMaxLevel(value) end

---Gets the value of field 'ILevel'.
---@return integer value
function row:GetILevel() end

---Sets the value of field 'ILevel'.
---@param value integer
---@return dbc.row.v1215.ContentTuning self
function row:SetILevel(value) end

---Gets the value of field 'XpMultQuest'.
---@return number value
function row:GetXpMultQuest() end

---Sets the value of field 'XpMultQuest'.
---@param value number
---@return dbc.row.v1215.ContentTuning self
function row:SetXpMultQuest(value) end

---Table container for ContentTuning (Build 12.1.5.69594).
---@class dbc.Table.v1215.ContentTuning : DbcTable
---@field [integer] dbc.row.v1215.ContentTuning
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ContentTuning
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ContentTuning|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ContentTuning
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ContentTuning>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ContentTuning[]
function tbl:GetByRelation(foreign_id) end

return {}
