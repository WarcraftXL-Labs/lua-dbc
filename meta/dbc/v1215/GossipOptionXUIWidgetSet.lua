---@meta
-- Generated LuaLS annotations for GossipOptionXUIWidgetSet (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GossipOptionXUIWidgetSet in build 12.1.5.69594.
---@class dbc.row.v1215.GossipOptionXUIWidgetSet : RowProxy
---@field ID integer
---@field UiWidgetSetID integer
---@field WidgetType integer
---@field GossipNPCOptionID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GossipOptionXUIWidgetSet self
function row:SetID(value) end

---Gets the value of field 'UiWidgetSetID'.
---@return integer value
function row:GetUiWidgetSetID() end

---Sets the value of field 'UiWidgetSetID'.
---@param value integer
---@return dbc.row.v1215.GossipOptionXUIWidgetSet self
function row:SetUiWidgetSetID(value) end

---Navigates foreign relationship to 'UiWidgetSet' via 'UiWidgetSetID'.
---@return dbc.row.v1215.UiWidgetSet|nil
function row:GetUiWidgetSet() end

---Creates a related 'UiWidgetSet' row and automatically links 'UiWidgetSetID'.
---@param data? table
---@return dbc.row.v1215.UiWidgetSet
function row:CreateRelated(data) end

---Gets the value of field 'WidgetType'.
---@return integer value
function row:GetWidgetType() end

---Sets the value of field 'WidgetType'.
---@param value integer
---@return dbc.row.v1215.GossipOptionXUIWidgetSet self
function row:SetWidgetType(value) end

---Gets the value of field 'GossipNPCOptionID'.
---@return integer value
function row:GetGossipNPCOptionID() end

---Sets the value of field 'GossipNPCOptionID'.
---@param value integer
---@return dbc.row.v1215.GossipOptionXUIWidgetSet self
function row:SetGossipNPCOptionID(value) end

---Navigates foreign relationship to 'GossipNPCOption' via 'GossipNPCOptionID'.
---@return dbc.row.v1215.GossipNPCOption|nil
function row:GetGossipNPCOption() end

---Creates a related 'GossipNPCOption' row and automatically links 'GossipNPCOptionID'.
---@param data? table
---@return dbc.row.v1215.GossipNPCOption
function row:CreateRelated(data) end

---Table container for GossipOptionXUIWidgetSet (Build 12.1.5.69594).
---@class dbc.Table.v1215.GossipOptionXUIWidgetSet : DbcTable
---@field [integer] dbc.row.v1215.GossipOptionXUIWidgetSet
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GossipOptionXUIWidgetSet
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GossipOptionXUIWidgetSet|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GossipOptionXUIWidgetSet
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GossipOptionXUIWidgetSet>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GossipOptionXUIWidgetSet[]
function tbl:GetByRelation(foreign_id) end

return {}
