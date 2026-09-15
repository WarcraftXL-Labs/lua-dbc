---@meta
-- Generated LuaLS annotations for Difficulty (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of Difficulty in build 12.1.5.69594.
---@class dbc.row.v1215.Difficulty : RowProxy
---@field ID integer
---@field Name_lang string
---@field InstanceType integer
---@field OrderIndex integer
---@field OldEnumValue integer
---@field FallbackDifficultyID integer
---@field MinPlayers integer
---@field MaxPlayers integer
---@field Flags integer &1: ???
---@field ItemContext integer
---@field ToggleDifficultyID integer
---@field GroupSizeHealthCurveID integer
---@field GroupSizeDmgCurveID integer
---@field GroupSizeSpellPointsCurveID integer
---@field Field_1_15_4_56400_013 integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.Difficulty self
function row:SetID(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.Difficulty self
function row:SetName_lang(value) end

---Gets the value of field 'InstanceType'.
---@return integer value
function row:GetInstanceType() end

---Sets the value of field 'InstanceType'.
---@param value integer
---@return dbc.row.v1215.Difficulty self
function row:SetInstanceType(value) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.Difficulty self
function row:SetOrderIndex(value) end

---Gets the value of field 'OldEnumValue'.
---@return integer value
function row:GetOldEnumValue() end

---Sets the value of field 'OldEnumValue'.
---@param value integer
---@return dbc.row.v1215.Difficulty self
function row:SetOldEnumValue(value) end

---Gets the value of field 'FallbackDifficultyID'.
---@return integer value
function row:GetFallbackDifficultyID() end

---Sets the value of field 'FallbackDifficultyID'.
---@param value integer
---@return dbc.row.v1215.Difficulty self
function row:SetFallbackDifficultyID(value) end

---Navigates foreign relationship to 'Difficulty' via 'FallbackDifficultyID'.
---@return dbc.row.v1215.Difficulty|nil
function row:GetFallbackDifficulty() end

---Creates a related 'Difficulty' row and automatically links 'FallbackDifficultyID'.
---@param data? table
---@return dbc.row.v1215.Difficulty
function row:CreateRelated(data) end

---Gets the value of field 'MinPlayers'.
---@return integer value
function row:GetMinPlayers() end

---Sets the value of field 'MinPlayers'.
---@param value integer
---@return dbc.row.v1215.Difficulty self
function row:SetMinPlayers(value) end

---Gets the value of field 'MaxPlayers'.
---@return integer value
function row:GetMaxPlayers() end

---Sets the value of field 'MaxPlayers'.
---@param value integer
---@return dbc.row.v1215.Difficulty self
function row:SetMaxPlayers(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.Difficulty self
function row:SetFlags(value) end

---Gets the value of field 'ItemContext'.
---@return integer value
function row:GetItemContext() end

---Sets the value of field 'ItemContext'.
---@param value integer
---@return dbc.row.v1215.Difficulty self
function row:SetItemContext(value) end

---Gets the value of field 'ToggleDifficultyID'.
---@return integer value
function row:GetToggleDifficultyID() end

---Sets the value of field 'ToggleDifficultyID'.
---@param value integer
---@return dbc.row.v1215.Difficulty self
function row:SetToggleDifficultyID(value) end

---Navigates foreign relationship to 'Difficulty' via 'ToggleDifficultyID'.
---@return dbc.row.v1215.Difficulty|nil
function row:GetToggleDifficulty() end

---Creates a related 'Difficulty' row and automatically links 'ToggleDifficultyID'.
---@param data? table
---@return dbc.row.v1215.Difficulty
function row:CreateRelated(data) end

---Gets the value of field 'GroupSizeHealthCurveID'.
---@return integer value
function row:GetGroupSizeHealthCurveID() end

---Sets the value of field 'GroupSizeHealthCurveID'.
---@param value integer
---@return dbc.row.v1215.Difficulty self
function row:SetGroupSizeHealthCurveID(value) end

---Navigates foreign relationship to 'Curve' via 'GroupSizeHealthCurveID'.
---@return dbc.row.v1215.Curve|nil
function row:GetGroupSizeHealthCurve() end

---Creates a related 'Curve' row and automatically links 'GroupSizeHealthCurveID'.
---@param data? table
---@return dbc.row.v1215.Curve
function row:CreateRelated(data) end

---Gets the value of field 'GroupSizeDmgCurveID'.
---@return integer value
function row:GetGroupSizeDmgCurveID() end

---Sets the value of field 'GroupSizeDmgCurveID'.
---@param value integer
---@return dbc.row.v1215.Difficulty self
function row:SetGroupSizeDmgCurveID(value) end

---Navigates foreign relationship to 'Curve' via 'GroupSizeDmgCurveID'.
---@return dbc.row.v1215.Curve|nil
function row:GetGroupSizeDmgCurve() end

---Creates a related 'Curve' row and automatically links 'GroupSizeDmgCurveID'.
---@param data? table
---@return dbc.row.v1215.Curve
function row:CreateRelated(data) end

---Gets the value of field 'GroupSizeSpellPointsCurveID'.
---@return integer value
function row:GetGroupSizeSpellPointsCurveID() end

---Sets the value of field 'GroupSizeSpellPointsCurveID'.
---@param value integer
---@return dbc.row.v1215.Difficulty self
function row:SetGroupSizeSpellPointsCurveID(value) end

---Navigates foreign relationship to 'Curve' via 'GroupSizeSpellPointsCurveID'.
---@return dbc.row.v1215.Curve|nil
function row:GetGroupSizeSpellPointsCurve() end

---Creates a related 'Curve' row and automatically links 'GroupSizeSpellPointsCurveID'.
---@param data? table
---@return dbc.row.v1215.Curve
function row:CreateRelated(data) end

---Gets the value of field 'Field_1_15_4_56400_013'.
---@return integer value
function row:GetField_1_15_4_56400_013() end

---Sets the value of field 'Field_1_15_4_56400_013'.
---@param value integer
---@return dbc.row.v1215.Difficulty self
function row:SetField_1_15_4_56400_013(value) end

---Table container for Difficulty (Build 12.1.5.69594).
---@class dbc.Table.v1215.Difficulty : DbcTable
---@field [integer] dbc.row.v1215.Difficulty
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.Difficulty
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.Difficulty|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.Difficulty
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.Difficulty>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.Difficulty[]
function tbl:GetByRelation(foreign_id) end

return {}
