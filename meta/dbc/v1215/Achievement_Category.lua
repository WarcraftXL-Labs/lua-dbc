---@meta
-- Generated LuaLS annotations for Achievement_Category (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of Achievement_Category in build 12.1.5.69594.
---@class dbc.row.v1215.Achievement_Category : RowProxy
---@field Name_lang string
---@field ID integer
---@field Parent integer
---@field Ui_order integer

local row = {}

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.Achievement_Category self
function row:SetName_lang(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.Achievement_Category self
function row:SetID(value) end

---Gets the value of field 'Parent'.
---@return integer value
function row:GetParent() end

---Sets the value of field 'Parent'.
---@param value integer
---@return dbc.row.v1215.Achievement_Category self
function row:SetParent(value) end

---Navigates foreign relationship to 'Achievement_Category' via 'Parent'.
---@return dbc.row.v1215.Achievement_Category|nil
function row:GetParent() end

---Creates a related 'Achievement_Category' row and automatically links 'Parent'.
---@param data? table
---@return dbc.row.v1215.Achievement_Category
function row:CreateRelated(data) end

---Gets the value of field 'Ui_order'.
---@return integer value
function row:GetUi_order() end

---Sets the value of field 'Ui_order'.
---@param value integer
---@return dbc.row.v1215.Achievement_Category self
function row:SetUi_order(value) end

---Table container for Achievement_Category (Build 12.1.5.69594).
---@class dbc.Table.v1215.Achievement_Category : DbcTable
---@field [integer] dbc.row.v1215.Achievement_Category
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.Achievement_Category
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.Achievement_Category|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.Achievement_Category
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.Achievement_Category>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.Achievement_Category[]
function tbl:GetByRelation(foreign_id) end

return {}
