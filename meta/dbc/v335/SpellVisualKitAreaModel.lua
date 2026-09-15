---@meta
-- Generated LuaLS annotations for SpellVisualKitAreaModel (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of SpellVisualKitAreaModel in build 3.3.5.12340.
---@class dbc.row.v335.SpellVisualKitAreaModel : RowProxy
---@field ID integer
---@field Name string
---@field EnumID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.SpellVisualKitAreaModel self
function row:SetID(value) end

---Gets the value of field 'Name'.
---@return string value
function row:GetName() end

---Sets the value of field 'Name'.
---@param value string
---@return dbc.row.v335.SpellVisualKitAreaModel self
function row:SetName(value) end

---Gets the value of field 'EnumID'.
---@return integer value
function row:GetEnumID() end

---Sets the value of field 'EnumID'.
---@param value integer
---@return dbc.row.v335.SpellVisualKitAreaModel self
function row:SetEnumID(value) end

---Navigates foreign relationship to 'Enum' via 'EnumID'.
---@return dbc.row.v335.Enum|nil
function row:GetEnum() end

---Creates a related 'Enum' row and automatically links 'EnumID'.
---@param data? table
---@return dbc.row.v335.Enum
function row:CreateRelated(data) end

---Table container for SpellVisualKitAreaModel (Build 3.3.5.12340).
---@class dbc.Table.v335.SpellVisualKitAreaModel : DbcTable
---@field [integer] dbc.row.v335.SpellVisualKitAreaModel
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.SpellVisualKitAreaModel
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.SpellVisualKitAreaModel|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.SpellVisualKitAreaModel
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.SpellVisualKitAreaModel>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.SpellVisualKitAreaModel[]
function tbl:GetByRelation(foreign_id) end

return {}
