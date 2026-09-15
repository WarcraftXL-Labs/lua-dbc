---@meta
-- Generated LuaLS annotations for Stationery (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of Stationery in build 3.3.5.12340.
---@class dbc.row.v335.Stationery : RowProxy
---@field ID integer
---@field ItemID integer
---@field Texture string
---@field Flags integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.Stationery self
function row:SetID(value) end

---Gets the value of field 'ItemID'.
---@return integer value
function row:GetItemID() end

---Sets the value of field 'ItemID'.
---@param value integer
---@return dbc.row.v335.Stationery self
function row:SetItemID(value) end

---Navigates foreign relationship to 'Item' via 'ItemID'.
---@return dbc.row.v335.Item|nil
function row:GetItem() end

---Creates a related 'Item' row and automatically links 'ItemID'.
---@param data? table
---@return dbc.row.v335.Item
function row:CreateRelated(data) end

---Gets the value of field 'Texture'.
---@return string value
function row:GetTexture() end

---Sets the value of field 'Texture'.
---@param value string
---@return dbc.row.v335.Stationery self
function row:SetTexture(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v335.Stationery self
function row:SetFlags(value) end

---Table container for Stationery (Build 3.3.5.12340).
---@class dbc.Table.v335.Stationery : DbcTable
---@field [integer] dbc.row.v335.Stationery
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.Stationery
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.Stationery|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.Stationery
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.Stationery>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.Stationery[]
function tbl:GetByRelation(foreign_id) end

return {}
