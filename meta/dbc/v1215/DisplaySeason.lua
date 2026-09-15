---@meta
-- Generated LuaLS annotations for DisplaySeason (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of DisplaySeason in build 12.1.5.69594.
---@class dbc.row.v1215.DisplaySeason : RowProxy
---@field Field_9_2_0_42174_000_lang string WeeklyRewardActivityInfo.raidString?
---@field ID integer GetCurrentSeasonValues.displaySeasonID
---@field Season integer GetCurrentSeasonValues.milestoneSeasonID?
---@field Field_9_2_0_41827_001 integer GetCurrentSeasonValues.rewardSeasonID?
---@field ExpansionID integer
---@field Field_10_0_2_45779_004 integer
---@field DelvesSeasonID integer

local row = {}

---Gets the value of field 'Field_9_2_0_42174_000_lang'.
---@return string value
function row:GetField_9_2_0_42174_000_lang() end

---Sets the value of field 'Field_9_2_0_42174_000_lang'.
---@param value string
---@return dbc.row.v1215.DisplaySeason self
function row:SetField_9_2_0_42174_000_lang(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.DisplaySeason self
function row:SetID(value) end

---Gets the value of field 'Season'.
---@return integer value
function row:GetSeason() end

---Sets the value of field 'Season'.
---@param value integer
---@return dbc.row.v1215.DisplaySeason self
function row:SetSeason(value) end

---Gets the value of field 'Field_9_2_0_41827_001'.
---@return integer value
function row:GetField_9_2_0_41827_001() end

---Sets the value of field 'Field_9_2_0_41827_001'.
---@param value integer
---@return dbc.row.v1215.DisplaySeason self
function row:SetField_9_2_0_41827_001(value) end

---Gets the value of field 'ExpansionID'.
---@return integer value
function row:GetExpansionID() end

---Sets the value of field 'ExpansionID'.
---@param value integer
---@return dbc.row.v1215.DisplaySeason self
function row:SetExpansionID(value) end

---Navigates foreign relationship to 'Expansion' via 'ExpansionID'.
---@return dbc.row.v1215.Expansion|nil
function row:GetExpansion() end

---Creates a related 'Expansion' row and automatically links 'ExpansionID'.
---@param data? table
---@return dbc.row.v1215.Expansion
function row:CreateRelated(data) end

---Gets the value of field 'Field_10_0_2_45779_004'.
---@return integer value
function row:GetField_10_0_2_45779_004() end

---Sets the value of field 'Field_10_0_2_45779_004'.
---@param value integer
---@return dbc.row.v1215.DisplaySeason self
function row:SetField_10_0_2_45779_004(value) end

---Gets the value of field 'DelvesSeasonID'.
---@return integer value
function row:GetDelvesSeasonID() end

---Sets the value of field 'DelvesSeasonID'.
---@param value integer
---@return dbc.row.v1215.DisplaySeason self
function row:SetDelvesSeasonID(value) end

---Navigates foreign relationship to 'DelvesSeason' via 'DelvesSeasonID'.
---@return dbc.row.v1215.DelvesSeason|nil
function row:GetDelvesSeason() end

---Creates a related 'DelvesSeason' row and automatically links 'DelvesSeasonID'.
---@param data? table
---@return dbc.row.v1215.DelvesSeason
function row:CreateRelated(data) end

---Table container for DisplaySeason (Build 12.1.5.69594).
---@class dbc.Table.v1215.DisplaySeason : DbcTable
---@field [integer] dbc.row.v1215.DisplaySeason
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.DisplaySeason
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.DisplaySeason|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.DisplaySeason
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.DisplaySeason>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.DisplaySeason[]
function tbl:GetByRelation(foreign_id) end

return {}
