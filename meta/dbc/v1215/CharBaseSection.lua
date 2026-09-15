---@meta
-- Generated LuaLS annotations for CharBaseSection (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CharBaseSection in build 12.1.5.69594.
---@class dbc.row.v1215.CharBaseSection : RowProxy
---@field ID integer
---@field LayoutResType integer
---@field VariationEnum integer
---@field ResolutionVariationEnum integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CharBaseSection self
function row:SetID(value) end

---Gets the value of field 'LayoutResType'.
---@return integer value
function row:GetLayoutResType() end

---Sets the value of field 'LayoutResType'.
---@param value integer
---@return dbc.row.v1215.CharBaseSection self
function row:SetLayoutResType(value) end

---Gets the value of field 'VariationEnum'.
---@return integer value
function row:GetVariationEnum() end

---Sets the value of field 'VariationEnum'.
---@param value integer
---@return dbc.row.v1215.CharBaseSection self
function row:SetVariationEnum(value) end

---Gets the value of field 'ResolutionVariationEnum'.
---@return integer value
function row:GetResolutionVariationEnum() end

---Sets the value of field 'ResolutionVariationEnum'.
---@param value integer
---@return dbc.row.v1215.CharBaseSection self
function row:SetResolutionVariationEnum(value) end

---Table container for CharBaseSection (Build 12.1.5.69594).
---@class dbc.Table.v1215.CharBaseSection : DbcTable
---@field [integer] dbc.row.v1215.CharBaseSection
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CharBaseSection
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CharBaseSection|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CharBaseSection
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CharBaseSection>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CharBaseSection[]
function tbl:GetByRelation(foreign_id) end

return {}
