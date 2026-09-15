---@meta
-- Generated LuaLS annotations for UICovenantAbility (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of UICovenantAbility in build 12.1.5.69594.
---@class dbc.row.v1215.UICovenantAbility : RowProxy
---@field ID integer
---@field CovenantPreviewID integer
---@field SpellID integer
---@field AbilityType integer 0 = Class, 1 = Race/Signature, 2 = Soulbind
---@field SoulbindDisplayInfoID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.UICovenantAbility self
function row:SetID(value) end

---Gets the value of field 'CovenantPreviewID'.
---@return integer value
function row:GetCovenantPreviewID() end

---Sets the value of field 'CovenantPreviewID'.
---@param value integer
---@return dbc.row.v1215.UICovenantAbility self
function row:SetCovenantPreviewID(value) end

---Navigates foreign relationship to 'UICovenantPreview' via 'CovenantPreviewID'.
---@return dbc.row.v1215.UICovenantPreview|nil
function row:GetCovenantPreview() end

---Creates a related 'UICovenantPreview' row and automatically links 'CovenantPreviewID'.
---@param data? table
---@return dbc.row.v1215.UICovenantPreview
function row:CreateRelated(data) end

---Gets the value of field 'SpellID'.
---@return integer value
function row:GetSpellID() end

---Sets the value of field 'SpellID'.
---@param value integer
---@return dbc.row.v1215.UICovenantAbility self
function row:SetSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'SpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetSpell() end

---Creates a related 'Spell' row and automatically links 'SpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'AbilityType'.
---@return integer value
function row:GetAbilityType() end

---Sets the value of field 'AbilityType'.
---@param value integer
---@return dbc.row.v1215.UICovenantAbility self
function row:SetAbilityType(value) end

---Gets the value of field 'SoulbindDisplayInfoID'.
---@return integer value
function row:GetSoulbindDisplayInfoID() end

---Sets the value of field 'SoulbindDisplayInfoID'.
---@param value integer
---@return dbc.row.v1215.UICovenantAbility self
function row:SetSoulbindDisplayInfoID(value) end

---Navigates foreign relationship to 'SoulbindUIDisplayInfo' via 'SoulbindDisplayInfoID'.
---@return dbc.row.v1215.SoulbindUIDisplayInfo|nil
function row:GetSoulbindDisplayInfo() end

---Creates a related 'SoulbindUIDisplayInfo' row and automatically links 'SoulbindDisplayInfoID'.
---@param data? table
---@return dbc.row.v1215.SoulbindUIDisplayInfo
function row:CreateRelated(data) end

---Table container for UICovenantAbility (Build 12.1.5.69594).
---@class dbc.Table.v1215.UICovenantAbility : DbcTable
---@field [integer] dbc.row.v1215.UICovenantAbility
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.UICovenantAbility
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.UICovenantAbility|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.UICovenantAbility
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.UICovenantAbility>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.UICovenantAbility[]
function tbl:GetByRelation(foreign_id) end

return {}
