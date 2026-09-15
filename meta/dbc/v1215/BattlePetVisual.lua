---@meta
-- Generated LuaLS annotations for BattlePetVisual (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of BattlePetVisual in build 12.1.5.69594.
---@class dbc.row.v1215.BattlePetVisual : RowProxy
---@field ID integer
---@field SceneScriptFunction string
---@field SpellVisualID integer
---@field CastMilliSeconds integer
---@field ImpactMilliSeconds integer
---@field RangeTypeEnum integer
---@field Flags integer
---@field SceneScriptPackageID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.BattlePetVisual self
function row:SetID(value) end

---Gets the value of field 'SceneScriptFunction'.
---@return string value
function row:GetSceneScriptFunction() end

---Sets the value of field 'SceneScriptFunction'.
---@param value string
---@return dbc.row.v1215.BattlePetVisual self
function row:SetSceneScriptFunction(value) end

---Gets the value of field 'SpellVisualID'.
---@return integer value
function row:GetSpellVisualID() end

---Sets the value of field 'SpellVisualID'.
---@param value integer
---@return dbc.row.v1215.BattlePetVisual self
function row:SetSpellVisualID(value) end

---Navigates foreign relationship to 'SpellVisual' via 'SpellVisualID'.
---@return dbc.row.v1215.SpellVisual|nil
function row:GetSpellVisual() end

---Creates a related 'SpellVisual' row and automatically links 'SpellVisualID'.
---@param data? table
---@return dbc.row.v1215.SpellVisual
function row:CreateRelated(data) end

---Gets the value of field 'CastMilliSeconds'.
---@return integer value
function row:GetCastMilliSeconds() end

---Sets the value of field 'CastMilliSeconds'.
---@param value integer
---@return dbc.row.v1215.BattlePetVisual self
function row:SetCastMilliSeconds(value) end

---Gets the value of field 'ImpactMilliSeconds'.
---@return integer value
function row:GetImpactMilliSeconds() end

---Sets the value of field 'ImpactMilliSeconds'.
---@param value integer
---@return dbc.row.v1215.BattlePetVisual self
function row:SetImpactMilliSeconds(value) end

---Gets the value of field 'RangeTypeEnum'.
---@return integer value
function row:GetRangeTypeEnum() end

---Sets the value of field 'RangeTypeEnum'.
---@param value integer
---@return dbc.row.v1215.BattlePetVisual self
function row:SetRangeTypeEnum(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.BattlePetVisual self
function row:SetFlags(value) end

---Gets the value of field 'SceneScriptPackageID'.
---@return integer value
function row:GetSceneScriptPackageID() end

---Sets the value of field 'SceneScriptPackageID'.
---@param value integer
---@return dbc.row.v1215.BattlePetVisual self
function row:SetSceneScriptPackageID(value) end

---Navigates foreign relationship to 'SceneScriptPackage' via 'SceneScriptPackageID'.
---@return dbc.row.v1215.SceneScriptPackage|nil
function row:GetSceneScriptPackage() end

---Creates a related 'SceneScriptPackage' row and automatically links 'SceneScriptPackageID'.
---@param data? table
---@return dbc.row.v1215.SceneScriptPackage
function row:CreateRelated(data) end

---Table container for BattlePetVisual (Build 12.1.5.69594).
---@class dbc.Table.v1215.BattlePetVisual : DbcTable
---@field [integer] dbc.row.v1215.BattlePetVisual
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.BattlePetVisual
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.BattlePetVisual|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.BattlePetVisual
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.BattlePetVisual>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.BattlePetVisual[]
function tbl:GetByRelation(foreign_id) end

return {}
