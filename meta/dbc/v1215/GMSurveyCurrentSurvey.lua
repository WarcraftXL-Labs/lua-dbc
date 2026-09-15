---@meta
-- Generated LuaLS annotations for GMSurveyCurrentSurvey (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GMSurveyCurrentSurvey in build 12.1.5.69594.
---@class dbc.row.v1215.GMSurveyCurrentSurvey : RowProxy
---@field ID integer
---@field GMSURVEY_ID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GMSurveyCurrentSurvey self
function row:SetID(value) end

---Gets the value of field 'GMSURVEY_ID'.
---@return integer value
function row:GetGMSURVEY_ID() end

---Sets the value of field 'GMSURVEY_ID'.
---@param value integer
---@return dbc.row.v1215.GMSurveyCurrentSurvey self
function row:SetGMSURVEY_ID(value) end

---Navigates foreign relationship to 'GMSurveySurveys' via 'GMSURVEY_ID'.
---@return dbc.row.v1215.GMSurveySurveys|nil
function row:GetGMSURVEY_() end

---Creates a related 'GMSurveySurveys' row and automatically links 'GMSURVEY_ID'.
---@param data? table
---@return dbc.row.v1215.GMSurveySurveys
function row:CreateRelated(data) end

---Table container for GMSurveyCurrentSurvey (Build 12.1.5.69594).
---@class dbc.Table.v1215.GMSurveyCurrentSurvey : DbcTable
---@field [integer] dbc.row.v1215.GMSurveyCurrentSurvey
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GMSurveyCurrentSurvey
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GMSurveyCurrentSurvey|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GMSurveyCurrentSurvey
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GMSurveyCurrentSurvey>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GMSurveyCurrentSurvey[]
function tbl:GetByRelation(foreign_id) end

return {}
