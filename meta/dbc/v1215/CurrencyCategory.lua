---@meta
-- Generated LuaLS annotations for CurrencyCategory (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CurrencyCategory in build 12.1.5.69594.
---@class dbc.row.v1215.CurrencyCategory : RowProxy
---@field ID integer
---@field Name_lang string
---@field Flags integer
---@field ExpansionID integer
---@field ParentCategoryID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CurrencyCategory self
function row:SetID(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.CurrencyCategory self
function row:SetName_lang(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.CurrencyCategory self
function row:SetFlags(value) end

---Gets the value of field 'ExpansionID'.
---@return integer value
function row:GetExpansionID() end

---Sets the value of field 'ExpansionID'.
---@param value integer
---@return dbc.row.v1215.CurrencyCategory self
function row:SetExpansionID(value) end

---Navigates foreign relationship to 'Expansion' via 'ExpansionID'.
---@return dbc.row.v1215.Expansion|nil
function row:GetExpansion() end

---Creates a related 'Expansion' row and automatically links 'ExpansionID'.
---@param data? table
---@return dbc.row.v1215.Expansion
function row:CreateRelated(data) end

---Gets the value of field 'ParentCategoryID'.
---@return integer value
function row:GetParentCategoryID() end

---Sets the value of field 'ParentCategoryID'.
---@param value integer
---@return dbc.row.v1215.CurrencyCategory self
function row:SetParentCategoryID(value) end

---Navigates foreign relationship to 'CurrencyCategory' via 'ParentCategoryID'.
---@return dbc.row.v1215.CurrencyCategory|nil
function row:GetParentCategory() end

---Creates a related 'CurrencyCategory' row and automatically links 'ParentCategoryID'.
---@param data? table
---@return dbc.row.v1215.CurrencyCategory
function row:CreateRelated(data) end

---Table container for CurrencyCategory (Build 12.1.5.69594).
---@class dbc.Table.v1215.CurrencyCategory : DbcTable
---@field [integer] dbc.row.v1215.CurrencyCategory
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CurrencyCategory
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CurrencyCategory|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CurrencyCategory
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CurrencyCategory>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CurrencyCategory[]
function tbl:GetByRelation(foreign_id) end

return {}
