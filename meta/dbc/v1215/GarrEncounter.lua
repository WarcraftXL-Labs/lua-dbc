---@meta
-- Generated LuaLS annotations for GarrEncounter (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GarrEncounter in build 12.1.5.69594.
---@class dbc.row.v1215.GarrEncounter : RowProxy
---@field ID integer
---@field Name_lang string
---@field CreatureID integer
---@field PortraitFileDataID integer
---@field UiTextureKitID integer
---@field UiAnimScale number
---@field UiAnimHeight number
---@field Flags integer
---@field AutoCombatantID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GarrEncounter self
function row:SetID(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.GarrEncounter self
function row:SetName_lang(value) end

---Gets the value of field 'CreatureID'.
---@return integer value
function row:GetCreatureID() end

---Sets the value of field 'CreatureID'.
---@param value integer
---@return dbc.row.v1215.GarrEncounter self
function row:SetCreatureID(value) end

---Navigates foreign relationship to 'Creature' via 'CreatureID'.
---@return dbc.row.v1215.Creature|nil
function row:GetCreature() end

---Creates a related 'Creature' row and automatically links 'CreatureID'.
---@param data? table
---@return dbc.row.v1215.Creature
function row:CreateRelated(data) end

---Gets the value of field 'PortraitFileDataID'.
---@return integer value
function row:GetPortraitFileDataID() end

---Sets the value of field 'PortraitFileDataID'.
---@param value integer
---@return dbc.row.v1215.GarrEncounter self
function row:SetPortraitFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'PortraitFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetPortraitFileData() end

---Creates a related 'FileData' row and automatically links 'PortraitFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'UiTextureKitID'.
---@return integer value
function row:GetUiTextureKitID() end

---Sets the value of field 'UiTextureKitID'.
---@param value integer
---@return dbc.row.v1215.GarrEncounter self
function row:SetUiTextureKitID(value) end

---Navigates foreign relationship to 'UiTextureKit' via 'UiTextureKitID'.
---@return dbc.row.v1215.UiTextureKit|nil
function row:GetUiTextureKit() end

---Creates a related 'UiTextureKit' row and automatically links 'UiTextureKitID'.
---@param data? table
---@return dbc.row.v1215.UiTextureKit
function row:CreateRelated(data) end

---Gets the value of field 'UiAnimScale'.
---@return number value
function row:GetUiAnimScale() end

---Sets the value of field 'UiAnimScale'.
---@param value number
---@return dbc.row.v1215.GarrEncounter self
function row:SetUiAnimScale(value) end

---Gets the value of field 'UiAnimHeight'.
---@return number value
function row:GetUiAnimHeight() end

---Sets the value of field 'UiAnimHeight'.
---@param value number
---@return dbc.row.v1215.GarrEncounter self
function row:SetUiAnimHeight(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.GarrEncounter self
function row:SetFlags(value) end

---Gets the value of field 'AutoCombatantID'.
---@return integer value
function row:GetAutoCombatantID() end

---Sets the value of field 'AutoCombatantID'.
---@param value integer
---@return dbc.row.v1215.GarrEncounter self
function row:SetAutoCombatantID(value) end

---Navigates foreign relationship to 'GarrAutoCombatant' via 'AutoCombatantID'.
---@return dbc.row.v1215.GarrAutoCombatant|nil
function row:GetAutoCombatant() end

---Creates a related 'GarrAutoCombatant' row and automatically links 'AutoCombatantID'.
---@param data? table
---@return dbc.row.v1215.GarrAutoCombatant
function row:CreateRelated(data) end

---Table container for GarrEncounter (Build 12.1.5.69594).
---@class dbc.Table.v1215.GarrEncounter : DbcTable
---@field [integer] dbc.row.v1215.GarrEncounter
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GarrEncounter
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GarrEncounter|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GarrEncounter
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GarrEncounter>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GarrEncounter[]
function tbl:GetByRelation(foreign_id) end

return {}
