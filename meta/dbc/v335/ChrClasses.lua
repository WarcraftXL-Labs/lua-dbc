---@meta
-- Generated LuaLS annotations for ChrClasses (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of ChrClasses in build 3.3.5.12340.
---@class dbc.row.v335.ChrClasses : RowProxy
---@field ID integer
---@field DamageBonusStat integer
---@field DisplayPower integer Not really an FK since that table does not exist in all versions, but that enum is still common across all versions.
---@field PetNameToken string
---@field Name_lang string
---@field Name_female_lang string
---@field Name_male_lang string
---@field Filename string
---@field SpellClassSet integer
---@field Flags integer &0x10: Mail, &0x20: Plate, &0x800: !allowBoost, &0x2000: earlyFactionChoice
---@field CinematicSequenceID integer
---@field Required_expansion integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.ChrClasses self
function row:SetID(value) end

---Gets the value of field 'DamageBonusStat'.
---@return integer value
function row:GetDamageBonusStat() end

---Sets the value of field 'DamageBonusStat'.
---@param value integer
---@return dbc.row.v335.ChrClasses self
function row:SetDamageBonusStat(value) end

---Gets the value of field 'DisplayPower'.
---@return integer value
function row:GetDisplayPower() end

---Sets the value of field 'DisplayPower'.
---@param value integer
---@return dbc.row.v335.ChrClasses self
function row:SetDisplayPower(value) end

---Navigates foreign relationship to 'PowerType' via 'DisplayPower'.
---@return dbc.row.v335.PowerType|nil
function row:GetDisplayPower() end

---Creates a related 'PowerType' row and automatically links 'DisplayPower'.
---@param data? table
---@return dbc.row.v335.PowerType
function row:CreateRelated(data) end

---Gets the value of field 'PetNameToken'.
---@return string value
function row:GetPetNameToken() end

---Sets the value of field 'PetNameToken'.
---@param value string
---@return dbc.row.v335.ChrClasses self
function row:SetPetNameToken(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v335.ChrClasses self
function row:SetName_lang(value) end

---Gets the value of field 'Name_female_lang'.
---@return string value
function row:GetName_female_lang() end

---Sets the value of field 'Name_female_lang'.
---@param value string
---@return dbc.row.v335.ChrClasses self
function row:SetName_female_lang(value) end

---Gets the value of field 'Name_male_lang'.
---@return string value
function row:GetName_male_lang() end

---Sets the value of field 'Name_male_lang'.
---@param value string
---@return dbc.row.v335.ChrClasses self
function row:SetName_male_lang(value) end

---Gets the value of field 'Filename'.
---@return string value
function row:GetFilename() end

---Sets the value of field 'Filename'.
---@param value string
---@return dbc.row.v335.ChrClasses self
function row:SetFilename(value) end

---Gets the value of field 'SpellClassSet'.
---@return integer value
function row:GetSpellClassSet() end

---Sets the value of field 'SpellClassSet'.
---@param value integer
---@return dbc.row.v335.ChrClasses self
function row:SetSpellClassSet(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v335.ChrClasses self
function row:SetFlags(value) end

---Gets the value of field 'CinematicSequenceID'.
---@return integer value
function row:GetCinematicSequenceID() end

---Sets the value of field 'CinematicSequenceID'.
---@param value integer
---@return dbc.row.v335.ChrClasses self
function row:SetCinematicSequenceID(value) end

---Navigates foreign relationship to 'CinematicSequences' via 'CinematicSequenceID'.
---@return dbc.row.v335.CinematicSequences|nil
function row:GetCinematicSequence() end

---Creates a related 'CinematicSequences' row and automatically links 'CinematicSequenceID'.
---@param data? table
---@return dbc.row.v335.CinematicSequences
function row:CreateRelated(data) end

---Gets the value of field 'Required_expansion'.
---@return integer value
function row:GetRequired_expansion() end

---Sets the value of field 'Required_expansion'.
---@param value integer
---@return dbc.row.v335.ChrClasses self
function row:SetRequired_expansion(value) end

---Table container for ChrClasses (Build 3.3.5.12340).
---@class dbc.Table.v335.ChrClasses : DbcTable
---@field [integer] dbc.row.v335.ChrClasses
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.ChrClasses
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.ChrClasses|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.ChrClasses
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.ChrClasses>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.ChrClasses[]
function tbl:GetByRelation(foreign_id) end

return {}
