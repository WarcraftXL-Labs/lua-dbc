---@meta
-- Generated LuaLS annotations for GameMode (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GameMode in build 12.1.5.69594.
---@class dbc.row.v1215.GameMode : RowProxy
---@field ID integer
---@field Tag string cera = Classic Era, csod = Classic Season of Discovery, chc = Classic Hardcore, csom = Classic Season of Mastery, cprog = Classic Progression (e.g. Cata/MoP Classic), mainline = Mainline, ps = Plunderstorm
---@field Field_1_15_7_59856_001 string
---@field Field_1_15_7_59856_002 string
---@field SeasonID integer Matches Enum.SeasonID on Classic, no xrefs yet
---@field LogoFileDataID integer
---@field Field_12_0_0_63724_005 integer DBAnalyser: [LogoHeight, 0,95%], [LogoVerticalOffset, 0,95%], [LogoShrunkenHeight, 0,95%], [CharacterCreateExtraHeight, 0,95%], [CharacterCreateOuterBorder, 0,95%]
---@field Field_12_0_0_63724_006 integer DBAnalyser: [LogoHeight, 0,95%], [LogoVerticalOffset, 0,95%], [LogoShrunkenHeight, 0,95%], [CharacterCreateExtraHeight, 0,95%], [CharacterCreateOuterBorder, 0,95%]
---@field Field_12_0_0_63724_007 integer DBAnalyser: [LogoHeight, 0,95%], [LogoVerticalOffset, 0,95%], [LogoShrunkenHeight, 0,95%], [CharacterCreateExtraHeight, 0,95%], [CharacterCreateOuterBorder, 0,95%]
---@field Flags integer 1 = LogoUsesDarkBackdrop
---@field Field_12_0_0_63724_009 integer DBAnalyser: [LogoHeight, 0,95%], [LogoVerticalOffset, 0,95%], [LogoShrunkenHeight, 0,95%], [CharacterCreateExtraHeight, 0,95%], [CharacterCreateOuterBorder, 0,95%]
---@field Field_12_0_0_63724_010 integer DBAnalyser: [LogoHeight, 0,95%], [LogoVerticalOffset, 0,95%], [LogoShrunkenHeight, 0,95%], [CharacterCreateExtraHeight, 0,95%], [CharacterCreateOuterBorder, 0,95%]
---@field Field_12_0_0_63534_012 integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GameMode self
function row:SetID(value) end

---Gets the value of field 'Tag'.
---@return string value
function row:GetTag() end

---Sets the value of field 'Tag'.
---@param value string
---@return dbc.row.v1215.GameMode self
function row:SetTag(value) end

---Gets the value of field 'Field_1_15_7_59856_001'.
---@return string value
function row:GetField_1_15_7_59856_001() end

---Sets the value of field 'Field_1_15_7_59856_001'.
---@param value string
---@return dbc.row.v1215.GameMode self
function row:SetField_1_15_7_59856_001(value) end

---Gets the value of field 'Field_1_15_7_59856_002'.
---@return string value
function row:GetField_1_15_7_59856_002() end

---Sets the value of field 'Field_1_15_7_59856_002'.
---@param value string
---@return dbc.row.v1215.GameMode self
function row:SetField_1_15_7_59856_002(value) end

---Gets the value of field 'SeasonID'.
---@return integer value
function row:GetSeasonID() end

---Sets the value of field 'SeasonID'.
---@param value integer
---@return dbc.row.v1215.GameMode self
function row:SetSeasonID(value) end

---Navigates foreign relationship to 'Season' via 'SeasonID'.
---@return dbc.row.v1215.Season|nil
function row:GetSeason() end

---Creates a related 'Season' row and automatically links 'SeasonID'.
---@param data? table
---@return dbc.row.v1215.Season
function row:CreateRelated(data) end

---Gets the value of field 'LogoFileDataID'.
---@return integer value
function row:GetLogoFileDataID() end

---Sets the value of field 'LogoFileDataID'.
---@param value integer
---@return dbc.row.v1215.GameMode self
function row:SetLogoFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'LogoFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetLogoFileData() end

---Creates a related 'FileData' row and automatically links 'LogoFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'Field_12_0_0_63724_005'.
---@return integer value
function row:GetField_12_0_0_63724_005() end

---Sets the value of field 'Field_12_0_0_63724_005'.
---@param value integer
---@return dbc.row.v1215.GameMode self
function row:SetField_12_0_0_63724_005(value) end

---Gets the value of field 'Field_12_0_0_63724_006'.
---@return integer value
function row:GetField_12_0_0_63724_006() end

---Sets the value of field 'Field_12_0_0_63724_006'.
---@param value integer
---@return dbc.row.v1215.GameMode self
function row:SetField_12_0_0_63724_006(value) end

---Gets the value of field 'Field_12_0_0_63724_007'.
---@return integer value
function row:GetField_12_0_0_63724_007() end

---Sets the value of field 'Field_12_0_0_63724_007'.
---@param value integer
---@return dbc.row.v1215.GameMode self
function row:SetField_12_0_0_63724_007(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.GameMode self
function row:SetFlags(value) end

---Gets the value of field 'Field_12_0_0_63724_009'.
---@return integer value
function row:GetField_12_0_0_63724_009() end

---Sets the value of field 'Field_12_0_0_63724_009'.
---@param value integer
---@return dbc.row.v1215.GameMode self
function row:SetField_12_0_0_63724_009(value) end

---Gets the value of field 'Field_12_0_0_63724_010'.
---@return integer value
function row:GetField_12_0_0_63724_010() end

---Sets the value of field 'Field_12_0_0_63724_010'.
---@param value integer
---@return dbc.row.v1215.GameMode self
function row:SetField_12_0_0_63724_010(value) end

---Gets the value of field 'Field_12_0_0_63534_012'.
---@return integer value
function row:GetField_12_0_0_63534_012() end

---Sets the value of field 'Field_12_0_0_63534_012'.
---@param value integer
---@return dbc.row.v1215.GameMode self
function row:SetField_12_0_0_63534_012(value) end

---Table container for GameMode (Build 12.1.5.69594).
---@class dbc.Table.v1215.GameMode : DbcTable
---@field [integer] dbc.row.v1215.GameMode
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GameMode
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GameMode|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GameMode
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GameMode>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GameMode[]
function tbl:GetByRelation(foreign_id) end

return {}
