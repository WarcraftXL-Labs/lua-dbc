---@meta
-- Generated LuaLS annotations for PerksActivityXTag (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of PerksActivityXTag in build 12.1.5.69594.
---@class dbc.row.v1215.PerksActivityXTag : RowProxy
---@field ID integer
---@field PerksActivityTagID integer
---@field PerksActivityID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.PerksActivityXTag self
function row:SetID(value) end

---Gets the value of field 'PerksActivityTagID'.
---@return integer value
function row:GetPerksActivityTagID() end

---Sets the value of field 'PerksActivityTagID'.
---@param value integer
---@return dbc.row.v1215.PerksActivityXTag self
function row:SetPerksActivityTagID(value) end

---Navigates foreign relationship to 'PerksActivityTag' via 'PerksActivityTagID'.
---@return dbc.row.v1215.PerksActivityTag|nil
function row:GetPerksActivityTag() end

---Creates a related 'PerksActivityTag' row and automatically links 'PerksActivityTagID'.
---@param data? table
---@return dbc.row.v1215.PerksActivityTag
function row:CreateRelated(data) end

---Gets the value of field 'PerksActivityID'.
---@return integer value
function row:GetPerksActivityID() end

---Sets the value of field 'PerksActivityID'.
---@param value integer
---@return dbc.row.v1215.PerksActivityXTag self
function row:SetPerksActivityID(value) end

---Navigates foreign relationship to 'PerksActivity' via 'PerksActivityID'.
---@return dbc.row.v1215.PerksActivity|nil
function row:GetPerksActivity() end

---Creates a related 'PerksActivity' row and automatically links 'PerksActivityID'.
---@param data? table
---@return dbc.row.v1215.PerksActivity
function row:CreateRelated(data) end

---Table container for PerksActivityXTag (Build 12.1.5.69594).
---@class dbc.Table.v1215.PerksActivityXTag : DbcTable
---@field [integer] dbc.row.v1215.PerksActivityXTag
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.PerksActivityXTag
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.PerksActivityXTag|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.PerksActivityXTag
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.PerksActivityXTag>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.PerksActivityXTag[]
function tbl:GetByRelation(foreign_id) end

return {}
