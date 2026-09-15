---@meta
-- Generated LuaLS annotations for Toy (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of Toy in build 12.1.5.69594.
---@class dbc.row.v1215.Toy : RowProxy
---@field SourceText_lang string
---@field ID integer
---@field ItemID integer
---@field Flags integer
---@field SourceTypeEnum integer

local row = {}

---Gets the value of field 'SourceText_lang'.
---@return string value
function row:GetSourceText_lang() end

---Sets the value of field 'SourceText_lang'.
---@param value string
---@return dbc.row.v1215.Toy self
function row:SetSourceText_lang(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.Toy self
function row:SetID(value) end

---Gets the value of field 'ItemID'.
---@return integer value
function row:GetItemID() end

---Sets the value of field 'ItemID'.
---@param value integer
---@return dbc.row.v1215.Toy self
function row:SetItemID(value) end

---Navigates foreign relationship to 'Item' via 'ItemID'.
---@return dbc.row.v1215.Item|nil
function row:GetItem() end

---Creates a related 'Item' row and automatically links 'ItemID'.
---@param data? table
---@return dbc.row.v1215.Item
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.Toy self
function row:SetFlags(value) end

---Gets the value of field 'SourceTypeEnum'.
---@return integer value
function row:GetSourceTypeEnum() end

---Sets the value of field 'SourceTypeEnum'.
---@param value integer
---@return dbc.row.v1215.Toy self
function row:SetSourceTypeEnum(value) end

---Table container for Toy (Build 12.1.5.69594).
---@class dbc.Table.v1215.Toy : DbcTable
---@field [integer] dbc.row.v1215.Toy
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.Toy
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.Toy|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.Toy
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.Toy>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.Toy[]
function tbl:GetByRelation(foreign_id) end

return {}
