---@meta
-- Generated LuaLS annotations for ItemFixupAction (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ItemFixupAction in build 12.1.5.69594.
---@class dbc.row.v1215.ItemFixupAction : RowProxy
---@field ID integer
---@field Field_10_2_0_51685_000 integer
---@field ItemFixupID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ItemFixupAction self
function row:SetID(value) end

---Gets the value of field 'Field_10_2_0_51685_000'.
---@return integer value
function row:GetField_10_2_0_51685_000() end

---Sets the value of field 'Field_10_2_0_51685_000'.
---@param value integer
---@return dbc.row.v1215.ItemFixupAction self
function row:SetField_10_2_0_51685_000(value) end

---Gets the value of field 'ItemFixupID'.
---@return integer value
function row:GetItemFixupID() end

---Sets the value of field 'ItemFixupID'.
---@param value integer
---@return dbc.row.v1215.ItemFixupAction self
function row:SetItemFixupID(value) end

---Navigates foreign relationship to 'ItemFixup' via 'ItemFixupID'.
---@return dbc.row.v1215.ItemFixup|nil
function row:GetItemFixup() end

---Creates a related 'ItemFixup' row and automatically links 'ItemFixupID'.
---@param data? table
---@return dbc.row.v1215.ItemFixup
function row:CreateRelated(data) end

---Table container for ItemFixupAction (Build 12.1.5.69594).
---@class dbc.Table.v1215.ItemFixupAction : DbcTable
---@field [integer] dbc.row.v1215.ItemFixupAction
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ItemFixupAction
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ItemFixupAction|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ItemFixupAction
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ItemFixupAction>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ItemFixupAction[]
function tbl:GetByRelation(foreign_id) end

return {}
