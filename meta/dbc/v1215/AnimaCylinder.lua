---@meta
-- Generated LuaLS annotations for AnimaCylinder (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of AnimaCylinder in build 12.1.5.69594.
---@class dbc.row.v1215.AnimaCylinder : RowProxy
---@field ID integer
---@field AnimaCableID integer
---@field AnimaMaterialID integer
---@field Field_9_0_1_33978_002 number
---@field Field_9_0_1_33978_003 number
---@field Field_9_0_1_33978_004 integer
---@field Order integer per AnimaCableID
---@field Field_9_0_1_33978_006 integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.AnimaCylinder self
function row:SetID(value) end

---Gets the value of field 'AnimaCableID'.
---@return integer value
function row:GetAnimaCableID() end

---Sets the value of field 'AnimaCableID'.
---@param value integer
---@return dbc.row.v1215.AnimaCylinder self
function row:SetAnimaCableID(value) end

---Navigates foreign relationship to 'AnimaCable' via 'AnimaCableID'.
---@return dbc.row.v1215.AnimaCable|nil
function row:GetAnimaCable() end

---Creates a related 'AnimaCable' row and automatically links 'AnimaCableID'.
---@param data? table
---@return dbc.row.v1215.AnimaCable
function row:CreateRelated(data) end

---Gets the value of field 'AnimaMaterialID'.
---@return integer value
function row:GetAnimaMaterialID() end

---Sets the value of field 'AnimaMaterialID'.
---@param value integer
---@return dbc.row.v1215.AnimaCylinder self
function row:SetAnimaMaterialID(value) end

---Navigates foreign relationship to 'AnimaMaterial' via 'AnimaMaterialID'.
---@return dbc.row.v1215.AnimaMaterial|nil
function row:GetAnimaMaterial() end

---Creates a related 'AnimaMaterial' row and automatically links 'AnimaMaterialID'.
---@param data? table
---@return dbc.row.v1215.AnimaMaterial
function row:CreateRelated(data) end

---Gets the value of field 'Field_9_0_1_33978_002'.
---@return number value
function row:GetField_9_0_1_33978_002() end

---Sets the value of field 'Field_9_0_1_33978_002'.
---@param value number
---@return dbc.row.v1215.AnimaCylinder self
function row:SetField_9_0_1_33978_002(value) end

---Gets the value of field 'Field_9_0_1_33978_003'.
---@return number value
function row:GetField_9_0_1_33978_003() end

---Sets the value of field 'Field_9_0_1_33978_003'.
---@param value number
---@return dbc.row.v1215.AnimaCylinder self
function row:SetField_9_0_1_33978_003(value) end

---Gets the value of field 'Field_9_0_1_33978_004'.
---@return integer value
function row:GetField_9_0_1_33978_004() end

---Sets the value of field 'Field_9_0_1_33978_004'.
---@param value integer
---@return dbc.row.v1215.AnimaCylinder self
function row:SetField_9_0_1_33978_004(value) end

---Gets the value of field 'Order'.
---@return integer value
function row:GetOrder() end

---Sets the value of field 'Order'.
---@param value integer
---@return dbc.row.v1215.AnimaCylinder self
function row:SetOrder(value) end

---Gets the value of field 'Field_9_0_1_33978_006'.
---@return integer value
function row:GetField_9_0_1_33978_006() end

---Sets the value of field 'Field_9_0_1_33978_006'.
---@param value integer
---@return dbc.row.v1215.AnimaCylinder self
function row:SetField_9_0_1_33978_006(value) end

---Table container for AnimaCylinder (Build 12.1.5.69594).
---@class dbc.Table.v1215.AnimaCylinder : DbcTable
---@field [integer] dbc.row.v1215.AnimaCylinder
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.AnimaCylinder
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.AnimaCylinder|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.AnimaCylinder
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.AnimaCylinder>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.AnimaCylinder[]
function tbl:GetByRelation(foreign_id) end

return {}
