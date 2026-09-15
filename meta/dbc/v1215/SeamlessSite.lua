---@meta
-- Generated LuaLS annotations for SeamlessSite (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SeamlessSite in build 12.1.5.69594.
---@class dbc.row.v1215.SeamlessSite : RowProxy
---@field ID integer
---@field MapID integer
---@field Field_12_1_0_68209_001 integer Perhaps these are flags

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SeamlessSite self
function row:SetID(value) end

---Gets the value of field 'MapID'.
---@return integer value
function row:GetMapID() end

---Sets the value of field 'MapID'.
---@param value integer
---@return dbc.row.v1215.SeamlessSite self
function row:SetMapID(value) end

---Navigates foreign relationship to 'Map' via 'MapID'.
---@return dbc.row.v1215.Map|nil
function row:GetMap() end

---Creates a related 'Map' row and automatically links 'MapID'.
---@param data? table
---@return dbc.row.v1215.Map
function row:CreateRelated(data) end

---Gets the value of field 'Field_12_1_0_68209_001'.
---@return integer value
function row:GetField_12_1_0_68209_001() end

---Sets the value of field 'Field_12_1_0_68209_001'.
---@param value integer
---@return dbc.row.v1215.SeamlessSite self
function row:SetField_12_1_0_68209_001(value) end

---Table container for SeamlessSite (Build 12.1.5.69594).
---@class dbc.Table.v1215.SeamlessSite : DbcTable
---@field [integer] dbc.row.v1215.SeamlessSite
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SeamlessSite
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SeamlessSite|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SeamlessSite
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SeamlessSite>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SeamlessSite[]
function tbl:GetByRelation(foreign_id) end

return {}
