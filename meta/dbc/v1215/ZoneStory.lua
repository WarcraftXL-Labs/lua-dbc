---@meta
-- Generated LuaLS annotations for ZoneStory (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ZoneStory in build 12.1.5.69594.
---@class dbc.row.v1215.ZoneStory : RowProxy
---@field ID integer
---@field PlayerFactionGroupID integer
---@field DisplayAchievementID integer
---@field DisplayUIMapID integer
---@field PlayerUIMapID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ZoneStory self
function row:SetID(value) end

---Gets the value of field 'PlayerFactionGroupID'.
---@return integer value
function row:GetPlayerFactionGroupID() end

---Sets the value of field 'PlayerFactionGroupID'.
---@param value integer
---@return dbc.row.v1215.ZoneStory self
function row:SetPlayerFactionGroupID(value) end

---Navigates foreign relationship to 'FactionGroup' via 'PlayerFactionGroupID'.
---@return dbc.row.v1215.FactionGroup|nil
function row:GetPlayerFactionGroup() end

---Creates a related 'FactionGroup' row and automatically links 'PlayerFactionGroupID'.
---@param data? table
---@return dbc.row.v1215.FactionGroup
function row:CreateRelated(data) end

---Gets the value of field 'DisplayAchievementID'.
---@return integer value
function row:GetDisplayAchievementID() end

---Sets the value of field 'DisplayAchievementID'.
---@param value integer
---@return dbc.row.v1215.ZoneStory self
function row:SetDisplayAchievementID(value) end

---Navigates foreign relationship to 'Achievement' via 'DisplayAchievementID'.
---@return dbc.row.v1215.Achievement|nil
function row:GetDisplayAchievement() end

---Creates a related 'Achievement' row and automatically links 'DisplayAchievementID'.
---@param data? table
---@return dbc.row.v1215.Achievement
function row:CreateRelated(data) end

---Gets the value of field 'DisplayUIMapID'.
---@return integer value
function row:GetDisplayUIMapID() end

---Sets the value of field 'DisplayUIMapID'.
---@param value integer
---@return dbc.row.v1215.ZoneStory self
function row:SetDisplayUIMapID(value) end

---Navigates foreign relationship to 'UiMap' via 'DisplayUIMapID'.
---@return dbc.row.v1215.UiMap|nil
function row:GetDisplayUIMap() end

---Creates a related 'UiMap' row and automatically links 'DisplayUIMapID'.
---@param data? table
---@return dbc.row.v1215.UiMap
function row:CreateRelated(data) end

---Gets the value of field 'PlayerUIMapID'.
---@return integer value
function row:GetPlayerUIMapID() end

---Sets the value of field 'PlayerUIMapID'.
---@param value integer
---@return dbc.row.v1215.ZoneStory self
function row:SetPlayerUIMapID(value) end

---Navigates foreign relationship to 'UiMap' via 'PlayerUIMapID'.
---@return dbc.row.v1215.UiMap|nil
function row:GetPlayerUIMap() end

---Creates a related 'UiMap' row and automatically links 'PlayerUIMapID'.
---@param data? table
---@return dbc.row.v1215.UiMap
function row:CreateRelated(data) end

---Table container for ZoneStory (Build 12.1.5.69594).
---@class dbc.Table.v1215.ZoneStory : DbcTable
---@field [integer] dbc.row.v1215.ZoneStory
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ZoneStory
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ZoneStory|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ZoneStory
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ZoneStory>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ZoneStory[]
function tbl:GetByRelation(foreign_id) end

return {}
