---@meta
-- Generated LuaLS annotations for Achievement (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of Achievement in build 3.3.5.12340.
---@class dbc.row.v335.Achievement : RowProxy
---@field ID integer
---@field Faction integer
---@field Instance_ID integer
---@field Supercedes integer
---@field Title_lang string
---@field Description_lang string
---@field Category integer
---@field Points integer
---@field Ui_order integer
---@field Flags integer
---@field IconID integer
---@field Reward_lang string
---@field Minimum_criteria integer
---@field Shares_criteria integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.Achievement self
function row:SetID(value) end

---Gets the value of field 'Faction'.
---@return integer value
function row:GetFaction() end

---Sets the value of field 'Faction'.
---@param value integer
---@return dbc.row.v335.Achievement self
function row:SetFaction(value) end

---Gets the value of field 'Instance_ID'.
---@return integer value
function row:GetInstance_ID() end

---Sets the value of field 'Instance_ID'.
---@param value integer
---@return dbc.row.v335.Achievement self
function row:SetInstance_ID(value) end

---Navigates foreign relationship to 'Map' via 'Instance_ID'.
---@return dbc.row.v335.Map|nil
function row:GetInstance_() end

---Creates a related 'Map' row and automatically links 'Instance_ID'.
---@param data? table
---@return dbc.row.v335.Map
function row:CreateRelated(data) end

---Gets the value of field 'Supercedes'.
---@return integer value
function row:GetSupercedes() end

---Sets the value of field 'Supercedes'.
---@param value integer
---@return dbc.row.v335.Achievement self
function row:SetSupercedes(value) end

---Navigates foreign relationship to 'Achievement' via 'Supercedes'.
---@return dbc.row.v335.Achievement|nil
function row:GetSupercedes() end

---Creates a related 'Achievement' row and automatically links 'Supercedes'.
---@param data? table
---@return dbc.row.v335.Achievement
function row:CreateRelated(data) end

---Gets the value of field 'Title_lang'.
---@return string value
function row:GetTitle_lang() end

---Sets the value of field 'Title_lang'.
---@param value string
---@return dbc.row.v335.Achievement self
function row:SetTitle_lang(value) end

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v335.Achievement self
function row:SetDescription_lang(value) end

---Gets the value of field 'Category'.
---@return integer value
function row:GetCategory() end

---Sets the value of field 'Category'.
---@param value integer
---@return dbc.row.v335.Achievement self
function row:SetCategory(value) end

---Navigates foreign relationship to 'Achievement_Category' via 'Category'.
---@return dbc.row.v335.Achievement_Category|nil
function row:GetCategory() end

---Creates a related 'Achievement_Category' row and automatically links 'Category'.
---@param data? table
---@return dbc.row.v335.Achievement_Category
function row:CreateRelated(data) end

---Gets the value of field 'Points'.
---@return integer value
function row:GetPoints() end

---Sets the value of field 'Points'.
---@param value integer
---@return dbc.row.v335.Achievement self
function row:SetPoints(value) end

---Gets the value of field 'Ui_order'.
---@return integer value
function row:GetUi_order() end

---Sets the value of field 'Ui_order'.
---@param value integer
---@return dbc.row.v335.Achievement self
function row:SetUi_order(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v335.Achievement self
function row:SetFlags(value) end

---Gets the value of field 'IconID'.
---@return integer value
function row:GetIconID() end

---Sets the value of field 'IconID'.
---@param value integer
---@return dbc.row.v335.Achievement self
function row:SetIconID(value) end

---Navigates foreign relationship to 'SpellIcon' via 'IconID'.
---@return dbc.row.v335.SpellIcon|nil
function row:GetIcon() end

---Creates a related 'SpellIcon' row and automatically links 'IconID'.
---@param data? table
---@return dbc.row.v335.SpellIcon
function row:CreateRelated(data) end

---Gets the value of field 'Reward_lang'.
---@return string value
function row:GetReward_lang() end

---Sets the value of field 'Reward_lang'.
---@param value string
---@return dbc.row.v335.Achievement self
function row:SetReward_lang(value) end

---Gets the value of field 'Minimum_criteria'.
---@return integer value
function row:GetMinimum_criteria() end

---Sets the value of field 'Minimum_criteria'.
---@param value integer
---@return dbc.row.v335.Achievement self
function row:SetMinimum_criteria(value) end

---Gets the value of field 'Shares_criteria'.
---@return integer value
function row:GetShares_criteria() end

---Sets the value of field 'Shares_criteria'.
---@param value integer
---@return dbc.row.v335.Achievement self
function row:SetShares_criteria(value) end

---Navigates foreign relationship to 'Achievement' via 'Shares_criteria'.
---@return dbc.row.v335.Achievement|nil
function row:GetShares_criteria() end

---Creates a related 'Achievement' row and automatically links 'Shares_criteria'.
---@param data? table
---@return dbc.row.v335.Achievement
function row:CreateRelated(data) end

---Table container for Achievement (Build 3.3.5.12340).
---@class dbc.Table.v335.Achievement : DbcTable
---@field [integer] dbc.row.v335.Achievement
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.Achievement
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.Achievement|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.Achievement
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.Achievement>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.Achievement[]
function tbl:GetByRelation(foreign_id) end

return {}
