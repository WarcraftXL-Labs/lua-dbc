---@meta
-- Generated LuaLS annotations for BannedAddons (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of BannedAddons in build 3.3.5.12340.
---@class dbc.row.v335.BannedAddons : RowProxy
---@field ID integer
---@field NameMD5 integer[]
---@field VersionMD5 integer[]
---@field LastModified integer
---@field Flags integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.BannedAddons self
function row:SetID(value) end

---Gets the value of field 'NameMD5'.
---@return integer[] value
function row:GetNameMD5() end

---Sets the value of field 'NameMD5'.
---@param value integer[]
---@return dbc.row.v335.BannedAddons self
function row:SetNameMD5(value) end

---Gets element at 1-based index in 'NameMD5'.
---@param index integer
---@return integer value
function row:GetNameMD5Item(index) end

---Gets the value of field 'VersionMD5'.
---@return integer[] value
function row:GetVersionMD5() end

---Sets the value of field 'VersionMD5'.
---@param value integer[]
---@return dbc.row.v335.BannedAddons self
function row:SetVersionMD5(value) end

---Gets element at 1-based index in 'VersionMD5'.
---@param index integer
---@return integer value
function row:GetVersionMD5Item(index) end

---Gets the value of field 'LastModified'.
---@return integer value
function row:GetLastModified() end

---Sets the value of field 'LastModified'.
---@param value integer
---@return dbc.row.v335.BannedAddons self
function row:SetLastModified(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v335.BannedAddons self
function row:SetFlags(value) end

---Table container for BannedAddons (Build 3.3.5.12340).
---@class dbc.Table.v335.BannedAddons : DbcTable
---@field [integer] dbc.row.v335.BannedAddons
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.BannedAddons
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.BannedAddons|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.BannedAddons
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.BannedAddons>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.BannedAddons[]
function tbl:GetByRelation(foreign_id) end

return {}
