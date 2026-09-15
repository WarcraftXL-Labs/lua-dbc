---@meta
-- Generated LuaLS annotations for CraftingDifficulty (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CraftingDifficulty in build 12.1.5.69594.
---@class dbc.row.v1215.CraftingDifficulty : RowProxy
---@field ID integer
---@field MaxRandomSkillBonusPercent number as a percentage of recipe difficulty
---@field CraftSkillBonusPercent number as a percentage of recipe difficulty
---@field ReCraftSkillBonusPercent number as a percentage of recipe difficulty
---@field InspirationSkillBonusPercent number as a percentage of recipe difficulty
---@field Field_10_0_0_44649_004 number
---@field ConcentrationSkillCurveID integer
---@field ConcentrationDifficultyCurveID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CraftingDifficulty self
function row:SetID(value) end

---Gets the value of field 'MaxRandomSkillBonusPercent'.
---@return number value
function row:GetMaxRandomSkillBonusPercent() end

---Sets the value of field 'MaxRandomSkillBonusPercent'.
---@param value number
---@return dbc.row.v1215.CraftingDifficulty self
function row:SetMaxRandomSkillBonusPercent(value) end

---Gets the value of field 'CraftSkillBonusPercent'.
---@return number value
function row:GetCraftSkillBonusPercent() end

---Sets the value of field 'CraftSkillBonusPercent'.
---@param value number
---@return dbc.row.v1215.CraftingDifficulty self
function row:SetCraftSkillBonusPercent(value) end

---Gets the value of field 'ReCraftSkillBonusPercent'.
---@return number value
function row:GetReCraftSkillBonusPercent() end

---Sets the value of field 'ReCraftSkillBonusPercent'.
---@param value number
---@return dbc.row.v1215.CraftingDifficulty self
function row:SetReCraftSkillBonusPercent(value) end

---Gets the value of field 'InspirationSkillBonusPercent'.
---@return number value
function row:GetInspirationSkillBonusPercent() end

---Sets the value of field 'InspirationSkillBonusPercent'.
---@param value number
---@return dbc.row.v1215.CraftingDifficulty self
function row:SetInspirationSkillBonusPercent(value) end

---Gets the value of field 'Field_10_0_0_44649_004'.
---@return number value
function row:GetField_10_0_0_44649_004() end

---Sets the value of field 'Field_10_0_0_44649_004'.
---@param value number
---@return dbc.row.v1215.CraftingDifficulty self
function row:SetField_10_0_0_44649_004(value) end

---Gets the value of field 'ConcentrationSkillCurveID'.
---@return integer value
function row:GetConcentrationSkillCurveID() end

---Sets the value of field 'ConcentrationSkillCurveID'.
---@param value integer
---@return dbc.row.v1215.CraftingDifficulty self
function row:SetConcentrationSkillCurveID(value) end

---Navigates foreign relationship to 'Curve' via 'ConcentrationSkillCurveID'.
---@return dbc.row.v1215.Curve|nil
function row:GetConcentrationSkillCurve() end

---Creates a related 'Curve' row and automatically links 'ConcentrationSkillCurveID'.
---@param data? table
---@return dbc.row.v1215.Curve
function row:CreateRelated(data) end

---Gets the value of field 'ConcentrationDifficultyCurveID'.
---@return integer value
function row:GetConcentrationDifficultyCurveID() end

---Sets the value of field 'ConcentrationDifficultyCurveID'.
---@param value integer
---@return dbc.row.v1215.CraftingDifficulty self
function row:SetConcentrationDifficultyCurveID(value) end

---Navigates foreign relationship to 'Curve' via 'ConcentrationDifficultyCurveID'.
---@return dbc.row.v1215.Curve|nil
function row:GetConcentrationDifficultyCurve() end

---Creates a related 'Curve' row and automatically links 'ConcentrationDifficultyCurveID'.
---@param data? table
---@return dbc.row.v1215.Curve
function row:CreateRelated(data) end

---Table container for CraftingDifficulty (Build 12.1.5.69594).
---@class dbc.Table.v1215.CraftingDifficulty : DbcTable
---@field [integer] dbc.row.v1215.CraftingDifficulty
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CraftingDifficulty
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CraftingDifficulty|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CraftingDifficulty
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CraftingDifficulty>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CraftingDifficulty[]
function tbl:GetByRelation(foreign_id) end

return {}
