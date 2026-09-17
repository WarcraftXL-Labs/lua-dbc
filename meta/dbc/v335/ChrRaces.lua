---@meta
-- Generated LuaLS annotations for ChrRaces (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of ChrRaces in build 3.3.5.12340.
---@class dbc.row.v335.ChrRaces : RowProxy
---@field ID integer
---@field Flags integer
---@field FactionID integer
---@field ExplorationSoundID integer
---@field MaleDisplayID integer
---@field FemaleDisplayID integer
---@field ClientPrefix string
---@field BaseLanguage integer
---@field CreatureType integer
---@field ResSicknessSpellID integer
---@field SplashSoundID integer
---@field ClientFileString string
---@field CinematicSequenceID integer
---@field Alliance integer
---@field Name_lang string quest text $R
---@field Name string Localized string alias without _lang.
---@field Name_female_lang string quest text $R
---@field Name_female string Localized string alias without _lang.
---@field Name_male_lang string
---@field Name_male string Localized string alias without _lang.
---@field FacialHairCustomization string[]
---@field HairCustomization string
---@field Required_expansion integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.ChrRaces self
function row:SetID(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v335.ChrRaces self
function row:SetFlags(value) end

---Gets the value of field 'FactionID'.
---@return integer value
function row:GetFactionID() end

---Sets the value of field 'FactionID'.
---@param value integer
---@return dbc.row.v335.ChrRaces self
function row:SetFactionID(value) end

---Navigates foreign relationship to 'FactionTemplate' via 'FactionID'.
---@return dbc.row.v335.FactionTemplate|nil
function row:GetFaction() end

---Creates a related 'FactionTemplate' row and automatically links 'FactionID'.
---@param data? table
---@return dbc.row.v335.FactionTemplate
function row:CreateRelated(data) end

---Gets the value of field 'ExplorationSoundID'.
---@return integer value
function row:GetExplorationSoundID() end

---Sets the value of field 'ExplorationSoundID'.
---@param value integer
---@return dbc.row.v335.ChrRaces self
function row:SetExplorationSoundID(value) end

---Navigates foreign relationship to 'SoundEntries' via 'ExplorationSoundID'.
---@return dbc.row.v335.SoundEntries|nil
function row:GetExplorationSound() end

---Creates a related 'SoundEntries' row and automatically links 'ExplorationSoundID'.
---@param data? table
---@return dbc.row.v335.SoundEntries
function row:CreateRelated(data) end

---Gets the value of field 'MaleDisplayID'.
---@return integer value
function row:GetMaleDisplayID() end

---Sets the value of field 'MaleDisplayID'.
---@param value integer
---@return dbc.row.v335.ChrRaces self
function row:SetMaleDisplayID(value) end

---Navigates foreign relationship to 'CreatureDisplayInfo' via 'MaleDisplayID'.
---@return dbc.row.v335.CreatureDisplayInfo|nil
function row:GetMaleDisplay() end

---Creates a related 'CreatureDisplayInfo' row and automatically links 'MaleDisplayID'.
---@param data? table
---@return dbc.row.v335.CreatureDisplayInfo
function row:CreateRelated(data) end

---Gets the value of field 'FemaleDisplayID'.
---@return integer value
function row:GetFemaleDisplayID() end

---Sets the value of field 'FemaleDisplayID'.
---@param value integer
---@return dbc.row.v335.ChrRaces self
function row:SetFemaleDisplayID(value) end

---Navigates foreign relationship to 'CreatureDisplayInfo' via 'FemaleDisplayID'.
---@return dbc.row.v335.CreatureDisplayInfo|nil
function row:GetFemaleDisplay() end

---Creates a related 'CreatureDisplayInfo' row and automatically links 'FemaleDisplayID'.
---@param data? table
---@return dbc.row.v335.CreatureDisplayInfo
function row:CreateRelated(data) end

---Gets the value of field 'ClientPrefix'.
---@return string value
function row:GetClientPrefix() end

---Sets the value of field 'ClientPrefix'.
---@param value string
---@return dbc.row.v335.ChrRaces self
function row:SetClientPrefix(value) end

---Gets the value of field 'BaseLanguage'.
---@return integer value
function row:GetBaseLanguage() end

---Sets the value of field 'BaseLanguage'.
---@param value integer
---@return dbc.row.v335.ChrRaces self
function row:SetBaseLanguage(value) end

---Navigates foreign relationship to 'Languages' via 'BaseLanguage'.
---@return dbc.row.v335.Languages|nil
function row:GetBaseLanguage() end

---Creates a related 'Languages' row and automatically links 'BaseLanguage'.
---@param data? table
---@return dbc.row.v335.Languages
function row:CreateRelated(data) end

---Gets the value of field 'CreatureType'.
---@return integer value
function row:GetCreatureType() end

---Sets the value of field 'CreatureType'.
---@param value integer
---@return dbc.row.v335.ChrRaces self
function row:SetCreatureType(value) end

---Navigates foreign relationship to 'CreatureType' via 'CreatureType'.
---@return dbc.row.v335.CreatureType|nil
function row:GetCreatureType() end

---Creates a related 'CreatureType' row and automatically links 'CreatureType'.
---@param data? table
---@return dbc.row.v335.CreatureType
function row:CreateRelated(data) end

---Gets the value of field 'ResSicknessSpellID'.
---@return integer value
function row:GetResSicknessSpellID() end

---Sets the value of field 'ResSicknessSpellID'.
---@param value integer
---@return dbc.row.v335.ChrRaces self
function row:SetResSicknessSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'ResSicknessSpellID'.
---@return dbc.row.v335.Spell|nil
function row:GetResSicknessSpell() end

---Creates a related 'Spell' row and automatically links 'ResSicknessSpellID'.
---@param data? table
---@return dbc.row.v335.Spell
function row:CreateRelated(data) end

---Gets the value of field 'SplashSoundID'.
---@return integer value
function row:GetSplashSoundID() end

---Sets the value of field 'SplashSoundID'.
---@param value integer
---@return dbc.row.v335.ChrRaces self
function row:SetSplashSoundID(value) end

---Navigates foreign relationship to 'SoundEntries' via 'SplashSoundID'.
---@return dbc.row.v335.SoundEntries|nil
function row:GetSplashSound() end

---Creates a related 'SoundEntries' row and automatically links 'SplashSoundID'.
---@param data? table
---@return dbc.row.v335.SoundEntries
function row:CreateRelated(data) end

---Gets the value of field 'ClientFileString'.
---@return string value
function row:GetClientFileString() end

---Sets the value of field 'ClientFileString'.
---@param value string
---@return dbc.row.v335.ChrRaces self
function row:SetClientFileString(value) end

---Gets the value of field 'CinematicSequenceID'.
---@return integer value
function row:GetCinematicSequenceID() end

---Sets the value of field 'CinematicSequenceID'.
---@param value integer
---@return dbc.row.v335.ChrRaces self
function row:SetCinematicSequenceID(value) end

---Navigates foreign relationship to 'CinematicSequences' via 'CinematicSequenceID'.
---@return dbc.row.v335.CinematicSequences|nil
function row:GetCinematicSequence() end

---Creates a related 'CinematicSequences' row and automatically links 'CinematicSequenceID'.
---@param data? table
---@return dbc.row.v335.CinematicSequences
function row:CreateRelated(data) end

---Gets the value of field 'Alliance'.
---@return integer value
function row:GetAlliance() end

---Sets the value of field 'Alliance'.
---@param value integer
---@return dbc.row.v335.ChrRaces self
function row:SetAlliance(value) end

---Gets the localized value of field 'Name'.
---@param locale? string|integer Specific locale slot or identifier (e.g. dbc.Locale.FRFR or 'frFR'). If omitted, returns first populated locale.
---@return string value
function row:GetName(locale) end

---Sets the localized value of field 'Name'.
---@param value string|table<string|integer, string> Text to set, or table of { [locale] = 'text' }.
---@param locale? string|integer Specific locale (e.g. dbc.Locale.FRFR). If omitted, defaults to enUS (slot 0).
---@return dbc.row.v335.ChrRaces self
function row:SetName(value, locale) end

---Gets the value of field 'Name_lang'.
---@param locale? string|integer Specific locale slot or identifier (e.g. dbc.Locale.FRFR).
---@return string value
function row:GetName_lang(locale) end

---Sets the value of field 'Name_lang'.
---@param value string|table<string|integer, string>
---@param locale? string|integer
---@return dbc.row.v335.ChrRaces self
function row:SetName_lang(value, locale) end

---Gets the localized value of field 'Name_female'.
---@param locale? string|integer Specific locale slot or identifier (e.g. dbc.Locale.FRFR or 'frFR'). If omitted, returns first populated locale.
---@return string value
function row:GetName_female(locale) end

---Sets the localized value of field 'Name_female'.
---@param value string|table<string|integer, string> Text to set, or table of { [locale] = 'text' }.
---@param locale? string|integer Specific locale (e.g. dbc.Locale.FRFR). If omitted, defaults to enUS (slot 0).
---@return dbc.row.v335.ChrRaces self
function row:SetName_female(value, locale) end

---Gets the value of field 'Name_female_lang'.
---@param locale? string|integer Specific locale slot or identifier (e.g. dbc.Locale.FRFR).
---@return string value
function row:GetName_female_lang(locale) end

---Sets the value of field 'Name_female_lang'.
---@param value string|table<string|integer, string>
---@param locale? string|integer
---@return dbc.row.v335.ChrRaces self
function row:SetName_female_lang(value, locale) end

---Gets the localized value of field 'Name_male'.
---@param locale? string|integer Specific locale slot or identifier (e.g. dbc.Locale.FRFR or 'frFR'). If omitted, returns first populated locale.
---@return string value
function row:GetName_male(locale) end

---Sets the localized value of field 'Name_male'.
---@param value string|table<string|integer, string> Text to set, or table of { [locale] = 'text' }.
---@param locale? string|integer Specific locale (e.g. dbc.Locale.FRFR). If omitted, defaults to enUS (slot 0).
---@return dbc.row.v335.ChrRaces self
function row:SetName_male(value, locale) end

---Gets the value of field 'Name_male_lang'.
---@param locale? string|integer Specific locale slot or identifier (e.g. dbc.Locale.FRFR).
---@return string value
function row:GetName_male_lang(locale) end

---Sets the value of field 'Name_male_lang'.
---@param value string|table<string|integer, string>
---@param locale? string|integer
---@return dbc.row.v335.ChrRaces self
function row:SetName_male_lang(value, locale) end

---Gets the value of field 'FacialHairCustomization'.
---@return string[] value
function row:GetFacialHairCustomization() end

---Sets the value of field 'FacialHairCustomization'.
---@param value string[]
---@return dbc.row.v335.ChrRaces self
function row:SetFacialHairCustomization(value) end

---Gets element at 1-based index in 'FacialHairCustomization'.
---@param index integer
---@return string value
function row:GetFacialHairCustomizationItem(index) end

---Gets the value of field 'HairCustomization'.
---@return string value
function row:GetHairCustomization() end

---Sets the value of field 'HairCustomization'.
---@param value string
---@return dbc.row.v335.ChrRaces self
function row:SetHairCustomization(value) end

---Gets the value of field 'Required_expansion'.
---@return integer value
function row:GetRequired_expansion() end

---Sets the value of field 'Required_expansion'.
---@param value integer
---@return dbc.row.v335.ChrRaces self
function row:SetRequired_expansion(value) end

---Table container for ChrRaces (Build 3.3.5.12340).
---@class dbc.Table.v335.ChrRaces : DbcTable
---@field [integer] dbc.row.v335.ChrRaces
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.ChrRaces
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.ChrRaces|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.ChrRaces
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.ChrRaces>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.ChrRaces[]
function tbl:GetByRelation(foreign_id) end

return {}
