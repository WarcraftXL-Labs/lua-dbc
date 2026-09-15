---@meta
-- Generated LuaLS annotations for RenownRewardsPlunderstorm (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of RenownRewardsPlunderstorm in build 12.1.5.69594.
---@class dbc.row.v1215.RenownRewardsPlunderstorm : RowProxy
---@field ID integer
---@field Name_lang string
---@field Description_lang string
---@field CovenantID integer
---@field Level integer
---@field Icon integer
---@field Field_10_2_6_53840_005 integer
---@field UiOrder integer
---@field SpellID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.RenownRewardsPlunderstorm self
function row:SetID(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.RenownRewardsPlunderstorm self
function row:SetName_lang(value) end

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v1215.RenownRewardsPlunderstorm self
function row:SetDescription_lang(value) end

---Gets the value of field 'CovenantID'.
---@return integer value
function row:GetCovenantID() end

---Sets the value of field 'CovenantID'.
---@param value integer
---@return dbc.row.v1215.RenownRewardsPlunderstorm self
function row:SetCovenantID(value) end

---Navigates foreign relationship to 'Covenant' via 'CovenantID'.
---@return dbc.row.v1215.Covenant|nil
function row:GetCovenant() end

---Creates a related 'Covenant' row and automatically links 'CovenantID'.
---@param data? table
---@return dbc.row.v1215.Covenant
function row:CreateRelated(data) end

---Gets the value of field 'Level'.
---@return integer value
function row:GetLevel() end

---Sets the value of field 'Level'.
---@param value integer
---@return dbc.row.v1215.RenownRewardsPlunderstorm self
function row:SetLevel(value) end

---Gets the value of field 'Icon'.
---@return integer value
function row:GetIcon() end

---Sets the value of field 'Icon'.
---@param value integer
---@return dbc.row.v1215.RenownRewardsPlunderstorm self
function row:SetIcon(value) end

---Navigates foreign relationship to 'FileData' via 'Icon'.
---@return dbc.row.v1215.FileData|nil
function row:GetIcon() end

---Creates a related 'FileData' row and automatically links 'Icon'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'Field_10_2_6_53840_005'.
---@return integer value
function row:GetField_10_2_6_53840_005() end

---Sets the value of field 'Field_10_2_6_53840_005'.
---@param value integer
---@return dbc.row.v1215.RenownRewardsPlunderstorm self
function row:SetField_10_2_6_53840_005(value) end

---Gets the value of field 'UiOrder'.
---@return integer value
function row:GetUiOrder() end

---Sets the value of field 'UiOrder'.
---@param value integer
---@return dbc.row.v1215.RenownRewardsPlunderstorm self
function row:SetUiOrder(value) end

---Gets the value of field 'SpellID'.
---@return integer value
function row:GetSpellID() end

---Sets the value of field 'SpellID'.
---@param value integer
---@return dbc.row.v1215.RenownRewardsPlunderstorm self
function row:SetSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'SpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetSpell() end

---Creates a related 'Spell' row and automatically links 'SpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Table container for RenownRewardsPlunderstorm (Build 12.1.5.69594).
---@class dbc.Table.v1215.RenownRewardsPlunderstorm : DbcTable
---@field [integer] dbc.row.v1215.RenownRewardsPlunderstorm
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.RenownRewardsPlunderstorm
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.RenownRewardsPlunderstorm|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.RenownRewardsPlunderstorm
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.RenownRewardsPlunderstorm>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.RenownRewardsPlunderstorm[]
function tbl:GetByRelation(foreign_id) end

return {}
