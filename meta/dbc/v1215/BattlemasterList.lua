---@meta
-- Generated LuaLS annotations for BattlemasterList (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of BattlemasterList in build 12.1.5.69594.
---@class dbc.row.v1215.BattlemasterList : RowProxy
---@field ID integer
---@field Name_lang string
---@field GameType_lang string
---@field ShortDescription_lang string
---@field LongDescription_lang string
---@field InstanceType integer
---@field PvpType integer Battleground = 0, Arena = 1
---@field MinLevel integer
---@field MaxLevel integer
---@field RatedPlayers integer
---@field MinPlayers integer
---@field MaxPlayers integer
---@field GroupsAllowed integer
---@field MaxGroupSize integer
---@field HolidayWorldState integer
---@field Flags integer
---@field IconFileDataID integer
---@field Required_Player_Condition_ID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.BattlemasterList self
function row:SetID(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.BattlemasterList self
function row:SetName_lang(value) end

---Gets the value of field 'GameType_lang'.
---@return string value
function row:GetGameType_lang() end

---Sets the value of field 'GameType_lang'.
---@param value string
---@return dbc.row.v1215.BattlemasterList self
function row:SetGameType_lang(value) end

---Gets the value of field 'ShortDescription_lang'.
---@return string value
function row:GetShortDescription_lang() end

---Sets the value of field 'ShortDescription_lang'.
---@param value string
---@return dbc.row.v1215.BattlemasterList self
function row:SetShortDescription_lang(value) end

---Gets the value of field 'LongDescription_lang'.
---@return string value
function row:GetLongDescription_lang() end

---Sets the value of field 'LongDescription_lang'.
---@param value string
---@return dbc.row.v1215.BattlemasterList self
function row:SetLongDescription_lang(value) end

---Gets the value of field 'InstanceType'.
---@return integer value
function row:GetInstanceType() end

---Sets the value of field 'InstanceType'.
---@param value integer
---@return dbc.row.v1215.BattlemasterList self
function row:SetInstanceType(value) end

---Gets the value of field 'PvpType'.
---@return integer value
function row:GetPvpType() end

---Sets the value of field 'PvpType'.
---@param value integer
---@return dbc.row.v1215.BattlemasterList self
function row:SetPvpType(value) end

---Gets the value of field 'MinLevel'.
---@return integer value
function row:GetMinLevel() end

---Sets the value of field 'MinLevel'.
---@param value integer
---@return dbc.row.v1215.BattlemasterList self
function row:SetMinLevel(value) end

---Gets the value of field 'MaxLevel'.
---@return integer value
function row:GetMaxLevel() end

---Sets the value of field 'MaxLevel'.
---@param value integer
---@return dbc.row.v1215.BattlemasterList self
function row:SetMaxLevel(value) end

---Gets the value of field 'RatedPlayers'.
---@return integer value
function row:GetRatedPlayers() end

---Sets the value of field 'RatedPlayers'.
---@param value integer
---@return dbc.row.v1215.BattlemasterList self
function row:SetRatedPlayers(value) end

---Gets the value of field 'MinPlayers'.
---@return integer value
function row:GetMinPlayers() end

---Sets the value of field 'MinPlayers'.
---@param value integer
---@return dbc.row.v1215.BattlemasterList self
function row:SetMinPlayers(value) end

---Gets the value of field 'MaxPlayers'.
---@return integer value
function row:GetMaxPlayers() end

---Sets the value of field 'MaxPlayers'.
---@param value integer
---@return dbc.row.v1215.BattlemasterList self
function row:SetMaxPlayers(value) end

---Gets the value of field 'GroupsAllowed'.
---@return integer value
function row:GetGroupsAllowed() end

---Sets the value of field 'GroupsAllowed'.
---@param value integer
---@return dbc.row.v1215.BattlemasterList self
function row:SetGroupsAllowed(value) end

---Gets the value of field 'MaxGroupSize'.
---@return integer value
function row:GetMaxGroupSize() end

---Sets the value of field 'MaxGroupSize'.
---@param value integer
---@return dbc.row.v1215.BattlemasterList self
function row:SetMaxGroupSize(value) end

---Gets the value of field 'HolidayWorldState'.
---@return integer value
function row:GetHolidayWorldState() end

---Sets the value of field 'HolidayWorldState'.
---@param value integer
---@return dbc.row.v1215.BattlemasterList self
function row:SetHolidayWorldState(value) end

---Navigates foreign relationship to 'WorldState' via 'HolidayWorldState'.
---@return dbc.row.v1215.WorldState|nil
function row:GetHolidayWorldState() end

---Creates a related 'WorldState' row and automatically links 'HolidayWorldState'.
---@param data? table
---@return dbc.row.v1215.WorldState
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.BattlemasterList self
function row:SetFlags(value) end

---Gets the value of field 'IconFileDataID'.
---@return integer value
function row:GetIconFileDataID() end

---Sets the value of field 'IconFileDataID'.
---@param value integer
---@return dbc.row.v1215.BattlemasterList self
function row:SetIconFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'IconFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetIconFileData() end

---Creates a related 'FileData' row and automatically links 'IconFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'Required_Player_Condition_ID'.
---@return integer value
function row:GetRequired_Player_Condition_ID() end

---Sets the value of field 'Required_Player_Condition_ID'.
---@param value integer
---@return dbc.row.v1215.BattlemasterList self
function row:SetRequired_Player_Condition_ID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'Required_Player_Condition_ID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetRequired_Player_Condition_() end

---Creates a related 'PlayerCondition' row and automatically links 'Required_Player_Condition_ID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Table container for BattlemasterList (Build 12.1.5.69594).
---@class dbc.Table.v1215.BattlemasterList : DbcTable
---@field [integer] dbc.row.v1215.BattlemasterList
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.BattlemasterList
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.BattlemasterList|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.BattlemasterList
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.BattlemasterList>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.BattlemasterList[]
function tbl:GetByRelation(foreign_id) end

return {}
