---@meta
-- Generated LuaLS annotations for Stationery (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of Stationery in build 12.1.5.69594.
---@class dbc.row.v1215.Stationery : RowProxy
---@field ID integer
---@field ItemID integer
---@field Flags integer
---@field TextureFileDataID integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.Stationery self
function row:SetID(value) end

---Gets the value of field 'ItemID'.
---@return integer value
function row:GetItemID() end

---Sets the value of field 'ItemID'.
---@param value integer
---@return dbc.row.v1215.Stationery self
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
---@return dbc.row.v1215.Stationery self
function row:SetFlags(value) end

---Gets the value of field 'TextureFileDataID'.
---@return integer[] value
function row:GetTextureFileDataID() end

---Sets the value of field 'TextureFileDataID'.
---@param value integer[]
---@return dbc.row.v1215.Stationery self
function row:SetTextureFileDataID(value) end

---Gets element at 1-based index in 'TextureFileDataID'.
---@param index integer
---@return integer value
function row:GetTextureFileDataIDItem(index) end

---Navigates foreign relationship to 'FileData' via 'TextureFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetTextureFileData() end

---Creates a related 'FileData' row and automatically links 'TextureFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Table container for Stationery (Build 12.1.5.69594).
---@class dbc.Table.v1215.Stationery : DbcTable
---@field [integer] dbc.row.v1215.Stationery
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.Stationery
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.Stationery|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.Stationery
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.Stationery>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.Stationery[]
function tbl:GetByRelation(foreign_id) end

return {}
