---@meta
-- Generated LuaLS annotations for QuestInfo (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of QuestInfo in build 12.1.5.69594.
---@class dbc.row.v1215.QuestInfo : RowProxy
---@field ID integer
---@field InfoName_lang string
---@field Type integer 0 = Tag, 1 = Profession, 2 = Normal, 3 = Pvp, 4 = PetBattle, 5 = Bounty, 6 = Dungeon, 7 = Invasion, 8 = Raid, 9 = Contribution, 10 = RatedReward, 11 = InvasionWrapper, 12 = FactionAssault, 13 = Islands, 14 = Threat
---@field Modifiers integer
---@field Profession integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.QuestInfo self
function row:SetID(value) end

---Gets the value of field 'InfoName_lang'.
---@return string value
function row:GetInfoName_lang() end

---Sets the value of field 'InfoName_lang'.
---@param value string
---@return dbc.row.v1215.QuestInfo self
function row:SetInfoName_lang(value) end

---Gets the value of field 'Type'.
---@return integer value
function row:GetType() end

---Sets the value of field 'Type'.
---@param value integer
---@return dbc.row.v1215.QuestInfo self
function row:SetType(value) end

---Gets the value of field 'Modifiers'.
---@return integer value
function row:GetModifiers() end

---Sets the value of field 'Modifiers'.
---@param value integer
---@return dbc.row.v1215.QuestInfo self
function row:SetModifiers(value) end

---Gets the value of field 'Profession'.
---@return integer value
function row:GetProfession() end

---Sets the value of field 'Profession'.
---@param value integer
---@return dbc.row.v1215.QuestInfo self
function row:SetProfession(value) end

---Navigates foreign relationship to 'SkillLine' via 'Profession'.
---@return dbc.row.v1215.SkillLine|nil
function row:GetProfession() end

---Creates a related 'SkillLine' row and automatically links 'Profession'.
---@param data? table
---@return dbc.row.v1215.SkillLine
function row:CreateRelated(data) end

---Table container for QuestInfo (Build 12.1.5.69594).
---@class dbc.Table.v1215.QuestInfo : DbcTable
---@field [integer] dbc.row.v1215.QuestInfo
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.QuestInfo
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.QuestInfo|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.QuestInfo
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.QuestInfo>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.QuestInfo[]
function tbl:GetByRelation(foreign_id) end

return {}
