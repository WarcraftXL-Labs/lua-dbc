---@meta
-- Generated LuaLS annotations for ItemRangedDisplayInfo (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ItemRangedDisplayInfo in build 12.1.5.69594.
---@class dbc.row.v1215.ItemRangedDisplayInfo : RowProxy
---@field ID integer
---@field CastSpellVisualID integer
---@field AutoAttackSpellVisualID integer
---@field QuiverFileDataID integer
---@field MissileSpellVisualEffectNameID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ItemRangedDisplayInfo self
function row:SetID(value) end

---Gets the value of field 'CastSpellVisualID'.
---@return integer value
function row:GetCastSpellVisualID() end

---Sets the value of field 'CastSpellVisualID'.
---@param value integer
---@return dbc.row.v1215.ItemRangedDisplayInfo self
function row:SetCastSpellVisualID(value) end

---Navigates foreign relationship to 'SpellVisual' via 'CastSpellVisualID'.
---@return dbc.row.v1215.SpellVisual|nil
function row:GetCastSpellVisual() end

---Creates a related 'SpellVisual' row and automatically links 'CastSpellVisualID'.
---@param data? table
---@return dbc.row.v1215.SpellVisual
function row:CreateRelated(data) end

---Gets the value of field 'AutoAttackSpellVisualID'.
---@return integer value
function row:GetAutoAttackSpellVisualID() end

---Sets the value of field 'AutoAttackSpellVisualID'.
---@param value integer
---@return dbc.row.v1215.ItemRangedDisplayInfo self
function row:SetAutoAttackSpellVisualID(value) end

---Navigates foreign relationship to 'SpellVisual' via 'AutoAttackSpellVisualID'.
---@return dbc.row.v1215.SpellVisual|nil
function row:GetAutoAttackSpellVisual() end

---Creates a related 'SpellVisual' row and automatically links 'AutoAttackSpellVisualID'.
---@param data? table
---@return dbc.row.v1215.SpellVisual
function row:CreateRelated(data) end

---Gets the value of field 'QuiverFileDataID'.
---@return integer value
function row:GetQuiverFileDataID() end

---Sets the value of field 'QuiverFileDataID'.
---@param value integer
---@return dbc.row.v1215.ItemRangedDisplayInfo self
function row:SetQuiverFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'QuiverFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetQuiverFileData() end

---Creates a related 'FileData' row and automatically links 'QuiverFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'MissileSpellVisualEffectNameID'.
---@return integer value
function row:GetMissileSpellVisualEffectNameID() end

---Sets the value of field 'MissileSpellVisualEffectNameID'.
---@param value integer
---@return dbc.row.v1215.ItemRangedDisplayInfo self
function row:SetMissileSpellVisualEffectNameID(value) end

---Navigates foreign relationship to 'SpellVisualEffectName' via 'MissileSpellVisualEffectNameID'.
---@return dbc.row.v1215.SpellVisualEffectName|nil
function row:GetMissileSpellVisualEffectName() end

---Creates a related 'SpellVisualEffectName' row and automatically links 'MissileSpellVisualEffectNameID'.
---@param data? table
---@return dbc.row.v1215.SpellVisualEffectName
function row:CreateRelated(data) end

---Table container for ItemRangedDisplayInfo (Build 12.1.5.69594).
---@class dbc.Table.v1215.ItemRangedDisplayInfo : DbcTable
---@field [integer] dbc.row.v1215.ItemRangedDisplayInfo
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ItemRangedDisplayInfo
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ItemRangedDisplayInfo|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ItemRangedDisplayInfo
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ItemRangedDisplayInfo>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ItemRangedDisplayInfo[]
function tbl:GetByRelation(foreign_id) end

return {}
