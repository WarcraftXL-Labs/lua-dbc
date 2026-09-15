---@meta
-- Generated LuaLS annotations for JournalInstanceEntrance (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of JournalInstanceEntrance in build 12.1.5.69594.
---@class dbc.row.v1215.JournalInstanceEntrance : RowProxy
---@field ID integer
---@field Position number[]
---@field MapID integer
---@field AreaTableID integer
---@field Faction integer Speculation: -1: both, 0: horde, 1: alliance, only seen on battle of dazaralor
---@field JournalInstanceID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.JournalInstanceEntrance self
function row:SetID(value) end

---Gets the value of field 'Position'.
---@return number[] value
function row:GetPosition() end

---Sets the value of field 'Position'.
---@param value number[]
---@return dbc.row.v1215.JournalInstanceEntrance self
function row:SetPosition(value) end

---Gets element at 1-based index in 'Position'.
---@param index integer
---@return number value
function row:GetPositionItem(index) end

---Gets the value of field 'MapID'.
---@return integer value
function row:GetMapID() end

---Sets the value of field 'MapID'.
---@param value integer
---@return dbc.row.v1215.JournalInstanceEntrance self
function row:SetMapID(value) end

---Navigates foreign relationship to 'Map' via 'MapID'.
---@return dbc.row.v1215.Map|nil
function row:GetMap() end

---Creates a related 'Map' row and automatically links 'MapID'.
---@param data? table
---@return dbc.row.v1215.Map
function row:CreateRelated(data) end

---Gets the value of field 'AreaTableID'.
---@return integer value
function row:GetAreaTableID() end

---Sets the value of field 'AreaTableID'.
---@param value integer
---@return dbc.row.v1215.JournalInstanceEntrance self
function row:SetAreaTableID(value) end

---Navigates foreign relationship to 'AreaTable' via 'AreaTableID'.
---@return dbc.row.v1215.AreaTable|nil
function row:GetAreaTable() end

---Creates a related 'AreaTable' row and automatically links 'AreaTableID'.
---@param data? table
---@return dbc.row.v1215.AreaTable
function row:CreateRelated(data) end

---Gets the value of field 'Faction'.
---@return integer value
function row:GetFaction() end

---Sets the value of field 'Faction'.
---@param value integer
---@return dbc.row.v1215.JournalInstanceEntrance self
function row:SetFaction(value) end

---Gets the value of field 'JournalInstanceID'.
---@return integer value
function row:GetJournalInstanceID() end

---Sets the value of field 'JournalInstanceID'.
---@param value integer
---@return dbc.row.v1215.JournalInstanceEntrance self
function row:SetJournalInstanceID(value) end

---Navigates foreign relationship to 'JournalInstance' via 'JournalInstanceID'.
---@return dbc.row.v1215.JournalInstance|nil
function row:GetJournalInstance() end

---Creates a related 'JournalInstance' row and automatically links 'JournalInstanceID'.
---@param data? table
---@return dbc.row.v1215.JournalInstance
function row:CreateRelated(data) end

---Table container for JournalInstanceEntrance (Build 12.1.5.69594).
---@class dbc.Table.v1215.JournalInstanceEntrance : DbcTable
---@field [integer] dbc.row.v1215.JournalInstanceEntrance
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.JournalInstanceEntrance
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.JournalInstanceEntrance|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.JournalInstanceEntrance
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.JournalInstanceEntrance>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.JournalInstanceEntrance[]
function tbl:GetByRelation(foreign_id) end

return {}
