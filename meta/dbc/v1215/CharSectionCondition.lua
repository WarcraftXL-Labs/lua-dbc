---@meta
-- Generated LuaLS annotations for CharSectionCondition (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CharSectionCondition in build 12.1.5.69594.
---@class dbc.row.v1215.CharSectionCondition : RowProxy
---@field ID integer
---@field BaseSection integer CharSections::BaseSection
---@field Sex integer ignore if &0x80; CharSections::SexID
---@field VariationIndex integer ignore if &0x80; CharSections::VariationIndex
---@field ColorIndex integer ignore if &0x80; CharSections::ColorIndex
---@field AchievementID integer
---@field RaceID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CharSectionCondition self
function row:SetID(value) end

---Gets the value of field 'BaseSection'.
---@return integer value
function row:GetBaseSection() end

---Sets the value of field 'BaseSection'.
---@param value integer
---@return dbc.row.v1215.CharSectionCondition self
function row:SetBaseSection(value) end

---Gets the value of field 'Sex'.
---@return integer value
function row:GetSex() end

---Sets the value of field 'Sex'.
---@param value integer
---@return dbc.row.v1215.CharSectionCondition self
function row:SetSex(value) end

---Gets the value of field 'VariationIndex'.
---@return integer value
function row:GetVariationIndex() end

---Sets the value of field 'VariationIndex'.
---@param value integer
---@return dbc.row.v1215.CharSectionCondition self
function row:SetVariationIndex(value) end

---Gets the value of field 'ColorIndex'.
---@return integer value
function row:GetColorIndex() end

---Sets the value of field 'ColorIndex'.
---@param value integer
---@return dbc.row.v1215.CharSectionCondition self
function row:SetColorIndex(value) end

---Gets the value of field 'AchievementID'.
---@return integer value
function row:GetAchievementID() end

---Sets the value of field 'AchievementID'.
---@param value integer
---@return dbc.row.v1215.CharSectionCondition self
function row:SetAchievementID(value) end

---Navigates foreign relationship to 'Achievement' via 'AchievementID'.
---@return dbc.row.v1215.Achievement|nil
function row:GetAchievement() end

---Creates a related 'Achievement' row and automatically links 'AchievementID'.
---@param data? table
---@return dbc.row.v1215.Achievement
function row:CreateRelated(data) end

---Gets the value of field 'RaceID'.
---@return integer value
function row:GetRaceID() end

---Sets the value of field 'RaceID'.
---@param value integer
---@return dbc.row.v1215.CharSectionCondition self
function row:SetRaceID(value) end

---Navigates foreign relationship to 'ChrRaces' via 'RaceID'.
---@return dbc.row.v1215.ChrRaces|nil
function row:GetRace() end

---Creates a related 'ChrRaces' row and automatically links 'RaceID'.
---@param data? table
---@return dbc.row.v1215.ChrRaces
function row:CreateRelated(data) end

---Table container for CharSectionCondition (Build 12.1.5.69594).
---@class dbc.Table.v1215.CharSectionCondition : DbcTable
---@field [integer] dbc.row.v1215.CharSectionCondition
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CharSectionCondition
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CharSectionCondition|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CharSectionCondition
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CharSectionCondition>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CharSectionCondition[]
function tbl:GetByRelation(foreign_id) end

return {}
