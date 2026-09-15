---@meta
-- Generated LuaLS annotations for CharStartKit (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CharStartKit in build 12.1.5.69594.
---@class dbc.row.v1215.CharStartKit : RowProxy
---@field ID integer
---@field ZoneName_lang string
---@field AlteredFormCustomizeOffset number[] Fall back to ChrRaces if not set
---@field ChrModel_9_0_1_35522_001Override number[] moved to ChrClassUIChrModelInfo
---@field ChrModel_9_0_1_35522_001Override_Female number[] moved to ChrClassUIChrModelInfo
---@field ChrClassesID integer
---@field ZoneImageAtlas integer
---@field MaleCharacterCreationVisual integer fall back to column in ChrClasses if not set
---@field MaleCharacterCreationIdleVisual integer
---@field FemaleCharacterCreationVisual integer fall back to MaleCharacterCreationVisual if not set
---@field FemaleCharacterCreationIdleVisual integer
---@field CharacterCreationIdleGroundVisual integer
---@field CharacterCreationGroundVisual integer fall back to column in ChrClasses if not set
---@field AlteredFormCharacterCreationIdleVisual integer
---@field AlteredFormCustomizeRotation number Fall back to ChrRaces if not set
---@field CharacterCreationAnimLoopWaitTimeMs integer fall back to column in ChrClasses if notset
---@field ChrRacesID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CharStartKit self
function row:SetID(value) end

---Gets the value of field 'ZoneName_lang'.
---@return string value
function row:GetZoneName_lang() end

---Sets the value of field 'ZoneName_lang'.
---@param value string
---@return dbc.row.v1215.CharStartKit self
function row:SetZoneName_lang(value) end

---Gets the value of field 'AlteredFormCustomizeOffset'.
---@return number[] value
function row:GetAlteredFormCustomizeOffset() end

---Sets the value of field 'AlteredFormCustomizeOffset'.
---@param value number[]
---@return dbc.row.v1215.CharStartKit self
function row:SetAlteredFormCustomizeOffset(value) end

---Gets element at 1-based index in 'AlteredFormCustomizeOffset'.
---@param index integer
---@return number value
function row:GetAlteredFormCustomizeOffsetItem(index) end

---Gets the value of field 'ChrModel_9_0_1_35522_001Override'.
---@return number[] value
function row:GetChrModel_9_0_1_35522_001Override() end

---Sets the value of field 'ChrModel_9_0_1_35522_001Override'.
---@param value number[]
---@return dbc.row.v1215.CharStartKit self
function row:SetChrModel_9_0_1_35522_001Override(value) end

---Gets element at 1-based index in 'ChrModel_9_0_1_35522_001Override'.
---@param index integer
---@return number value
function row:GetChrModel_9_0_1_35522_001OverrideItem(index) end

---Gets the value of field 'ChrModel_9_0_1_35522_001Override_Female'.
---@return number[] value
function row:GetChrModel_9_0_1_35522_001Override_Female() end

---Sets the value of field 'ChrModel_9_0_1_35522_001Override_Female'.
---@param value number[]
---@return dbc.row.v1215.CharStartKit self
function row:SetChrModel_9_0_1_35522_001Override_Female(value) end

---Gets element at 1-based index in 'ChrModel_9_0_1_35522_001Override_Female'.
---@param index integer
---@return number value
function row:GetChrModel_9_0_1_35522_001Override_FemaleItem(index) end

---Gets the value of field 'ChrClassesID'.
---@return integer value
function row:GetChrClassesID() end

---Sets the value of field 'ChrClassesID'.
---@param value integer
---@return dbc.row.v1215.CharStartKit self
function row:SetChrClassesID(value) end

---Navigates foreign relationship to 'ChrClasses' via 'ChrClassesID'.
---@return dbc.row.v1215.ChrClasses|nil
function row:GetChrClasses() end

---Creates a related 'ChrClasses' row and automatically links 'ChrClassesID'.
---@param data? table
---@return dbc.row.v1215.ChrClasses
function row:CreateRelated(data) end

---Gets the value of field 'ZoneImageAtlas'.
---@return integer value
function row:GetZoneImageAtlas() end

---Sets the value of field 'ZoneImageAtlas'.
---@param value integer
---@return dbc.row.v1215.CharStartKit self
function row:SetZoneImageAtlas(value) end

---Navigates foreign relationship to 'UiTextureAtlasElement' via 'ZoneImageAtlas'.
---@return dbc.row.v1215.UiTextureAtlasElement|nil
function row:GetZoneImageAtlas() end

---Creates a related 'UiTextureAtlasElement' row and automatically links 'ZoneImageAtlas'.
---@param data? table
---@return dbc.row.v1215.UiTextureAtlasElement
function row:CreateRelated(data) end

---Gets the value of field 'MaleCharacterCreationVisual'.
---@return integer value
function row:GetMaleCharacterCreationVisual() end

---Sets the value of field 'MaleCharacterCreationVisual'.
---@param value integer
---@return dbc.row.v1215.CharStartKit self
function row:SetMaleCharacterCreationVisual(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'MaleCharacterCreationVisual'.
---@return dbc.row.v1215.SpellVisualKit|nil
function row:GetMaleCharacterCreationVisual() end

---Creates a related 'SpellVisualKit' row and automatically links 'MaleCharacterCreationVisual'.
---@param data? table
---@return dbc.row.v1215.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'MaleCharacterCreationIdleVisual'.
---@return integer value
function row:GetMaleCharacterCreationIdleVisual() end

---Sets the value of field 'MaleCharacterCreationIdleVisual'.
---@param value integer
---@return dbc.row.v1215.CharStartKit self
function row:SetMaleCharacterCreationIdleVisual(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'MaleCharacterCreationIdleVisual'.
---@return dbc.row.v1215.SpellVisualKit|nil
function row:GetMaleCharacterCreationIdleVisual() end

---Creates a related 'SpellVisualKit' row and automatically links 'MaleCharacterCreationIdleVisual'.
---@param data? table
---@return dbc.row.v1215.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'FemaleCharacterCreationVisual'.
---@return integer value
function row:GetFemaleCharacterCreationVisual() end

---Sets the value of field 'FemaleCharacterCreationVisual'.
---@param value integer
---@return dbc.row.v1215.CharStartKit self
function row:SetFemaleCharacterCreationVisual(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'FemaleCharacterCreationVisual'.
---@return dbc.row.v1215.SpellVisualKit|nil
function row:GetFemaleCharacterCreationVisual() end

---Creates a related 'SpellVisualKit' row and automatically links 'FemaleCharacterCreationVisual'.
---@param data? table
---@return dbc.row.v1215.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'FemaleCharacterCreationIdleVisual'.
---@return integer value
function row:GetFemaleCharacterCreationIdleVisual() end

---Sets the value of field 'FemaleCharacterCreationIdleVisual'.
---@param value integer
---@return dbc.row.v1215.CharStartKit self
function row:SetFemaleCharacterCreationIdleVisual(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'FemaleCharacterCreationIdleVisual'.
---@return dbc.row.v1215.SpellVisualKit|nil
function row:GetFemaleCharacterCreationIdleVisual() end

---Creates a related 'SpellVisualKit' row and automatically links 'FemaleCharacterCreationIdleVisual'.
---@param data? table
---@return dbc.row.v1215.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'CharacterCreationIdleGroundVisual'.
---@return integer value
function row:GetCharacterCreationIdleGroundVisual() end

---Sets the value of field 'CharacterCreationIdleGroundVisual'.
---@param value integer
---@return dbc.row.v1215.CharStartKit self
function row:SetCharacterCreationIdleGroundVisual(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'CharacterCreationIdleGroundVisual'.
---@return dbc.row.v1215.SpellVisualKit|nil
function row:GetCharacterCreationIdleGroundVisual() end

---Creates a related 'SpellVisualKit' row and automatically links 'CharacterCreationIdleGroundVisual'.
---@param data? table
---@return dbc.row.v1215.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'CharacterCreationGroundVisual'.
---@return integer value
function row:GetCharacterCreationGroundVisual() end

---Sets the value of field 'CharacterCreationGroundVisual'.
---@param value integer
---@return dbc.row.v1215.CharStartKit self
function row:SetCharacterCreationGroundVisual(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'CharacterCreationGroundVisual'.
---@return dbc.row.v1215.SpellVisualKit|nil
function row:GetCharacterCreationGroundVisual() end

---Creates a related 'SpellVisualKit' row and automatically links 'CharacterCreationGroundVisual'.
---@param data? table
---@return dbc.row.v1215.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'AlteredFormCharacterCreationIdleVisual'.
---@return integer value
function row:GetAlteredFormCharacterCreationIdleVisual() end

---Sets the value of field 'AlteredFormCharacterCreationIdleVisual'.
---@param value integer
---@return dbc.row.v1215.CharStartKit self
function row:SetAlteredFormCharacterCreationIdleVisual(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'AlteredFormCharacterCreationIdleVisual'.
---@return dbc.row.v1215.SpellVisualKit|nil
function row:GetAlteredFormCharacterCreationIdleVisual() end

---Creates a related 'SpellVisualKit' row and automatically links 'AlteredFormCharacterCreationIdleVisual'.
---@param data? table
---@return dbc.row.v1215.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'AlteredFormCustomizeRotation'.
---@return number value
function row:GetAlteredFormCustomizeRotation() end

---Sets the value of field 'AlteredFormCustomizeRotation'.
---@param value number
---@return dbc.row.v1215.CharStartKit self
function row:SetAlteredFormCustomizeRotation(value) end

---Gets the value of field 'CharacterCreationAnimLoopWaitTimeMs'.
---@return integer value
function row:GetCharacterCreationAnimLoopWaitTimeMs() end

---Sets the value of field 'CharacterCreationAnimLoopWaitTimeMs'.
---@param value integer
---@return dbc.row.v1215.CharStartKit self
function row:SetCharacterCreationAnimLoopWaitTimeMs(value) end

---Gets the value of field 'ChrRacesID'.
---@return integer value
function row:GetChrRacesID() end

---Sets the value of field 'ChrRacesID'.
---@param value integer
---@return dbc.row.v1215.CharStartKit self
function row:SetChrRacesID(value) end

---Navigates foreign relationship to 'ChrRaces' via 'ChrRacesID'.
---@return dbc.row.v1215.ChrRaces|nil
function row:GetChrRaces() end

---Creates a related 'ChrRaces' row and automatically links 'ChrRacesID'.
---@param data? table
---@return dbc.row.v1215.ChrRaces
function row:CreateRelated(data) end

---Table container for CharStartKit (Build 12.1.5.69594).
---@class dbc.Table.v1215.CharStartKit : DbcTable
---@field [integer] dbc.row.v1215.CharStartKit
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CharStartKit
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CharStartKit|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CharStartKit
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CharStartKit>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CharStartKit[]
function tbl:GetByRelation(foreign_id) end

return {}
