---@meta
-- Generated LuaLS annotations for QuestSort (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of QuestSort in build 12.1.5.69594.
---@class dbc.row.v1215.QuestSort : RowProxy
---@field ID integer
---@field SortName_lang string
---@field UiOrderIndex integer
---@field Flags integer HigherPriority = 1 (before this flag was introduced, client compared hardcoded ID == 344)

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.QuestSort self
function row:SetID(value) end

---Gets the value of field 'SortName_lang'.
---@return string value
function row:GetSortName_lang() end

---Sets the value of field 'SortName_lang'.
---@param value string
---@return dbc.row.v1215.QuestSort self
function row:SetSortName_lang(value) end

---Gets the value of field 'UiOrderIndex'.
---@return integer value
function row:GetUiOrderIndex() end

---Sets the value of field 'UiOrderIndex'.
---@param value integer
---@return dbc.row.v1215.QuestSort self
function row:SetUiOrderIndex(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.QuestSort self
function row:SetFlags(value) end

---Table container for QuestSort (Build 12.1.5.69594).
---@class dbc.Table.v1215.QuestSort : DbcTable
---@field [integer] dbc.row.v1215.QuestSort
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.QuestSort
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.QuestSort|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.QuestSort
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.QuestSort>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.QuestSort[]
function tbl:GetByRelation(foreign_id) end

return {}
