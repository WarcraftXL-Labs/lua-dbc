---@meta
-- Generated LuaLS annotations for ChrCustomizationReqChoice (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ChrCustomizationReqChoice in build 12.1.5.69594.
---@class dbc.row.v1215.ChrCustomizationReqChoice : RowProxy
---@field ID integer
---@field ChrCustomizationChoiceID integer
---@field ChrCustomizationReqID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationReqChoice self
function row:SetID(value) end

---Gets the value of field 'ChrCustomizationChoiceID'.
---@return integer value
function row:GetChrCustomizationChoiceID() end

---Sets the value of field 'ChrCustomizationChoiceID'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationReqChoice self
function row:SetChrCustomizationChoiceID(value) end

---Navigates foreign relationship to 'ChrCustomizationChoice' via 'ChrCustomizationChoiceID'.
---@return dbc.row.v1215.ChrCustomizationChoice|nil
function row:GetChrCustomizationChoice() end

---Creates a related 'ChrCustomizationChoice' row and automatically links 'ChrCustomizationChoiceID'.
---@param data? table
---@return dbc.row.v1215.ChrCustomizationChoice
function row:CreateRelated(data) end

---Gets the value of field 'ChrCustomizationReqID'.
---@return integer value
function row:GetChrCustomizationReqID() end

---Sets the value of field 'ChrCustomizationReqID'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationReqChoice self
function row:SetChrCustomizationReqID(value) end

---Navigates foreign relationship to 'ChrCustomizationReq' via 'ChrCustomizationReqID'.
---@return dbc.row.v1215.ChrCustomizationReq|nil
function row:GetChrCustomizationReq() end

---Creates a related 'ChrCustomizationReq' row and automatically links 'ChrCustomizationReqID'.
---@param data? table
---@return dbc.row.v1215.ChrCustomizationReq
function row:CreateRelated(data) end

---Table container for ChrCustomizationReqChoice (Build 12.1.5.69594).
---@class dbc.Table.v1215.ChrCustomizationReqChoice : DbcTable
---@field [integer] dbc.row.v1215.ChrCustomizationReqChoice
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ChrCustomizationReqChoice
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ChrCustomizationReqChoice|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ChrCustomizationReqChoice
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ChrCustomizationReqChoice>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ChrCustomizationReqChoice[]
function tbl:GetByRelation(foreign_id) end

return {}
