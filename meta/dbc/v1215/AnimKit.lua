---@meta
-- Generated LuaLS annotations for AnimKit (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of AnimKit in build 12.1.5.69594.
---@class dbc.row.v1215.AnimKit : RowProxy
---@field ID integer
---@field OneShotDuration integer
---@field OneShotStopAnimKitID integer
---@field LowDefAnimKitID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.AnimKit self
function row:SetID(value) end

---Gets the value of field 'OneShotDuration'.
---@return integer value
function row:GetOneShotDuration() end

---Sets the value of field 'OneShotDuration'.
---@param value integer
---@return dbc.row.v1215.AnimKit self
function row:SetOneShotDuration(value) end

---Gets the value of field 'OneShotStopAnimKitID'.
---@return integer value
function row:GetOneShotStopAnimKitID() end

---Sets the value of field 'OneShotStopAnimKitID'.
---@param value integer
---@return dbc.row.v1215.AnimKit self
function row:SetOneShotStopAnimKitID(value) end

---Navigates foreign relationship to 'AnimKit' via 'OneShotStopAnimKitID'.
---@return dbc.row.v1215.AnimKit|nil
function row:GetOneShotStopAnimKit() end

---Creates a related 'AnimKit' row and automatically links 'OneShotStopAnimKitID'.
---@param data? table
---@return dbc.row.v1215.AnimKit
function row:CreateRelated(data) end

---Gets the value of field 'LowDefAnimKitID'.
---@return integer value
function row:GetLowDefAnimKitID() end

---Sets the value of field 'LowDefAnimKitID'.
---@param value integer
---@return dbc.row.v1215.AnimKit self
function row:SetLowDefAnimKitID(value) end

---Navigates foreign relationship to 'AnimKit' via 'LowDefAnimKitID'.
---@return dbc.row.v1215.AnimKit|nil
function row:GetLowDefAnimKit() end

---Creates a related 'AnimKit' row and automatically links 'LowDefAnimKitID'.
---@param data? table
---@return dbc.row.v1215.AnimKit
function row:CreateRelated(data) end

---Table container for AnimKit (Build 12.1.5.69594).
---@class dbc.Table.v1215.AnimKit : DbcTable
---@field [integer] dbc.row.v1215.AnimKit
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.AnimKit
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.AnimKit|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.AnimKit
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.AnimKit>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.AnimKit[]
function tbl:GetByRelation(foreign_id) end

return {}
