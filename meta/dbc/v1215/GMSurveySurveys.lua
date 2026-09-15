---@meta
-- Generated LuaLS annotations for GMSurveySurveys (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GMSurveySurveys in build 12.1.5.69594.
---@class dbc.row.v1215.GMSurveySurveys : RowProxy
---@field ID integer
---@field Q integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GMSurveySurveys self
function row:SetID(value) end

---Gets the value of field 'Q'.
---@return integer[] value
function row:GetQ() end

---Sets the value of field 'Q'.
---@param value integer[]
---@return dbc.row.v1215.GMSurveySurveys self
function row:SetQ(value) end

---Gets element at 1-based index in 'Q'.
---@param index integer
---@return integer value
function row:GetQItem(index) end

---Navigates foreign relationship to 'GMSurveyQuestions' via 'Q'.
---@return dbc.row.v1215.GMSurveyQuestions|nil
function row:GetQ() end

---Creates a related 'GMSurveyQuestions' row and automatically links 'Q'.
---@param data? table
---@return dbc.row.v1215.GMSurveyQuestions
function row:CreateRelated(data) end

---Table container for GMSurveySurveys (Build 12.1.5.69594).
---@class dbc.Table.v1215.GMSurveySurveys : DbcTable
---@field [integer] dbc.row.v1215.GMSurveySurveys
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GMSurveySurveys
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GMSurveySurveys|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GMSurveySurveys
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GMSurveySurveys>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GMSurveySurveys[]
function tbl:GetByRelation(foreign_id) end

return {}
