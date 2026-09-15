---@meta
-- Generated LuaLS annotations for ChrCustClientChoiceConversion (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ChrCustClientChoiceConversion in build 12.1.5.69594.
---@class dbc.row.v1215.ChrCustClientChoiceConversion : RowProxy
---@field ID integer
---@field Field_9_0_1_34365_001 integer
---@field ChrCustomizationReqID integer
---@field Field_9_0_1_34365_003 integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ChrCustClientChoiceConversion self
function row:SetID(value) end

---Gets the value of field 'Field_9_0_1_34365_001'.
---@return integer value
function row:GetField_9_0_1_34365_001() end

---Sets the value of field 'Field_9_0_1_34365_001'.
---@param value integer
---@return dbc.row.v1215.ChrCustClientChoiceConversion self
function row:SetField_9_0_1_34365_001(value) end

---Gets the value of field 'ChrCustomizationReqID'.
---@return integer value
function row:GetChrCustomizationReqID() end

---Sets the value of field 'ChrCustomizationReqID'.
---@param value integer
---@return dbc.row.v1215.ChrCustClientChoiceConversion self
function row:SetChrCustomizationReqID(value) end

---Navigates foreign relationship to 'ChrCustomizationReq' via 'ChrCustomizationReqID'.
---@return dbc.row.v1215.ChrCustomizationReq|nil
function row:GetChrCustomizationReq() end

---Creates a related 'ChrCustomizationReq' row and automatically links 'ChrCustomizationReqID'.
---@param data? table
---@return dbc.row.v1215.ChrCustomizationReq
function row:CreateRelated(data) end

---Gets the value of field 'Field_9_0_1_34365_003'.
---@return integer value
function row:GetField_9_0_1_34365_003() end

---Sets the value of field 'Field_9_0_1_34365_003'.
---@param value integer
---@return dbc.row.v1215.ChrCustClientChoiceConversion self
function row:SetField_9_0_1_34365_003(value) end

---Table container for ChrCustClientChoiceConversion (Build 12.1.5.69594).
---@class dbc.Table.v1215.ChrCustClientChoiceConversion : DbcTable
---@field [integer] dbc.row.v1215.ChrCustClientChoiceConversion
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ChrCustClientChoiceConversion
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ChrCustClientChoiceConversion|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ChrCustClientChoiceConversion
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ChrCustClientChoiceConversion>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ChrCustClientChoiceConversion[]
function tbl:GetByRelation(foreign_id) end

return {}
