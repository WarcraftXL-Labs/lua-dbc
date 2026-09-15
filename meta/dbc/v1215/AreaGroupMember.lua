---@meta
-- Generated LuaLS annotations for AreaGroupMember (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of AreaGroupMember in build 12.1.5.69594.
---@class dbc.row.v1215.AreaGroupMember : RowProxy
---@field ID integer
---@field AreaID integer
---@field AreaGroupID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.AreaGroupMember self
function row:SetID(value) end

---Gets the value of field 'AreaID'.
---@return integer value
function row:GetAreaID() end

---Sets the value of field 'AreaID'.
---@param value integer
---@return dbc.row.v1215.AreaGroupMember self
function row:SetAreaID(value) end

---Navigates foreign relationship to 'AreaTable' via 'AreaID'.
---@return dbc.row.v1215.AreaTable|nil
function row:GetArea() end

---Creates a related 'AreaTable' row and automatically links 'AreaID'.
---@param data? table
---@return dbc.row.v1215.AreaTable
function row:CreateRelated(data) end

---Gets the value of field 'AreaGroupID'.
---@return integer value
function row:GetAreaGroupID() end

---Sets the value of field 'AreaGroupID'.
---@param value integer
---@return dbc.row.v1215.AreaGroupMember self
function row:SetAreaGroupID(value) end

---Navigates foreign relationship to 'AreaGroup' via 'AreaGroupID'.
---@return dbc.row.v1215.AreaGroup|nil
function row:GetAreaGroup() end

---Creates a related 'AreaGroup' row and automatically links 'AreaGroupID'.
---@param data? table
---@return dbc.row.v1215.AreaGroup
function row:CreateRelated(data) end

---Table container for AreaGroupMember (Build 12.1.5.69594).
---@class dbc.Table.v1215.AreaGroupMember : DbcTable
---@field [integer] dbc.row.v1215.AreaGroupMember
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.AreaGroupMember
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.AreaGroupMember|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.AreaGroupMember
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.AreaGroupMember>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.AreaGroupMember[]
function tbl:GetByRelation(foreign_id) end

return {}
