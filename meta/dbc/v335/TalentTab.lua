---@meta
-- Generated LuaLS annotations for TalentTab (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of TalentTab in build 3.3.5.12340.
---@class dbc.row.v335.TalentTab : RowProxy
---@field ID integer
---@field Name_lang string
---@field SpellIconID integer
---@field RaceMask integer
---@field ClassMask integer
---@field CategoryEnumID integer
---@field OrderIndex integer
---@field BackgroundFile string

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.TalentTab self
function row:SetID(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v335.TalentTab self
function row:SetName_lang(value) end

---Gets the value of field 'SpellIconID'.
---@return integer value
function row:GetSpellIconID() end

---Sets the value of field 'SpellIconID'.
---@param value integer
---@return dbc.row.v335.TalentTab self
function row:SetSpellIconID(value) end

---Navigates foreign relationship to 'SpellIcon' via 'SpellIconID'.
---@return dbc.row.v335.SpellIcon|nil
function row:GetSpellIcon() end

---Creates a related 'SpellIcon' row and automatically links 'SpellIconID'.
---@param data? table
---@return dbc.row.v335.SpellIcon
function row:CreateRelated(data) end

---Gets the value of field 'RaceMask'.
---@return integer value
function row:GetRaceMask() end

---Sets the value of field 'RaceMask'.
---@param value integer
---@return dbc.row.v335.TalentTab self
function row:SetRaceMask(value) end

---Gets the value of field 'ClassMask'.
---@return integer value
function row:GetClassMask() end

---Sets the value of field 'ClassMask'.
---@param value integer
---@return dbc.row.v335.TalentTab self
function row:SetClassMask(value) end

---Gets the value of field 'CategoryEnumID'.
---@return integer value
function row:GetCategoryEnumID() end

---Sets the value of field 'CategoryEnumID'.
---@param value integer
---@return dbc.row.v335.TalentTab self
function row:SetCategoryEnumID(value) end

---Navigates foreign relationship to 'CategoryEnum' via 'CategoryEnumID'.
---@return dbc.row.v335.CategoryEnum|nil
function row:GetCategoryEnum() end

---Creates a related 'CategoryEnum' row and automatically links 'CategoryEnumID'.
---@param data? table
---@return dbc.row.v335.CategoryEnum
function row:CreateRelated(data) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v335.TalentTab self
function row:SetOrderIndex(value) end

---Gets the value of field 'BackgroundFile'.
---@return string value
function row:GetBackgroundFile() end

---Sets the value of field 'BackgroundFile'.
---@param value string
---@return dbc.row.v335.TalentTab self
function row:SetBackgroundFile(value) end

---Table container for TalentTab (Build 3.3.5.12340).
---@class dbc.Table.v335.TalentTab : DbcTable
---@field [integer] dbc.row.v335.TalentTab
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.TalentTab
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.TalentTab|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.TalentTab
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.TalentTab>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.TalentTab[]
function tbl:GetByRelation(foreign_id) end

return {}
