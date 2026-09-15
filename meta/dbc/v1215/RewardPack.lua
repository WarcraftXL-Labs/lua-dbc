---@meta
-- Generated LuaLS annotations for RewardPack (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of RewardPack in build 12.1.5.69594.
---@class dbc.row.v1215.RewardPack : RowProxy
---@field ID integer
---@field CharTitleID integer
---@field Money integer
---@field ArtifactXPDifficulty integer
---@field ArtifactXPMultiplier number
---@field ArtifactXPCategoryID integer
---@field TreasurePickerID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.RewardPack self
function row:SetID(value) end

---Gets the value of field 'CharTitleID'.
---@return integer value
function row:GetCharTitleID() end

---Sets the value of field 'CharTitleID'.
---@param value integer
---@return dbc.row.v1215.RewardPack self
function row:SetCharTitleID(value) end

---Navigates foreign relationship to 'CharTitles' via 'CharTitleID'.
---@return dbc.row.v1215.CharTitles|nil
function row:GetCharTitle() end

---Creates a related 'CharTitles' row and automatically links 'CharTitleID'.
---@param data? table
---@return dbc.row.v1215.CharTitles
function row:CreateRelated(data) end

---Gets the value of field 'Money'.
---@return integer value
function row:GetMoney() end

---Sets the value of field 'Money'.
---@param value integer
---@return dbc.row.v1215.RewardPack self
function row:SetMoney(value) end

---Gets the value of field 'ArtifactXPDifficulty'.
---@return integer value
function row:GetArtifactXPDifficulty() end

---Sets the value of field 'ArtifactXPDifficulty'.
---@param value integer
---@return dbc.row.v1215.RewardPack self
function row:SetArtifactXPDifficulty(value) end

---Gets the value of field 'ArtifactXPMultiplier'.
---@return number value
function row:GetArtifactXPMultiplier() end

---Sets the value of field 'ArtifactXPMultiplier'.
---@param value number
---@return dbc.row.v1215.RewardPack self
function row:SetArtifactXPMultiplier(value) end

---Gets the value of field 'ArtifactXPCategoryID'.
---@return integer value
function row:GetArtifactXPCategoryID() end

---Sets the value of field 'ArtifactXPCategoryID'.
---@param value integer
---@return dbc.row.v1215.RewardPack self
function row:SetArtifactXPCategoryID(value) end

---Navigates foreign relationship to 'ArtifactXPCategory' via 'ArtifactXPCategoryID'.
---@return dbc.row.v1215.ArtifactXPCategory|nil
function row:GetArtifactXPCategory() end

---Creates a related 'ArtifactXPCategory' row and automatically links 'ArtifactXPCategoryID'.
---@param data? table
---@return dbc.row.v1215.ArtifactXPCategory
function row:CreateRelated(data) end

---Gets the value of field 'TreasurePickerID'.
---@return integer value
function row:GetTreasurePickerID() end

---Sets the value of field 'TreasurePickerID'.
---@param value integer
---@return dbc.row.v1215.RewardPack self
function row:SetTreasurePickerID(value) end

---Navigates foreign relationship to 'TreasurePicker' via 'TreasurePickerID'.
---@return dbc.row.v1215.TreasurePicker|nil
function row:GetTreasurePicker() end

---Creates a related 'TreasurePicker' row and automatically links 'TreasurePickerID'.
---@param data? table
---@return dbc.row.v1215.TreasurePicker
function row:CreateRelated(data) end

---Table container for RewardPack (Build 12.1.5.69594).
---@class dbc.Table.v1215.RewardPack : DbcTable
---@field [integer] dbc.row.v1215.RewardPack
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.RewardPack
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.RewardPack|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.RewardPack
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.RewardPack>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.RewardPack[]
function tbl:GetByRelation(foreign_id) end

return {}
