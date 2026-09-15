---@meta
-- Generated LuaLS annotations for ChrClassUIChrModelInfo (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ChrClassUIChrModelInfo in build 12.1.5.69594.
---@class dbc.row.v1215.ChrClassUIChrModelInfo : RowProxy
---@field ID integer
---@field ChrModel_9_0_1_35522_001Override number[] ChrModel::Field_9_0_1_35522_001
---@field ChrModelID integer
---@field ChrClassesID integer
---@field ChrCreateFacingOverride number ChrModel::ChrCreateFacing
---@field Field_11_1_0_58731_004 integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ChrClassUIChrModelInfo self
function row:SetID(value) end

---Gets the value of field 'ChrModel_9_0_1_35522_001Override'.
---@return number[] value
function row:GetChrModel_9_0_1_35522_001Override() end

---Sets the value of field 'ChrModel_9_0_1_35522_001Override'.
---@param value number[]
---@return dbc.row.v1215.ChrClassUIChrModelInfo self
function row:SetChrModel_9_0_1_35522_001Override(value) end

---Gets element at 1-based index in 'ChrModel_9_0_1_35522_001Override'.
---@param index integer
---@return number value
function row:GetChrModel_9_0_1_35522_001OverrideItem(index) end

---Gets the value of field 'ChrModelID'.
---@return integer value
function row:GetChrModelID() end

---Sets the value of field 'ChrModelID'.
---@param value integer
---@return dbc.row.v1215.ChrClassUIChrModelInfo self
function row:SetChrModelID(value) end

---Navigates foreign relationship to 'ChrModel' via 'ChrModelID'.
---@return dbc.row.v1215.ChrModel|nil
function row:GetChrModel() end

---Creates a related 'ChrModel' row and automatically links 'ChrModelID'.
---@param data? table
---@return dbc.row.v1215.ChrModel
function row:CreateRelated(data) end

---Gets the value of field 'ChrClassesID'.
---@return integer value
function row:GetChrClassesID() end

---Sets the value of field 'ChrClassesID'.
---@param value integer
---@return dbc.row.v1215.ChrClassUIChrModelInfo self
function row:SetChrClassesID(value) end

---Navigates foreign relationship to 'ChrClasses' via 'ChrClassesID'.
---@return dbc.row.v1215.ChrClasses|nil
function row:GetChrClasses() end

---Creates a related 'ChrClasses' row and automatically links 'ChrClassesID'.
---@param data? table
---@return dbc.row.v1215.ChrClasses
function row:CreateRelated(data) end

---Gets the value of field 'ChrCreateFacingOverride'.
---@return number value
function row:GetChrCreateFacingOverride() end

---Sets the value of field 'ChrCreateFacingOverride'.
---@param value number
---@return dbc.row.v1215.ChrClassUIChrModelInfo self
function row:SetChrCreateFacingOverride(value) end

---Gets the value of field 'Field_11_1_0_58731_004'.
---@return integer value
function row:GetField_11_1_0_58731_004() end

---Sets the value of field 'Field_11_1_0_58731_004'.
---@param value integer
---@return dbc.row.v1215.ChrClassUIChrModelInfo self
function row:SetField_11_1_0_58731_004(value) end

---Table container for ChrClassUIChrModelInfo (Build 12.1.5.69594).
---@class dbc.Table.v1215.ChrClassUIChrModelInfo : DbcTable
---@field [integer] dbc.row.v1215.ChrClassUIChrModelInfo
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ChrClassUIChrModelInfo
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ChrClassUIChrModelInfo|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ChrClassUIChrModelInfo
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ChrClassUIChrModelInfo>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ChrClassUIChrModelInfo[]
function tbl:GetByRelation(foreign_id) end

return {}
