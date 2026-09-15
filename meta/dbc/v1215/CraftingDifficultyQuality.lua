---@meta
-- Generated LuaLS annotations for CraftingDifficultyQuality (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CraftingDifficultyQuality in build 12.1.5.69594.
---@class dbc.row.v1215.CraftingDifficultyQuality : RowProxy
---@field ID integer
---@field Order integer
---@field CraftingQualityID integer
---@field QualityPercentage number
---@field Field_10_0_0_44895_004 number
---@field CraftingDifficultyID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CraftingDifficultyQuality self
function row:SetID(value) end

---Gets the value of field 'Order'.
---@return integer value
function row:GetOrder() end

---Sets the value of field 'Order'.
---@param value integer
---@return dbc.row.v1215.CraftingDifficultyQuality self
function row:SetOrder(value) end

---Gets the value of field 'CraftingQualityID'.
---@return integer value
function row:GetCraftingQualityID() end

---Sets the value of field 'CraftingQualityID'.
---@param value integer
---@return dbc.row.v1215.CraftingDifficultyQuality self
function row:SetCraftingQualityID(value) end

---Navigates foreign relationship to 'CraftingQuality' via 'CraftingQualityID'.
---@return dbc.row.v1215.CraftingQuality|nil
function row:GetCraftingQuality() end

---Creates a related 'CraftingQuality' row and automatically links 'CraftingQualityID'.
---@param data? table
---@return dbc.row.v1215.CraftingQuality
function row:CreateRelated(data) end

---Gets the value of field 'QualityPercentage'.
---@return number value
function row:GetQualityPercentage() end

---Sets the value of field 'QualityPercentage'.
---@param value number
---@return dbc.row.v1215.CraftingDifficultyQuality self
function row:SetQualityPercentage(value) end

---Gets the value of field 'Field_10_0_0_44895_004'.
---@return number value
function row:GetField_10_0_0_44895_004() end

---Sets the value of field 'Field_10_0_0_44895_004'.
---@param value number
---@return dbc.row.v1215.CraftingDifficultyQuality self
function row:SetField_10_0_0_44895_004(value) end

---Gets the value of field 'CraftingDifficultyID'.
---@return integer value
function row:GetCraftingDifficultyID() end

---Sets the value of field 'CraftingDifficultyID'.
---@param value integer
---@return dbc.row.v1215.CraftingDifficultyQuality self
function row:SetCraftingDifficultyID(value) end

---Navigates foreign relationship to 'CraftingDifficulty' via 'CraftingDifficultyID'.
---@return dbc.row.v1215.CraftingDifficulty|nil
function row:GetCraftingDifficulty() end

---Creates a related 'CraftingDifficulty' row and automatically links 'CraftingDifficultyID'.
---@param data? table
---@return dbc.row.v1215.CraftingDifficulty
function row:CreateRelated(data) end

---Table container for CraftingDifficultyQuality (Build 12.1.5.69594).
---@class dbc.Table.v1215.CraftingDifficultyQuality : DbcTable
---@field [integer] dbc.row.v1215.CraftingDifficultyQuality
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CraftingDifficultyQuality
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CraftingDifficultyQuality|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CraftingDifficultyQuality
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CraftingDifficultyQuality>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CraftingDifficultyQuality[]
function tbl:GetByRelation(foreign_id) end

return {}
