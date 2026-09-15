---@meta
-- Generated LuaLS annotations for ChrClassUIDisplay (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ChrClassUIDisplay in build 12.1.5.69594.
---@class dbc.row.v1215.ChrClassUIDisplay : RowProxy
---@field ID integer
---@field ChrClassesID integer
---@field AdvGuidePlayerConditionID integer
---@field SplashPlayerConditionID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ChrClassUIDisplay self
function row:SetID(value) end

---Gets the value of field 'ChrClassesID'.
---@return integer value
function row:GetChrClassesID() end

---Sets the value of field 'ChrClassesID'.
---@param value integer
---@return dbc.row.v1215.ChrClassUIDisplay self
function row:SetChrClassesID(value) end

---Navigates foreign relationship to 'ChrClasses' via 'ChrClassesID'.
---@return dbc.row.v1215.ChrClasses|nil
function row:GetChrClasses() end

---Creates a related 'ChrClasses' row and automatically links 'ChrClassesID'.
---@param data? table
---@return dbc.row.v1215.ChrClasses
function row:CreateRelated(data) end

---Gets the value of field 'AdvGuidePlayerConditionID'.
---@return integer value
function row:GetAdvGuidePlayerConditionID() end

---Sets the value of field 'AdvGuidePlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.ChrClassUIDisplay self
function row:SetAdvGuidePlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'AdvGuidePlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetAdvGuidePlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'AdvGuidePlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'SplashPlayerConditionID'.
---@return integer value
function row:GetSplashPlayerConditionID() end

---Sets the value of field 'SplashPlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.ChrClassUIDisplay self
function row:SetSplashPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'SplashPlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetSplashPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'SplashPlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Table container for ChrClassUIDisplay (Build 12.1.5.69594).
---@class dbc.Table.v1215.ChrClassUIDisplay : DbcTable
---@field [integer] dbc.row.v1215.ChrClassUIDisplay
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ChrClassUIDisplay
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ChrClassUIDisplay|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ChrClassUIDisplay
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ChrClassUIDisplay>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ChrClassUIDisplay[]
function tbl:GetByRelation(foreign_id) end

return {}
