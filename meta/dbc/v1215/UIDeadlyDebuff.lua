---@meta
-- Generated LuaLS annotations for UIDeadlyDebuff (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of UIDeadlyDebuff in build 12.1.5.69594.
---@class dbc.row.v1215.UIDeadlyDebuff : RowProxy
---@field WarningText_lang string
---@field ID integer
---@field SpellID integer
---@field OverrideCriticalTimeRemaining integer
---@field Priority integer
---@field PlayerConditionID integer
---@field SoundKitID integer
---@field Field_10_1_5_50199_007 integer

local row = {}

---Gets the value of field 'WarningText_lang'.
---@return string value
function row:GetWarningText_lang() end

---Sets the value of field 'WarningText_lang'.
---@param value string
---@return dbc.row.v1215.UIDeadlyDebuff self
function row:SetWarningText_lang(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.UIDeadlyDebuff self
function row:SetID(value) end

---Gets the value of field 'SpellID'.
---@return integer value
function row:GetSpellID() end

---Sets the value of field 'SpellID'.
---@param value integer
---@return dbc.row.v1215.UIDeadlyDebuff self
function row:SetSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'SpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetSpell() end

---Creates a related 'Spell' row and automatically links 'SpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'OverrideCriticalTimeRemaining'.
---@return integer value
function row:GetOverrideCriticalTimeRemaining() end

---Sets the value of field 'OverrideCriticalTimeRemaining'.
---@param value integer
---@return dbc.row.v1215.UIDeadlyDebuff self
function row:SetOverrideCriticalTimeRemaining(value) end

---Gets the value of field 'Priority'.
---@return integer value
function row:GetPriority() end

---Sets the value of field 'Priority'.
---@param value integer
---@return dbc.row.v1215.UIDeadlyDebuff self
function row:SetPriority(value) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.UIDeadlyDebuff self
function row:SetPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'SoundKitID'.
---@return integer value
function row:GetSoundKitID() end

---Sets the value of field 'SoundKitID'.
---@param value integer
---@return dbc.row.v1215.UIDeadlyDebuff self
function row:SetSoundKitID(value) end

---Navigates foreign relationship to 'SoundKit' via 'SoundKitID'.
---@return dbc.row.v1215.SoundKit|nil
function row:GetSoundKit() end

---Creates a related 'SoundKit' row and automatically links 'SoundKitID'.
---@param data? table
---@return dbc.row.v1215.SoundKit
function row:CreateRelated(data) end

---Gets the value of field 'Field_10_1_5_50199_007'.
---@return integer value
function row:GetField_10_1_5_50199_007() end

---Sets the value of field 'Field_10_1_5_50199_007'.
---@param value integer
---@return dbc.row.v1215.UIDeadlyDebuff self
function row:SetField_10_1_5_50199_007(value) end

---Table container for UIDeadlyDebuff (Build 12.1.5.69594).
---@class dbc.Table.v1215.UIDeadlyDebuff : DbcTable
---@field [integer] dbc.row.v1215.UIDeadlyDebuff
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.UIDeadlyDebuff
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.UIDeadlyDebuff|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.UIDeadlyDebuff
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.UIDeadlyDebuff>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.UIDeadlyDebuff[]
function tbl:GetByRelation(foreign_id) end

return {}
