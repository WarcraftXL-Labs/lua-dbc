---@meta
-- Generated LuaLS annotations for AreaGroup (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of AreaGroup in build 3.3.5.12340.
---@class dbc.row.v335.AreaGroup : RowProxy
---@field ID integer
---@field AreaID integer[]
---@field NextAreaID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.AreaGroup self
function row:SetID(value) end

---Gets the value of field 'AreaID'.
---@return integer[] value
function row:GetAreaID() end

---Sets the value of field 'AreaID'.
---@param value integer[]
---@return dbc.row.v335.AreaGroup self
function row:SetAreaID(value) end

---Gets element at 1-based index in 'AreaID'.
---@param index integer
---@return integer value
function row:GetAreaIDItem(index) end

---Navigates foreign relationship to 'AreaTable' via 'AreaID'.
---@return dbc.row.v335.AreaTable|nil
function row:GetArea() end

---Creates a related 'AreaTable' row and automatically links 'AreaID'.
---@param data? table
---@return dbc.row.v335.AreaTable
function row:CreateRelated(data) end

---Gets the value of field 'NextAreaID'.
---@return integer value
function row:GetNextAreaID() end

---Sets the value of field 'NextAreaID'.
---@param value integer
---@return dbc.row.v335.AreaGroup self
function row:SetNextAreaID(value) end

---Navigates foreign relationship to 'AreaGroup' via 'NextAreaID'.
---@return dbc.row.v335.AreaGroup|nil
function row:GetNextArea() end

---Creates a related 'AreaGroup' row and automatically links 'NextAreaID'.
---@param data? table
---@return dbc.row.v335.AreaGroup
function row:CreateRelated(data) end

---Table container for AreaGroup (Build 3.3.5.12340).
---@class dbc.Table.v335.AreaGroup : DbcTable
---@field [integer] dbc.row.v335.AreaGroup
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.AreaGroup
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.AreaGroup|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.AreaGroup
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.AreaGroup>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.AreaGroup[]
function tbl:GetByRelation(foreign_id) end

return {}
