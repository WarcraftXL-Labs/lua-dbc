---@meta
-- Generated LuaLS annotations for WbAccessControlList (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of WbAccessControlList in build 12.1.5.69594.
---@class dbc.row.v1215.WbAccessControlList : RowProxy
---@field ID integer
---@field URL string
---@field GrantFlags integer
---@field RevokeFlags integer
---@field WowEditInternal integer
---@field RegionID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.WbAccessControlList self
function row:SetID(value) end

---Gets the value of field 'URL'.
---@return string value
function row:GetURL() end

---Sets the value of field 'URL'.
---@param value string
---@return dbc.row.v1215.WbAccessControlList self
function row:SetURL(value) end

---Gets the value of field 'GrantFlags'.
---@return integer value
function row:GetGrantFlags() end

---Sets the value of field 'GrantFlags'.
---@param value integer
---@return dbc.row.v1215.WbAccessControlList self
function row:SetGrantFlags(value) end

---Gets the value of field 'RevokeFlags'.
---@return integer value
function row:GetRevokeFlags() end

---Sets the value of field 'RevokeFlags'.
---@param value integer
---@return dbc.row.v1215.WbAccessControlList self
function row:SetRevokeFlags(value) end

---Gets the value of field 'WowEditInternal'.
---@return integer value
function row:GetWowEditInternal() end

---Sets the value of field 'WowEditInternal'.
---@param value integer
---@return dbc.row.v1215.WbAccessControlList self
function row:SetWowEditInternal(value) end

---Gets the value of field 'RegionID'.
---@return integer value
function row:GetRegionID() end

---Sets the value of field 'RegionID'.
---@param value integer
---@return dbc.row.v1215.WbAccessControlList self
function row:SetRegionID(value) end

---Navigates foreign relationship to 'Region' via 'RegionID'.
---@return dbc.row.v1215.Region|nil
function row:GetRegion() end

---Creates a related 'Region' row and automatically links 'RegionID'.
---@param data? table
---@return dbc.row.v1215.Region
function row:CreateRelated(data) end

---Table container for WbAccessControlList (Build 12.1.5.69594).
---@class dbc.Table.v1215.WbAccessControlList : DbcTable
---@field [integer] dbc.row.v1215.WbAccessControlList
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.WbAccessControlList
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.WbAccessControlList|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.WbAccessControlList
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.WbAccessControlList>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.WbAccessControlList[]
function tbl:GetByRelation(foreign_id) end

return {}
