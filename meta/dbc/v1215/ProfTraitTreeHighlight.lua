---@meta
-- Generated LuaLS annotations for ProfTraitTreeHighlight (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ProfTraitTreeHighlight in build 12.1.5.69594.
---@class dbc.row.v1215.ProfTraitTreeHighlight : RowProxy
---@field ID integer
---@field Description_lang string
---@field OrderIndex integer
---@field ProfTraitTreeID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ProfTraitTreeHighlight self
function row:SetID(value) end

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v1215.ProfTraitTreeHighlight self
function row:SetDescription_lang(value) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.ProfTraitTreeHighlight self
function row:SetOrderIndex(value) end

---Gets the value of field 'ProfTraitTreeID'.
---@return integer value
function row:GetProfTraitTreeID() end

---Sets the value of field 'ProfTraitTreeID'.
---@param value integer
---@return dbc.row.v1215.ProfTraitTreeHighlight self
function row:SetProfTraitTreeID(value) end

---Navigates foreign relationship to 'ProfTraitTree' via 'ProfTraitTreeID'.
---@return dbc.row.v1215.ProfTraitTree|nil
function row:GetProfTraitTree() end

---Creates a related 'ProfTraitTree' row and automatically links 'ProfTraitTreeID'.
---@param data? table
---@return dbc.row.v1215.ProfTraitTree
function row:CreateRelated(data) end

---Table container for ProfTraitTreeHighlight (Build 12.1.5.69594).
---@class dbc.Table.v1215.ProfTraitTreeHighlight : DbcTable
---@field [integer] dbc.row.v1215.ProfTraitTreeHighlight
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ProfTraitTreeHighlight
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ProfTraitTreeHighlight|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ProfTraitTreeHighlight
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ProfTraitTreeHighlight>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ProfTraitTreeHighlight[]
function tbl:GetByRelation(foreign_id) end

return {}
