---@meta
-- Generated LuaLS annotations for Cfg_Categories (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of Cfg_Categories in build 12.1.5.69594.
---@class dbc.row.v1215.Cfg_Categories : RowProxy
---@field ID integer
---@field Name_lang string
---@field LocaleMask integer
---@field Create_charsetMask integer
---@field Existing_charsetMask integer
---@field Flags integer
---@field Order integer GetAvailableCategories(): smaller goes first. if equal, sort by ID.

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.Cfg_Categories self
function row:SetID(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.Cfg_Categories self
function row:SetName_lang(value) end

---Gets the value of field 'LocaleMask'.
---@return integer value
function row:GetLocaleMask() end

---Sets the value of field 'LocaleMask'.
---@param value integer
---@return dbc.row.v1215.Cfg_Categories self
function row:SetLocaleMask(value) end

---Gets the value of field 'Create_charsetMask'.
---@return integer value
function row:GetCreate_charsetMask() end

---Sets the value of field 'Create_charsetMask'.
---@param value integer
---@return dbc.row.v1215.Cfg_Categories self
function row:SetCreate_charsetMask(value) end

---Gets the value of field 'Existing_charsetMask'.
---@return integer value
function row:GetExisting_charsetMask() end

---Sets the value of field 'Existing_charsetMask'.
---@param value integer
---@return dbc.row.v1215.Cfg_Categories self
function row:SetExisting_charsetMask(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.Cfg_Categories self
function row:SetFlags(value) end

---Gets the value of field 'Order'.
---@return integer value
function row:GetOrder() end

---Sets the value of field 'Order'.
---@param value integer
---@return dbc.row.v1215.Cfg_Categories self
function row:SetOrder(value) end

---Table container for Cfg_Categories (Build 12.1.5.69594).
---@class dbc.Table.v1215.Cfg_Categories : DbcTable
---@field [integer] dbc.row.v1215.Cfg_Categories
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.Cfg_Categories
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.Cfg_Categories|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.Cfg_Categories
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.Cfg_Categories>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.Cfg_Categories[]
function tbl:GetByRelation(foreign_id) end

return {}
