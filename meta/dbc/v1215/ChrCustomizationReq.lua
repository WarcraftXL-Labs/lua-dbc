---@meta
-- Generated LuaLS annotations for ChrCustomizationReq (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ChrCustomizationReq in build 12.1.5.69594.
---@class dbc.row.v1215.ChrCustomizationReq : RowProxy
---@field ID integer
---@field ReqSource_lang string
---@field ReqType integer &1: Class required
---@field ClassMask integer
---@field RegionGroupMask integer 1 << (Cfg_Regions::RegionGroupMask - 1)
---@field ReqAchievementID integer
---@field ReqQuestID integer
---@field OverrideArchive integer -1: allow any, otherwise must match OverrideArchive cvar
---@field ReqItemModifiedAppearanceID integer
---@field RaceMasks integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationReq self
function row:SetID(value) end

---Gets the value of field 'ReqSource_lang'.
---@return string value
function row:GetReqSource_lang() end

---Sets the value of field 'ReqSource_lang'.
---@param value string
---@return dbc.row.v1215.ChrCustomizationReq self
function row:SetReqSource_lang(value) end

---Gets the value of field 'ReqType'.
---@return integer value
function row:GetReqType() end

---Sets the value of field 'ReqType'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationReq self
function row:SetReqType(value) end

---Gets the value of field 'ClassMask'.
---@return integer value
function row:GetClassMask() end

---Sets the value of field 'ClassMask'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationReq self
function row:SetClassMask(value) end

---Gets the value of field 'RegionGroupMask'.
---@return integer value
function row:GetRegionGroupMask() end

---Sets the value of field 'RegionGroupMask'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationReq self
function row:SetRegionGroupMask(value) end

---Gets the value of field 'ReqAchievementID'.
---@return integer value
function row:GetReqAchievementID() end

---Sets the value of field 'ReqAchievementID'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationReq self
function row:SetReqAchievementID(value) end

---Navigates foreign relationship to 'Achievement' via 'ReqAchievementID'.
---@return dbc.row.v1215.Achievement|nil
function row:GetReqAchievement() end

---Creates a related 'Achievement' row and automatically links 'ReqAchievementID'.
---@param data? table
---@return dbc.row.v1215.Achievement
function row:CreateRelated(data) end

---Gets the value of field 'ReqQuestID'.
---@return integer value
function row:GetReqQuestID() end

---Sets the value of field 'ReqQuestID'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationReq self
function row:SetReqQuestID(value) end

---Navigates foreign relationship to 'ReqQuest' via 'ReqQuestID'.
---@return dbc.row.v1215.ReqQuest|nil
function row:GetReqQuest() end

---Creates a related 'ReqQuest' row and automatically links 'ReqQuestID'.
---@param data? table
---@return dbc.row.v1215.ReqQuest
function row:CreateRelated(data) end

---Gets the value of field 'OverrideArchive'.
---@return integer value
function row:GetOverrideArchive() end

---Sets the value of field 'OverrideArchive'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationReq self
function row:SetOverrideArchive(value) end

---Gets the value of field 'ReqItemModifiedAppearanceID'.
---@return integer value
function row:GetReqItemModifiedAppearanceID() end

---Sets the value of field 'ReqItemModifiedAppearanceID'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationReq self
function row:SetReqItemModifiedAppearanceID(value) end

---Navigates foreign relationship to 'ItemModifiedAppearance' via 'ReqItemModifiedAppearanceID'.
---@return dbc.row.v1215.ItemModifiedAppearance|nil
function row:GetReqItemModifiedAppearance() end

---Creates a related 'ItemModifiedAppearance' row and automatically links 'ReqItemModifiedAppearanceID'.
---@param data? table
---@return dbc.row.v1215.ItemModifiedAppearance
function row:CreateRelated(data) end

---Gets the value of field 'RaceMasks'.
---@return integer[] value
function row:GetRaceMasks() end

---Sets the value of field 'RaceMasks'.
---@param value integer[]
---@return dbc.row.v1215.ChrCustomizationReq self
function row:SetRaceMasks(value) end

---Gets element at 1-based index in 'RaceMasks'.
---@param index integer
---@return integer value
function row:GetRaceMasksItem(index) end

---Table container for ChrCustomizationReq (Build 12.1.5.69594).
---@class dbc.Table.v1215.ChrCustomizationReq : DbcTable
---@field [integer] dbc.row.v1215.ChrCustomizationReq
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ChrCustomizationReq
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ChrCustomizationReq|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ChrCustomizationReq
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ChrCustomizationReq>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ChrCustomizationReq[]
function tbl:GetByRelation(foreign_id) end

return {}
