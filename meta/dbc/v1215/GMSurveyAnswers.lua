---@meta
-- Generated LuaLS annotations for GMSurveyAnswers (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GMSurveyAnswers in build 12.1.5.69594.
---@class dbc.row.v1215.GMSurveyAnswers : RowProxy
---@field ID integer
---@field Answer_lang string
---@field Sort_Index integer
---@field GMSurveyQuestionID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GMSurveyAnswers self
function row:SetID(value) end

---Gets the value of field 'Answer_lang'.
---@return string value
function row:GetAnswer_lang() end

---Sets the value of field 'Answer_lang'.
---@param value string
---@return dbc.row.v1215.GMSurveyAnswers self
function row:SetAnswer_lang(value) end

---Gets the value of field 'Sort_Index'.
---@return integer value
function row:GetSort_Index() end

---Sets the value of field 'Sort_Index'.
---@param value integer
---@return dbc.row.v1215.GMSurveyAnswers self
function row:SetSort_Index(value) end

---Gets the value of field 'GMSurveyQuestionID'.
---@return integer value
function row:GetGMSurveyQuestionID() end

---Sets the value of field 'GMSurveyQuestionID'.
---@param value integer
---@return dbc.row.v1215.GMSurveyAnswers self
function row:SetGMSurveyQuestionID(value) end

---Navigates foreign relationship to 'GMSurveyQuestions' via 'GMSurveyQuestionID'.
---@return dbc.row.v1215.GMSurveyQuestions|nil
function row:GetGMSurveyQuestion() end

---Creates a related 'GMSurveyQuestions' row and automatically links 'GMSurveyQuestionID'.
---@param data? table
---@return dbc.row.v1215.GMSurveyQuestions
function row:CreateRelated(data) end

---Table container for GMSurveyAnswers (Build 12.1.5.69594).
---@class dbc.Table.v1215.GMSurveyAnswers : DbcTable
---@field [integer] dbc.row.v1215.GMSurveyAnswers
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GMSurveyAnswers
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GMSurveyAnswers|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GMSurveyAnswers
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GMSurveyAnswers>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GMSurveyAnswers[]
function tbl:GetByRelation(foreign_id) end

return {}
