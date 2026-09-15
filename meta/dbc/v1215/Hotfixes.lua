---@meta
-- Generated LuaLS annotations for Hotfixes (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of Hotfixes in build 12.1.5.69594.
---@class dbc.row.v1215.Hotfixes : RowProxy
---@field ID integer
---@field Tablename string
---@field Object_ID integer
---@field Flags integer
---@field PushID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.Hotfixes self
function row:SetID(value) end

---Gets the value of field 'Tablename'.
---@return string value
function row:GetTablename() end

---Sets the value of field 'Tablename'.
---@param value string
---@return dbc.row.v1215.Hotfixes self
function row:SetTablename(value) end

---Gets the value of field 'Object_ID'.
---@return integer value
function row:GetObject_ID() end

---Sets the value of field 'Object_ID'.
---@param value integer
---@return dbc.row.v1215.Hotfixes self
function row:SetObject_ID(value) end

---Navigates foreign relationship to 'Object_' via 'Object_ID'.
---@return dbc.row.v1215.Object_|nil
function row:GetObject_() end

---Creates a related 'Object_' row and automatically links 'Object_ID'.
---@param data? table
---@return dbc.row.v1215.Object_
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.Hotfixes self
function row:SetFlags(value) end

---Gets the value of field 'PushID'.
---@return integer value
function row:GetPushID() end

---Sets the value of field 'PushID'.
---@param value integer
---@return dbc.row.v1215.Hotfixes self
function row:SetPushID(value) end

---Navigates foreign relationship to 'Push' via 'PushID'.
---@return dbc.row.v1215.Push|nil
function row:GetPush() end

---Creates a related 'Push' row and automatically links 'PushID'.
---@param data? table
---@return dbc.row.v1215.Push
function row:CreateRelated(data) end

---Table container for Hotfixes (Build 12.1.5.69594).
---@class dbc.Table.v1215.Hotfixes : DbcTable
---@field [integer] dbc.row.v1215.Hotfixes
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.Hotfixes
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.Hotfixes|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.Hotfixes
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.Hotfixes>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.Hotfixes[]
function tbl:GetByRelation(foreign_id) end

return {}
