---@meta
-- Generated LuaLS annotations for GarrTalent (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GarrTalent in build 12.1.5.69594.
---@class dbc.row.v1215.GarrTalent : RowProxy
---@field Name_lang string
---@field Description_lang string
---@field ID integer
---@field GarrTalentTreeID integer
---@field Tier integer
---@field UiOrder integer
---@field IconFileDataID integer
---@field PlayerConditionID integer
---@field GarrAbilityID integer
---@field Flags integer
---@field TalentType integer
---@field PrerequisiteTalentID integer
---@field ResearchCostSource integer 0: Talent, 1: Tree
---@field ActiveDurationSecs integer
---@field GarrTalentSocketPropertiesID integer

local row = {}

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.GarrTalent self
function row:SetName_lang(value) end

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v1215.GarrTalent self
function row:SetDescription_lang(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GarrTalent self
function row:SetID(value) end

---Gets the value of field 'GarrTalentTreeID'.
---@return integer value
function row:GetGarrTalentTreeID() end

---Sets the value of field 'GarrTalentTreeID'.
---@param value integer
---@return dbc.row.v1215.GarrTalent self
function row:SetGarrTalentTreeID(value) end

---Navigates foreign relationship to 'GarrTalentTree' via 'GarrTalentTreeID'.
---@return dbc.row.v1215.GarrTalentTree|nil
function row:GetGarrTalentTree() end

---Creates a related 'GarrTalentTree' row and automatically links 'GarrTalentTreeID'.
---@param data? table
---@return dbc.row.v1215.GarrTalentTree
function row:CreateRelated(data) end

---Gets the value of field 'Tier'.
---@return integer value
function row:GetTier() end

---Sets the value of field 'Tier'.
---@param value integer
---@return dbc.row.v1215.GarrTalent self
function row:SetTier(value) end

---Gets the value of field 'UiOrder'.
---@return integer value
function row:GetUiOrder() end

---Sets the value of field 'UiOrder'.
---@param value integer
---@return dbc.row.v1215.GarrTalent self
function row:SetUiOrder(value) end

---Gets the value of field 'IconFileDataID'.
---@return integer value
function row:GetIconFileDataID() end

---Sets the value of field 'IconFileDataID'.
---@param value integer
---@return dbc.row.v1215.GarrTalent self
function row:SetIconFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'IconFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetIconFileData() end

---Creates a related 'FileData' row and automatically links 'IconFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.GarrTalent self
function row:SetPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'GarrAbilityID'.
---@return integer value
function row:GetGarrAbilityID() end

---Sets the value of field 'GarrAbilityID'.
---@param value integer
---@return dbc.row.v1215.GarrTalent self
function row:SetGarrAbilityID(value) end

---Navigates foreign relationship to 'GarrAbility' via 'GarrAbilityID'.
---@return dbc.row.v1215.GarrAbility|nil
function row:GetGarrAbility() end

---Creates a related 'GarrAbility' row and automatically links 'GarrAbilityID'.
---@param data? table
---@return dbc.row.v1215.GarrAbility
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.GarrTalent self
function row:SetFlags(value) end

---Gets the value of field 'TalentType'.
---@return integer value
function row:GetTalentType() end

---Sets the value of field 'TalentType'.
---@param value integer
---@return dbc.row.v1215.GarrTalent self
function row:SetTalentType(value) end

---Gets the value of field 'PrerequisiteTalentID'.
---@return integer value
function row:GetPrerequisiteTalentID() end

---Sets the value of field 'PrerequisiteTalentID'.
---@param value integer
---@return dbc.row.v1215.GarrTalent self
function row:SetPrerequisiteTalentID(value) end

---Navigates foreign relationship to 'GarrTalent' via 'PrerequisiteTalentID'.
---@return dbc.row.v1215.GarrTalent|nil
function row:GetPrerequisiteTalent() end

---Creates a related 'GarrTalent' row and automatically links 'PrerequisiteTalentID'.
---@param data? table
---@return dbc.row.v1215.GarrTalent
function row:CreateRelated(data) end

---Gets the value of field 'ResearchCostSource'.
---@return integer value
function row:GetResearchCostSource() end

---Sets the value of field 'ResearchCostSource'.
---@param value integer
---@return dbc.row.v1215.GarrTalent self
function row:SetResearchCostSource(value) end

---Gets the value of field 'ActiveDurationSecs'.
---@return integer value
function row:GetActiveDurationSecs() end

---Sets the value of field 'ActiveDurationSecs'.
---@param value integer
---@return dbc.row.v1215.GarrTalent self
function row:SetActiveDurationSecs(value) end

---Gets the value of field 'GarrTalentSocketPropertiesID'.
---@return integer value
function row:GetGarrTalentSocketPropertiesID() end

---Sets the value of field 'GarrTalentSocketPropertiesID'.
---@param value integer
---@return dbc.row.v1215.GarrTalent self
function row:SetGarrTalentSocketPropertiesID(value) end

---Navigates foreign relationship to 'GarrTalentSocketProperties' via 'GarrTalentSocketPropertiesID'.
---@return dbc.row.v1215.GarrTalentSocketProperties|nil
function row:GetGarrTalentSocketProperties() end

---Creates a related 'GarrTalentSocketProperties' row and automatically links 'GarrTalentSocketPropertiesID'.
---@param data? table
---@return dbc.row.v1215.GarrTalentSocketProperties
function row:CreateRelated(data) end

---Table container for GarrTalent (Build 12.1.5.69594).
---@class dbc.Table.v1215.GarrTalent : DbcTable
---@field [integer] dbc.row.v1215.GarrTalent
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GarrTalent
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GarrTalent|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GarrTalent
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GarrTalent>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GarrTalent[]
function tbl:GetByRelation(foreign_id) end

return {}
