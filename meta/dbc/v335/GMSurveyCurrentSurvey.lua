---@meta
-- Generated LuaLS annotations for GMSurveyCurrentSurvey (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of GMSurveyCurrentSurvey in build 3.3.5.12340.
---@class dbc.row.v335.GMSurveyCurrentSurvey : RowProxy
---@field LANGID integer
---@field GMSURVEY_ID integer

local row = {}

---Gets the value of field 'LANGID'.
---@return integer value
function row:GetLANGID() end

---Sets the value of field 'LANGID'.
---@param value integer
---@return dbc.row.v335.GMSurveyCurrentSurvey self
function row:SetLANGID(value) end

---Navigates foreign relationship to 'LANG' via 'LANGID'.
---@return dbc.row.v335.LANG|nil
function row:GetLANG() end

---Creates a related 'LANG' row and automatically links 'LANGID'.
---@param data? table
---@return dbc.row.v335.LANG
function row:CreateRelated(data) end

---Gets the value of field 'GMSURVEY_ID'.
---@return integer value
function row:GetGMSURVEY_ID() end

---Sets the value of field 'GMSURVEY_ID'.
---@param value integer
---@return dbc.row.v335.GMSurveyCurrentSurvey self
function row:SetGMSURVEY_ID(value) end

---Navigates foreign relationship to 'GMSurveySurveys' via 'GMSURVEY_ID'.
---@return dbc.row.v335.GMSurveySurveys|nil
function row:GetGMSURVEY_() end

---Creates a related 'GMSurveySurveys' row and automatically links 'GMSURVEY_ID'.
---@param data? table
---@return dbc.row.v335.GMSurveySurveys
function row:CreateRelated(data) end

---Table container for GMSurveyCurrentSurvey (Build 3.3.5.12340).
---@class dbc.Table.v335.GMSurveyCurrentSurvey : DbcTable
---@field [integer] dbc.row.v335.GMSurveyCurrentSurvey
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.GMSurveyCurrentSurvey
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.GMSurveyCurrentSurvey|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.GMSurveyCurrentSurvey
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.GMSurveyCurrentSurvey>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.GMSurveyCurrentSurvey[]
function tbl:GetByRelation(foreign_id) end

return {}
