---@meta
-- Generated LuaLS annotations for ConditionalChrModel (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ConditionalChrModel in build 12.1.5.69594.
---@class dbc.row.v1215.ConditionalChrModel : RowProxy
---@field ID integer Both Meta and DB2 designate ChrModelID as ID field but it's not unique so that's wrong
---@field ChrModelID integer
---@field ChrCustomizationReqID integer
---@field PlayerConditionID integer
---@field Flags integer
---@field ChrCustomizationCategoryID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ConditionalChrModel self
function row:SetID(value) end

---Gets the value of field 'ChrModelID'.
---@return integer value
function row:GetChrModelID() end

---Sets the value of field 'ChrModelID'.
---@param value integer
---@return dbc.row.v1215.ConditionalChrModel self
function row:SetChrModelID(value) end

---Navigates foreign relationship to 'ChrModel' via 'ChrModelID'.
---@return dbc.row.v1215.ChrModel|nil
function row:GetChrModel() end

---Creates a related 'ChrModel' row and automatically links 'ChrModelID'.
---@param data? table
---@return dbc.row.v1215.ChrModel
function row:CreateRelated(data) end

---Gets the value of field 'ChrCustomizationReqID'.
---@return integer value
function row:GetChrCustomizationReqID() end

---Sets the value of field 'ChrCustomizationReqID'.
---@param value integer
---@return dbc.row.v1215.ConditionalChrModel self
function row:SetChrCustomizationReqID(value) end

---Navigates foreign relationship to 'ChrCustomizationReq' via 'ChrCustomizationReqID'.
---@return dbc.row.v1215.ChrCustomizationReq|nil
function row:GetChrCustomizationReq() end

---Creates a related 'ChrCustomizationReq' row and automatically links 'ChrCustomizationReqID'.
---@param data? table
---@return dbc.row.v1215.ChrCustomizationReq
function row:CreateRelated(data) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.ConditionalChrModel self
function row:SetPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.ConditionalChrModel self
function row:SetFlags(value) end

---Gets the value of field 'ChrCustomizationCategoryID'.
---@return integer value
function row:GetChrCustomizationCategoryID() end

---Sets the value of field 'ChrCustomizationCategoryID'.
---@param value integer
---@return dbc.row.v1215.ConditionalChrModel self
function row:SetChrCustomizationCategoryID(value) end

---Navigates foreign relationship to 'ChrCustomizationCategory' via 'ChrCustomizationCategoryID'.
---@return dbc.row.v1215.ChrCustomizationCategory|nil
function row:GetChrCustomizationCategory() end

---Creates a related 'ChrCustomizationCategory' row and automatically links 'ChrCustomizationCategoryID'.
---@param data? table
---@return dbc.row.v1215.ChrCustomizationCategory
function row:CreateRelated(data) end

---Table container for ConditionalChrModel (Build 12.1.5.69594).
---@class dbc.Table.v1215.ConditionalChrModel : DbcTable
---@field [integer] dbc.row.v1215.ConditionalChrModel
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ConditionalChrModel
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ConditionalChrModel|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ConditionalChrModel
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ConditionalChrModel>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ConditionalChrModel[]
function tbl:GetByRelation(foreign_id) end

return {}
