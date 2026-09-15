---@meta
-- Generated LuaLS annotations for GarrAbility (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GarrAbility in build 12.1.5.69594.
---@class dbc.row.v1215.GarrAbility : RowProxy
---@field ID integer
---@field Name_lang string
---@field Description_lang string
---@field GarrAbilityCategoryID integer
---@field GarrFollowerTypeID integer
---@field IconFileDataID integer
---@field FactionChangeGarrAbilityID integer
---@field Flags integer GARR_ABILITY_FLAGS: &0x1: IS_TRAIT; &0x2: NO_RANDOM_SELECTION; &0x4: HORDE_ONLY; &0x8: ALLIANCE_ONLY; &0x10: NO_REROLL; &0x20: FIRST_SLOT_ONLY; &0x40: SINGLE_MISSION_DURATION; &0x80: ACTIVE_ONLY_ON_ZONE_SUPPORT; &0x100: APPLY_TO_FIRST_MISSION; &0x200: IS_SPECIALIZATION; &0x400: IS_EMPTY_SLOT

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GarrAbility self
function row:SetID(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.GarrAbility self
function row:SetName_lang(value) end

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v1215.GarrAbility self
function row:SetDescription_lang(value) end

---Gets the value of field 'GarrAbilityCategoryID'.
---@return integer value
function row:GetGarrAbilityCategoryID() end

---Sets the value of field 'GarrAbilityCategoryID'.
---@param value integer
---@return dbc.row.v1215.GarrAbility self
function row:SetGarrAbilityCategoryID(value) end

---Navigates foreign relationship to 'GarrAbilityCategory' via 'GarrAbilityCategoryID'.
---@return dbc.row.v1215.GarrAbilityCategory|nil
function row:GetGarrAbilityCategory() end

---Creates a related 'GarrAbilityCategory' row and automatically links 'GarrAbilityCategoryID'.
---@param data? table
---@return dbc.row.v1215.GarrAbilityCategory
function row:CreateRelated(data) end

---Gets the value of field 'GarrFollowerTypeID'.
---@return integer value
function row:GetGarrFollowerTypeID() end

---Sets the value of field 'GarrFollowerTypeID'.
---@param value integer
---@return dbc.row.v1215.GarrAbility self
function row:SetGarrFollowerTypeID(value) end

---Navigates foreign relationship to 'GarrFollowerType' via 'GarrFollowerTypeID'.
---@return dbc.row.v1215.GarrFollowerType|nil
function row:GetGarrFollowerType() end

---Creates a related 'GarrFollowerType' row and automatically links 'GarrFollowerTypeID'.
---@param data? table
---@return dbc.row.v1215.GarrFollowerType
function row:CreateRelated(data) end

---Gets the value of field 'IconFileDataID'.
---@return integer value
function row:GetIconFileDataID() end

---Sets the value of field 'IconFileDataID'.
---@param value integer
---@return dbc.row.v1215.GarrAbility self
function row:SetIconFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'IconFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetIconFileData() end

---Creates a related 'FileData' row and automatically links 'IconFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'FactionChangeGarrAbilityID'.
---@return integer value
function row:GetFactionChangeGarrAbilityID() end

---Sets the value of field 'FactionChangeGarrAbilityID'.
---@param value integer
---@return dbc.row.v1215.GarrAbility self
function row:SetFactionChangeGarrAbilityID(value) end

---Navigates foreign relationship to 'GarrAbility' via 'FactionChangeGarrAbilityID'.
---@return dbc.row.v1215.GarrAbility|nil
function row:GetFactionChangeGarrAbility() end

---Creates a related 'GarrAbility' row and automatically links 'FactionChangeGarrAbilityID'.
---@param data? table
---@return dbc.row.v1215.GarrAbility
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.GarrAbility self
function row:SetFlags(value) end

---Table container for GarrAbility (Build 12.1.5.69594).
---@class dbc.Table.v1215.GarrAbility : DbcTable
---@field [integer] dbc.row.v1215.GarrAbility
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GarrAbility
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GarrAbility|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GarrAbility
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GarrAbility>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GarrAbility[]
function tbl:GetByRelation(foreign_id) end

return {}
