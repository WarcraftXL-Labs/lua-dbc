---@meta
-- Generated LuaLS annotations for GroupFinderCategory (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GroupFinderCategory in build 12.1.5.69594.
---@class dbc.row.v1215.GroupFinderCategory : RowProxy
---@field ID integer
---@field Name_lang string
---@field Description_lang string
---@field OrderIndex integer
---@field Flags integer
---@field Field_12_0_5_66330_004 integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GroupFinderCategory self
function row:SetID(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.GroupFinderCategory self
function row:SetName_lang(value) end

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v1215.GroupFinderCategory self
function row:SetDescription_lang(value) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.GroupFinderCategory self
function row:SetOrderIndex(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.GroupFinderCategory self
function row:SetFlags(value) end

---Gets the value of field 'Field_12_0_5_66330_004'.
---@return integer value
function row:GetField_12_0_5_66330_004() end

---Sets the value of field 'Field_12_0_5_66330_004'.
---@param value integer
---@return dbc.row.v1215.GroupFinderCategory self
function row:SetField_12_0_5_66330_004(value) end

---Table container for GroupFinderCategory (Build 12.1.5.69594).
---@class dbc.Table.v1215.GroupFinderCategory : DbcTable
---@field [integer] dbc.row.v1215.GroupFinderCategory
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GroupFinderCategory
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GroupFinderCategory|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GroupFinderCategory
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GroupFinderCategory>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GroupFinderCategory[]
function tbl:GetByRelation(foreign_id) end

return {}
