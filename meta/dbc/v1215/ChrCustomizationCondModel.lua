---@meta
-- Generated LuaLS annotations for ChrCustomizationCondModel (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ChrCustomizationCondModel in build 12.1.5.69594.
---@class dbc.row.v1215.ChrCustomizationCondModel : RowProxy
---@field ID integer
---@field CreatureModelDataID integer
---@field Field_9_0_1_34081_001 integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationCondModel self
function row:SetID(value) end

---Gets the value of field 'CreatureModelDataID'.
---@return integer value
function row:GetCreatureModelDataID() end

---Sets the value of field 'CreatureModelDataID'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationCondModel self
function row:SetCreatureModelDataID(value) end

---Navigates foreign relationship to 'CreatureModelData' via 'CreatureModelDataID'.
---@return dbc.row.v1215.CreatureModelData|nil
function row:GetCreatureModelData() end

---Creates a related 'CreatureModelData' row and automatically links 'CreatureModelDataID'.
---@param data? table
---@return dbc.row.v1215.CreatureModelData
function row:CreateRelated(data) end

---Gets the value of field 'Field_9_0_1_34081_001'.
---@return integer[] value
function row:GetField_9_0_1_34081_001() end

---Sets the value of field 'Field_9_0_1_34081_001'.
---@param value integer[]
---@return dbc.row.v1215.ChrCustomizationCondModel self
function row:SetField_9_0_1_34081_001(value) end

---Gets element at 1-based index in 'Field_9_0_1_34081_001'.
---@param index integer
---@return integer value
function row:GetField_9_0_1_34081_001Item(index) end

---Table container for ChrCustomizationCondModel (Build 12.1.5.69594).
---@class dbc.Table.v1215.ChrCustomizationCondModel : DbcTable
---@field [integer] dbc.row.v1215.ChrCustomizationCondModel
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ChrCustomizationCondModel
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ChrCustomizationCondModel|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ChrCustomizationCondModel
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ChrCustomizationCondModel>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ChrCustomizationCondModel[]
function tbl:GetByRelation(foreign_id) end

return {}
