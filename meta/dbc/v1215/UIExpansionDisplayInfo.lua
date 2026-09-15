---@meta
-- Generated LuaLS annotations for UIExpansionDisplayInfo (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of UIExpansionDisplayInfo in build 12.1.5.69594.
---@class dbc.row.v1215.UIExpansionDisplayInfo : RowProxy
---@field ID integer
---@field ExpansionLogo integer
---@field ExpansionBanner integer
---@field ExpansionLevel integer
---@field Field_12_0_0_63854_004 integer
---@field HighResBackgroundID integer
---@field LowResBackgroundID integer
---@field UiTextureKitID integer
---@field GlueAmbianceSoundKit integer
---@field GlueMusicSoundKit integer
---@field GlueCreditsSoundKit integer
---@field Field_12_0_0_63854_008 integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.UIExpansionDisplayInfo self
function row:SetID(value) end

---Gets the value of field 'ExpansionLogo'.
---@return integer value
function row:GetExpansionLogo() end

---Sets the value of field 'ExpansionLogo'.
---@param value integer
---@return dbc.row.v1215.UIExpansionDisplayInfo self
function row:SetExpansionLogo(value) end

---Navigates foreign relationship to 'FileData' via 'ExpansionLogo'.
---@return dbc.row.v1215.FileData|nil
function row:GetExpansionLogo() end

---Creates a related 'FileData' row and automatically links 'ExpansionLogo'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'ExpansionBanner'.
---@return integer value
function row:GetExpansionBanner() end

---Sets the value of field 'ExpansionBanner'.
---@param value integer
---@return dbc.row.v1215.UIExpansionDisplayInfo self
function row:SetExpansionBanner(value) end

---Navigates foreign relationship to 'UiTextureAtlasMember' via 'ExpansionBanner'.
---@return dbc.row.v1215.UiTextureAtlasMember|nil
function row:GetExpansionBanner() end

---Creates a related 'UiTextureAtlasMember' row and automatically links 'ExpansionBanner'.
---@param data? table
---@return dbc.row.v1215.UiTextureAtlasMember
function row:CreateRelated(data) end

---Gets the value of field 'ExpansionLevel'.
---@return integer value
function row:GetExpansionLevel() end

---Sets the value of field 'ExpansionLevel'.
---@param value integer
---@return dbc.row.v1215.UIExpansionDisplayInfo self
function row:SetExpansionLevel(value) end

---Gets the value of field 'Field_12_0_0_63854_004'.
---@return integer value
function row:GetField_12_0_0_63854_004() end

---Sets the value of field 'Field_12_0_0_63854_004'.
---@param value integer
---@return dbc.row.v1215.UIExpansionDisplayInfo self
function row:SetField_12_0_0_63854_004(value) end

---Gets the value of field 'HighResBackgroundID'.
---@return integer value
function row:GetHighResBackgroundID() end

---Sets the value of field 'HighResBackgroundID'.
---@param value integer
---@return dbc.row.v1215.UIExpansionDisplayInfo self
function row:SetHighResBackgroundID(value) end

---Navigates foreign relationship to 'FileData' via 'HighResBackgroundID'.
---@return dbc.row.v1215.FileData|nil
function row:GetHighResBackground() end

---Creates a related 'FileData' row and automatically links 'HighResBackgroundID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'LowResBackgroundID'.
---@return integer value
function row:GetLowResBackgroundID() end

---Sets the value of field 'LowResBackgroundID'.
---@param value integer
---@return dbc.row.v1215.UIExpansionDisplayInfo self
function row:SetLowResBackgroundID(value) end

---Navigates foreign relationship to 'FileData' via 'LowResBackgroundID'.
---@return dbc.row.v1215.FileData|nil
function row:GetLowResBackground() end

---Creates a related 'FileData' row and automatically links 'LowResBackgroundID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'UiTextureKitID'.
---@return integer value
function row:GetUiTextureKitID() end

---Sets the value of field 'UiTextureKitID'.
---@param value integer
---@return dbc.row.v1215.UIExpansionDisplayInfo self
function row:SetUiTextureKitID(value) end

---Navigates foreign relationship to 'UiTextureKit' via 'UiTextureKitID'.
---@return dbc.row.v1215.UiTextureKit|nil
function row:GetUiTextureKit() end

---Creates a related 'UiTextureKit' row and automatically links 'UiTextureKitID'.
---@param data? table
---@return dbc.row.v1215.UiTextureKit
function row:CreateRelated(data) end

---Gets the value of field 'GlueAmbianceSoundKit'.
---@return integer value
function row:GetGlueAmbianceSoundKit() end

---Sets the value of field 'GlueAmbianceSoundKit'.
---@param value integer
---@return dbc.row.v1215.UIExpansionDisplayInfo self
function row:SetGlueAmbianceSoundKit(value) end

---Navigates foreign relationship to 'SoundKit' via 'GlueAmbianceSoundKit'.
---@return dbc.row.v1215.SoundKit|nil
function row:GetGlueAmbianceSoundKit() end

---Creates a related 'SoundKit' row and automatically links 'GlueAmbianceSoundKit'.
---@param data? table
---@return dbc.row.v1215.SoundKit
function row:CreateRelated(data) end

---Gets the value of field 'GlueMusicSoundKit'.
---@return integer value
function row:GetGlueMusicSoundKit() end

---Sets the value of field 'GlueMusicSoundKit'.
---@param value integer
---@return dbc.row.v1215.UIExpansionDisplayInfo self
function row:SetGlueMusicSoundKit(value) end

---Navigates foreign relationship to 'SoundKit' via 'GlueMusicSoundKit'.
---@return dbc.row.v1215.SoundKit|nil
function row:GetGlueMusicSoundKit() end

---Creates a related 'SoundKit' row and automatically links 'GlueMusicSoundKit'.
---@param data? table
---@return dbc.row.v1215.SoundKit
function row:CreateRelated(data) end

---Gets the value of field 'GlueCreditsSoundKit'.
---@return integer value
function row:GetGlueCreditsSoundKit() end

---Sets the value of field 'GlueCreditsSoundKit'.
---@param value integer
---@return dbc.row.v1215.UIExpansionDisplayInfo self
function row:SetGlueCreditsSoundKit(value) end

---Navigates foreign relationship to 'SoundKit' via 'GlueCreditsSoundKit'.
---@return dbc.row.v1215.SoundKit|nil
function row:GetGlueCreditsSoundKit() end

---Creates a related 'SoundKit' row and automatically links 'GlueCreditsSoundKit'.
---@param data? table
---@return dbc.row.v1215.SoundKit
function row:CreateRelated(data) end

---Gets the value of field 'Field_12_0_0_63854_008'.
---@return integer value
function row:GetField_12_0_0_63854_008() end

---Sets the value of field 'Field_12_0_0_63854_008'.
---@param value integer
---@return dbc.row.v1215.UIExpansionDisplayInfo self
function row:SetField_12_0_0_63854_008(value) end

---Table container for UIExpansionDisplayInfo (Build 12.1.5.69594).
---@class dbc.Table.v1215.UIExpansionDisplayInfo : DbcTable
---@field [integer] dbc.row.v1215.UIExpansionDisplayInfo
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.UIExpansionDisplayInfo
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.UIExpansionDisplayInfo|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.UIExpansionDisplayInfo
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.UIExpansionDisplayInfo>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.UIExpansionDisplayInfo[]
function tbl:GetByRelation(foreign_id) end

return {}
