---@meta
-- Generated LuaLS annotations for AlliedRace (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of AlliedRace in build 12.1.5.69594.
---@class dbc.row.v1215.AlliedRace : RowProxy
---@field ID integer
---@field RecruitmentHint_lang string
---@field RaceID integer
---@field BannerColor integer
---@field CrestTextureID integer
---@field ModelBackgroundTextureID integer
---@field MaleCreatureDisplayID integer
---@field FemaleCreatureDisplayID integer
---@field Ui_unlockAchievementID integer
---@field Ui_unlockSecondaryAchievementID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.AlliedRace self
function row:SetID(value) end

---Gets the value of field 'RecruitmentHint_lang'.
---@return string value
function row:GetRecruitmentHint_lang() end

---Sets the value of field 'RecruitmentHint_lang'.
---@param value string
---@return dbc.row.v1215.AlliedRace self
function row:SetRecruitmentHint_lang(value) end

---Gets the value of field 'RaceID'.
---@return integer value
function row:GetRaceID() end

---Sets the value of field 'RaceID'.
---@param value integer
---@return dbc.row.v1215.AlliedRace self
function row:SetRaceID(value) end

---Navigates foreign relationship to 'ChrRaces' via 'RaceID'.
---@return dbc.row.v1215.ChrRaces|nil
function row:GetRace() end

---Creates a related 'ChrRaces' row and automatically links 'RaceID'.
---@param data? table
---@return dbc.row.v1215.ChrRaces
function row:CreateRelated(data) end

---Gets the value of field 'BannerColor'.
---@return integer value
function row:GetBannerColor() end

---Sets the value of field 'BannerColor'.
---@param value integer
---@return dbc.row.v1215.AlliedRace self
function row:SetBannerColor(value) end

---Gets the value of field 'CrestTextureID'.
---@return integer value
function row:GetCrestTextureID() end

---Sets the value of field 'CrestTextureID'.
---@param value integer
---@return dbc.row.v1215.AlliedRace self
function row:SetCrestTextureID(value) end

---Navigates foreign relationship to 'UiTextureAtlasMember' via 'CrestTextureID'.
---@return dbc.row.v1215.UiTextureAtlasMember|nil
function row:GetCrestTexture() end

---Creates a related 'UiTextureAtlasMember' row and automatically links 'CrestTextureID'.
---@param data? table
---@return dbc.row.v1215.UiTextureAtlasMember
function row:CreateRelated(data) end

---Gets the value of field 'ModelBackgroundTextureID'.
---@return integer value
function row:GetModelBackgroundTextureID() end

---Sets the value of field 'ModelBackgroundTextureID'.
---@param value integer
---@return dbc.row.v1215.AlliedRace self
function row:SetModelBackgroundTextureID(value) end

---Navigates foreign relationship to 'UiTextureAtlasMember' via 'ModelBackgroundTextureID'.
---@return dbc.row.v1215.UiTextureAtlasMember|nil
function row:GetModelBackgroundTexture() end

---Creates a related 'UiTextureAtlasMember' row and automatically links 'ModelBackgroundTextureID'.
---@param data? table
---@return dbc.row.v1215.UiTextureAtlasMember
function row:CreateRelated(data) end

---Gets the value of field 'MaleCreatureDisplayID'.
---@return integer value
function row:GetMaleCreatureDisplayID() end

---Sets the value of field 'MaleCreatureDisplayID'.
---@param value integer
---@return dbc.row.v1215.AlliedRace self
function row:SetMaleCreatureDisplayID(value) end

---Navigates foreign relationship to 'CreatureDisplayInfo' via 'MaleCreatureDisplayID'.
---@return dbc.row.v1215.CreatureDisplayInfo|nil
function row:GetMaleCreatureDisplay() end

---Creates a related 'CreatureDisplayInfo' row and automatically links 'MaleCreatureDisplayID'.
---@param data? table
---@return dbc.row.v1215.CreatureDisplayInfo
function row:CreateRelated(data) end

---Gets the value of field 'FemaleCreatureDisplayID'.
---@return integer value
function row:GetFemaleCreatureDisplayID() end

---Sets the value of field 'FemaleCreatureDisplayID'.
---@param value integer
---@return dbc.row.v1215.AlliedRace self
function row:SetFemaleCreatureDisplayID(value) end

---Navigates foreign relationship to 'CreatureDisplayInfo' via 'FemaleCreatureDisplayID'.
---@return dbc.row.v1215.CreatureDisplayInfo|nil
function row:GetFemaleCreatureDisplay() end

---Creates a related 'CreatureDisplayInfo' row and automatically links 'FemaleCreatureDisplayID'.
---@param data? table
---@return dbc.row.v1215.CreatureDisplayInfo
function row:CreateRelated(data) end

---Gets the value of field 'Ui_unlockAchievementID'.
---@return integer value
function row:GetUi_unlockAchievementID() end

---Sets the value of field 'Ui_unlockAchievementID'.
---@param value integer
---@return dbc.row.v1215.AlliedRace self
function row:SetUi_unlockAchievementID(value) end

---Navigates foreign relationship to 'Achievement' via 'Ui_unlockAchievementID'.
---@return dbc.row.v1215.Achievement|nil
function row:GetUi_unlockAchievement() end

---Creates a related 'Achievement' row and automatically links 'Ui_unlockAchievementID'.
---@param data? table
---@return dbc.row.v1215.Achievement
function row:CreateRelated(data) end

---Gets the value of field 'Ui_unlockSecondaryAchievementID'.
---@return integer value
function row:GetUi_unlockSecondaryAchievementID() end

---Sets the value of field 'Ui_unlockSecondaryAchievementID'.
---@param value integer
---@return dbc.row.v1215.AlliedRace self
function row:SetUi_unlockSecondaryAchievementID(value) end

---Navigates foreign relationship to 'Achievement' via 'Ui_unlockSecondaryAchievementID'.
---@return dbc.row.v1215.Achievement|nil
function row:GetUi_unlockSecondaryAchievement() end

---Creates a related 'Achievement' row and automatically links 'Ui_unlockSecondaryAchievementID'.
---@param data? table
---@return dbc.row.v1215.Achievement
function row:CreateRelated(data) end

---Table container for AlliedRace (Build 12.1.5.69594).
---@class dbc.Table.v1215.AlliedRace : DbcTable
---@field [integer] dbc.row.v1215.AlliedRace
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.AlliedRace
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.AlliedRace|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.AlliedRace
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.AlliedRace>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.AlliedRace[]
function tbl:GetByRelation(foreign_id) end

return {}
