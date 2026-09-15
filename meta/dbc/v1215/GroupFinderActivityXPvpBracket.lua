---@meta
-- Generated LuaLS annotations for GroupFinderActivityXPvpBracket (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GroupFinderActivityXPvpBracket in build 12.1.5.69594.
---@class dbc.row.v1215.GroupFinderActivityXPvpBracket : RowProxy
---@field ID integer
---@field GroupFinderActivityID integer
---@field PVPBracketTypeID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GroupFinderActivityXPvpBracket self
function row:SetID(value) end

---Gets the value of field 'GroupFinderActivityID'.
---@return integer value
function row:GetGroupFinderActivityID() end

---Sets the value of field 'GroupFinderActivityID'.
---@param value integer
---@return dbc.row.v1215.GroupFinderActivityXPvpBracket self
function row:SetGroupFinderActivityID(value) end

---Navigates foreign relationship to 'GroupFinderActivity' via 'GroupFinderActivityID'.
---@return dbc.row.v1215.GroupFinderActivity|nil
function row:GetGroupFinderActivity() end

---Creates a related 'GroupFinderActivity' row and automatically links 'GroupFinderActivityID'.
---@param data? table
---@return dbc.row.v1215.GroupFinderActivity
function row:CreateRelated(data) end

---Gets the value of field 'PVPBracketTypeID'.
---@return integer value
function row:GetPVPBracketTypeID() end

---Sets the value of field 'PVPBracketTypeID'.
---@param value integer
---@return dbc.row.v1215.GroupFinderActivityXPvpBracket self
function row:SetPVPBracketTypeID(value) end

---Navigates foreign relationship to 'PVPBracketTypes' via 'PVPBracketTypeID'.
---@return dbc.row.v1215.PVPBracketTypes|nil
function row:GetPVPBracketType() end

---Creates a related 'PVPBracketTypes' row and automatically links 'PVPBracketTypeID'.
---@param data? table
---@return dbc.row.v1215.PVPBracketTypes
function row:CreateRelated(data) end

---Table container for GroupFinderActivityXPvpBracket (Build 12.1.5.69594).
---@class dbc.Table.v1215.GroupFinderActivityXPvpBracket : DbcTable
---@field [integer] dbc.row.v1215.GroupFinderActivityXPvpBracket
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GroupFinderActivityXPvpBracket
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GroupFinderActivityXPvpBracket|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GroupFinderActivityXPvpBracket
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GroupFinderActivityXPvpBracket>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GroupFinderActivityXPvpBracket[]
function tbl:GetByRelation(foreign_id) end

return {}
