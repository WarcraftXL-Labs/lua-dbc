---@meta
-- Generated LuaLS annotations for PrestigeLevelInfo (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of PrestigeLevelInfo in build 12.1.5.69594.
---@class dbc.row.v1215.PrestigeLevelInfo : RowProxy
---@field ID integer
---@field Name_lang string
---@field HonorLevel integer
---@field BadgeTextureFileDataID integer
---@field Flags integer
---@field AwardedAchievementID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.PrestigeLevelInfo self
function row:SetID(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.PrestigeLevelInfo self
function row:SetName_lang(value) end

---Gets the value of field 'HonorLevel'.
---@return integer value
function row:GetHonorLevel() end

---Sets the value of field 'HonorLevel'.
---@param value integer
---@return dbc.row.v1215.PrestigeLevelInfo self
function row:SetHonorLevel(value) end

---Gets the value of field 'BadgeTextureFileDataID'.
---@return integer value
function row:GetBadgeTextureFileDataID() end

---Sets the value of field 'BadgeTextureFileDataID'.
---@param value integer
---@return dbc.row.v1215.PrestigeLevelInfo self
function row:SetBadgeTextureFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'BadgeTextureFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetBadgeTextureFileData() end

---Creates a related 'FileData' row and automatically links 'BadgeTextureFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.PrestigeLevelInfo self
function row:SetFlags(value) end

---Gets the value of field 'AwardedAchievementID'.
---@return integer value
function row:GetAwardedAchievementID() end

---Sets the value of field 'AwardedAchievementID'.
---@param value integer
---@return dbc.row.v1215.PrestigeLevelInfo self
function row:SetAwardedAchievementID(value) end

---Navigates foreign relationship to 'Achievement' via 'AwardedAchievementID'.
---@return dbc.row.v1215.Achievement|nil
function row:GetAwardedAchievement() end

---Creates a related 'Achievement' row and automatically links 'AwardedAchievementID'.
---@param data? table
---@return dbc.row.v1215.Achievement
function row:CreateRelated(data) end

---Table container for PrestigeLevelInfo (Build 12.1.5.69594).
---@class dbc.Table.v1215.PrestigeLevelInfo : DbcTable
---@field [integer] dbc.row.v1215.PrestigeLevelInfo
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.PrestigeLevelInfo
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.PrestigeLevelInfo|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.PrestigeLevelInfo
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.PrestigeLevelInfo>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.PrestigeLevelInfo[]
function tbl:GetByRelation(foreign_id) end

return {}
