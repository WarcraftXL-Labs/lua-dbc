---@meta
-- Generated LuaLS annotations for FactionGroup (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of FactionGroup in build 3.3.5.12340.
---@class dbc.row.v335.FactionGroup : RowProxy
---@field ID integer
---@field MaskID integer
---@field InternalName string
---@field Name_lang string

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.FactionGroup self
function row:SetID(value) end

---Gets the value of field 'MaskID'.
---@return integer value
function row:GetMaskID() end

---Sets the value of field 'MaskID'.
---@param value integer
---@return dbc.row.v335.FactionGroup self
function row:SetMaskID(value) end

---Navigates foreign relationship to 'Mask' via 'MaskID'.
---@return dbc.row.v335.Mask|nil
function row:GetMask() end

---Creates a related 'Mask' row and automatically links 'MaskID'.
---@param data? table
---@return dbc.row.v335.Mask
function row:CreateRelated(data) end

---Gets the value of field 'InternalName'.
---@return string value
function row:GetInternalName() end

---Sets the value of field 'InternalName'.
---@param value string
---@return dbc.row.v335.FactionGroup self
function row:SetInternalName(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v335.FactionGroup self
function row:SetName_lang(value) end

---Table container for FactionGroup (Build 3.3.5.12340).
---@class dbc.Table.v335.FactionGroup : DbcTable
---@field [integer] dbc.row.v335.FactionGroup
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.FactionGroup
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.FactionGroup|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.FactionGroup
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.FactionGroup>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.FactionGroup[]
function tbl:GetByRelation(foreign_id) end

return {}
