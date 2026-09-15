---@meta
-- Generated LuaLS annotations for ItemSubClassMask (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ItemSubClassMask in build 12.1.5.69594.
---@class dbc.row.v1215.ItemSubClassMask : RowProxy
---@field ID integer
---@field Name_lang string
---@field ClassID integer
---@field Mask integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ItemSubClassMask self
function row:SetID(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.ItemSubClassMask self
function row:SetName_lang(value) end

---Gets the value of field 'ClassID'.
---@return integer value
function row:GetClassID() end

---Sets the value of field 'ClassID'.
---@param value integer
---@return dbc.row.v1215.ItemSubClassMask self
function row:SetClassID(value) end

---Navigates foreign relationship to 'ItemClass' via 'ClassID'.
---@return dbc.row.v1215.ItemClass|nil
function row:GetClass() end

---Creates a related 'ItemClass' row and automatically links 'ClassID'.
---@param data? table
---@return dbc.row.v1215.ItemClass
function row:CreateRelated(data) end

---Gets the value of field 'Mask'.
---@return integer value
function row:GetMask() end

---Sets the value of field 'Mask'.
---@param value integer
---@return dbc.row.v1215.ItemSubClassMask self
function row:SetMask(value) end

---Table container for ItemSubClassMask (Build 12.1.5.69594).
---@class dbc.Table.v1215.ItemSubClassMask : DbcTable
---@field [integer] dbc.row.v1215.ItemSubClassMask
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ItemSubClassMask
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ItemSubClassMask|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ItemSubClassMask
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ItemSubClassMask>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ItemSubClassMask[]
function tbl:GetByRelation(foreign_id) end

return {}
