---@meta
-- Generated LuaLS annotations for Languages (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of Languages in build 12.1.5.69594.
---@class dbc.row.v1215.Languages : RowProxy
---@field Name_lang string
---@field ID integer
---@field Flags integer
---@field UiTextureKitID integer
---@field UiTextureKitElementCount integer
---@field LearningCurveID integer modifier for "how much you know" the language, applied on top of skill/max_skill calculation, used during word substitution

local row = {}

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.Languages self
function row:SetName_lang(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.Languages self
function row:SetID(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.Languages self
function row:SetFlags(value) end

---Gets the value of field 'UiTextureKitID'.
---@return integer value
function row:GetUiTextureKitID() end

---Sets the value of field 'UiTextureKitID'.
---@param value integer
---@return dbc.row.v1215.Languages self
function row:SetUiTextureKitID(value) end

---Navigates foreign relationship to 'UiTextureKit' via 'UiTextureKitID'.
---@return dbc.row.v1215.UiTextureKit|nil
function row:GetUiTextureKit() end

---Creates a related 'UiTextureKit' row and automatically links 'UiTextureKitID'.
---@param data? table
---@return dbc.row.v1215.UiTextureKit
function row:CreateRelated(data) end

---Gets the value of field 'UiTextureKitElementCount'.
---@return integer value
function row:GetUiTextureKitElementCount() end

---Sets the value of field 'UiTextureKitElementCount'.
---@param value integer
---@return dbc.row.v1215.Languages self
function row:SetUiTextureKitElementCount(value) end

---Gets the value of field 'LearningCurveID'.
---@return integer value
function row:GetLearningCurveID() end

---Sets the value of field 'LearningCurveID'.
---@param value integer
---@return dbc.row.v1215.Languages self
function row:SetLearningCurveID(value) end

---Navigates foreign relationship to 'Curve' via 'LearningCurveID'.
---@return dbc.row.v1215.Curve|nil
function row:GetLearningCurve() end

---Creates a related 'Curve' row and automatically links 'LearningCurveID'.
---@param data? table
---@return dbc.row.v1215.Curve
function row:CreateRelated(data) end

---Table container for Languages (Build 12.1.5.69594).
---@class dbc.Table.v1215.Languages : DbcTable
---@field [integer] dbc.row.v1215.Languages
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.Languages
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.Languages|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.Languages
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.Languages>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.Languages[]
function tbl:GetByRelation(foreign_id) end

return {}
