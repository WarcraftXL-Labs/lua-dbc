---@meta
-- Generated LuaLS annotations for BattlePetSpecies (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of BattlePetSpecies in build 12.1.5.69594.
---@class dbc.row.v1215.BattlePetSpecies : RowProxy
---@field Description_lang string
---@field SourceText_lang string
---@field ID integer
---@field CreatureID integer
---@field SummonSpellID integer
---@field IconFileDataID integer
---@field PetTypeEnum integer
---@field Flags integer &0x8: use WorldEffectID 1012 instead of 1337
---@field SourceTypeEnum integer
---@field CardUIModelSceneID integer
---@field LoadoutUIModelSceneID integer
---@field CovenantID integer

local row = {}

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v1215.BattlePetSpecies self
function row:SetDescription_lang(value) end

---Gets the value of field 'SourceText_lang'.
---@return string value
function row:GetSourceText_lang() end

---Sets the value of field 'SourceText_lang'.
---@param value string
---@return dbc.row.v1215.BattlePetSpecies self
function row:SetSourceText_lang(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.BattlePetSpecies self
function row:SetID(value) end

---Gets the value of field 'CreatureID'.
---@return integer value
function row:GetCreatureID() end

---Sets the value of field 'CreatureID'.
---@param value integer
---@return dbc.row.v1215.BattlePetSpecies self
function row:SetCreatureID(value) end

---Navigates foreign relationship to 'Creature' via 'CreatureID'.
---@return dbc.row.v1215.Creature|nil
function row:GetCreature() end

---Creates a related 'Creature' row and automatically links 'CreatureID'.
---@param data? table
---@return dbc.row.v1215.Creature
function row:CreateRelated(data) end

---Gets the value of field 'SummonSpellID'.
---@return integer value
function row:GetSummonSpellID() end

---Sets the value of field 'SummonSpellID'.
---@param value integer
---@return dbc.row.v1215.BattlePetSpecies self
function row:SetSummonSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'SummonSpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetSummonSpell() end

---Creates a related 'Spell' row and automatically links 'SummonSpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'IconFileDataID'.
---@return integer value
function row:GetIconFileDataID() end

---Sets the value of field 'IconFileDataID'.
---@param value integer
---@return dbc.row.v1215.BattlePetSpecies self
function row:SetIconFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'IconFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetIconFileData() end

---Creates a related 'FileData' row and automatically links 'IconFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'PetTypeEnum'.
---@return integer value
function row:GetPetTypeEnum() end

---Sets the value of field 'PetTypeEnum'.
---@param value integer
---@return dbc.row.v1215.BattlePetSpecies self
function row:SetPetTypeEnum(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.BattlePetSpecies self
function row:SetFlags(value) end

---Gets the value of field 'SourceTypeEnum'.
---@return integer value
function row:GetSourceTypeEnum() end

---Sets the value of field 'SourceTypeEnum'.
---@param value integer
---@return dbc.row.v1215.BattlePetSpecies self
function row:SetSourceTypeEnum(value) end

---Gets the value of field 'CardUIModelSceneID'.
---@return integer value
function row:GetCardUIModelSceneID() end

---Sets the value of field 'CardUIModelSceneID'.
---@param value integer
---@return dbc.row.v1215.BattlePetSpecies self
function row:SetCardUIModelSceneID(value) end

---Navigates foreign relationship to 'UiModelScene' via 'CardUIModelSceneID'.
---@return dbc.row.v1215.UiModelScene|nil
function row:GetCardUIModelScene() end

---Creates a related 'UiModelScene' row and automatically links 'CardUIModelSceneID'.
---@param data? table
---@return dbc.row.v1215.UiModelScene
function row:CreateRelated(data) end

---Gets the value of field 'LoadoutUIModelSceneID'.
---@return integer value
function row:GetLoadoutUIModelSceneID() end

---Sets the value of field 'LoadoutUIModelSceneID'.
---@param value integer
---@return dbc.row.v1215.BattlePetSpecies self
function row:SetLoadoutUIModelSceneID(value) end

---Navigates foreign relationship to 'UiModelScene' via 'LoadoutUIModelSceneID'.
---@return dbc.row.v1215.UiModelScene|nil
function row:GetLoadoutUIModelScene() end

---Creates a related 'UiModelScene' row and automatically links 'LoadoutUIModelSceneID'.
---@param data? table
---@return dbc.row.v1215.UiModelScene
function row:CreateRelated(data) end

---Gets the value of field 'CovenantID'.
---@return integer value
function row:GetCovenantID() end

---Sets the value of field 'CovenantID'.
---@param value integer
---@return dbc.row.v1215.BattlePetSpecies self
function row:SetCovenantID(value) end

---Navigates foreign relationship to 'Covenant' via 'CovenantID'.
---@return dbc.row.v1215.Covenant|nil
function row:GetCovenant() end

---Creates a related 'Covenant' row and automatically links 'CovenantID'.
---@param data? table
---@return dbc.row.v1215.Covenant
function row:CreateRelated(data) end

---Table container for BattlePetSpecies (Build 12.1.5.69594).
---@class dbc.Table.v1215.BattlePetSpecies : DbcTable
---@field [integer] dbc.row.v1215.BattlePetSpecies
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.BattlePetSpecies
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.BattlePetSpecies|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.BattlePetSpecies
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.BattlePetSpecies>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.BattlePetSpecies[]
function tbl:GetByRelation(foreign_id) end

return {}
