---@meta
-- Generated LuaLS annotations for CriteriaTree (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CriteriaTree in build 12.1.5.69594.
---@class dbc.row.v1215.CriteriaTree : RowProxy
---@field ID integer
---@field Description_lang string
---@field Parent integer
---@field Amount integer
---@field Operator integer
---@field CriteriaID integer
---@field OrderIndex integer
---@field Flags integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CriteriaTree self
function row:SetID(value) end

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v1215.CriteriaTree self
function row:SetDescription_lang(value) end

---Gets the value of field 'Parent'.
---@return integer value
function row:GetParent() end

---Sets the value of field 'Parent'.
---@param value integer
---@return dbc.row.v1215.CriteriaTree self
function row:SetParent(value) end

---Navigates foreign relationship to 'CriteriaTree' via 'Parent'.
---@return dbc.row.v1215.CriteriaTree|nil
function row:GetParent() end

---Creates a related 'CriteriaTree' row and automatically links 'Parent'.
---@param data? table
---@return dbc.row.v1215.CriteriaTree
function row:CreateRelated(data) end

---Gets the value of field 'Amount'.
---@return integer value
function row:GetAmount() end

---Sets the value of field 'Amount'.
---@param value integer
---@return dbc.row.v1215.CriteriaTree self
function row:SetAmount(value) end

---Gets the value of field 'Operator'.
---@return integer value
function row:GetOperator() end

---Sets the value of field 'Operator'.
---@param value integer
---@return dbc.row.v1215.CriteriaTree self
function row:SetOperator(value) end

---Gets the value of field 'CriteriaID'.
---@return integer value
function row:GetCriteriaID() end

---Sets the value of field 'CriteriaID'.
---@param value integer
---@return dbc.row.v1215.CriteriaTree self
function row:SetCriteriaID(value) end

---Navigates foreign relationship to 'Criteria' via 'CriteriaID'.
---@return dbc.row.v1215.Criteria|nil
function row:GetCriteria() end

---Creates a related 'Criteria' row and automatically links 'CriteriaID'.
---@param data? table
---@return dbc.row.v1215.Criteria
function row:CreateRelated(data) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.CriteriaTree self
function row:SetOrderIndex(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.CriteriaTree self
function row:SetFlags(value) end

---Table container for CriteriaTree (Build 12.1.5.69594).
---@class dbc.Table.v1215.CriteriaTree : DbcTable
---@field [integer] dbc.row.v1215.CriteriaTree
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CriteriaTree
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CriteriaTree|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CriteriaTree
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CriteriaTree>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CriteriaTree[]
function tbl:GetByRelation(foreign_id) end

return {}
