---@meta
-- Generated LuaLS annotations for AreaFarClipOverride (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of AreaFarClipOverride in build 12.1.5.69594.
---@class dbc.row.v1215.AreaFarClipOverride : RowProxy
---@field ID integer
---@field AreaID integer
---@field MinFarClip number
---@field MinHorizonStart number
---@field Flags integer &1: s_globals &= ~0x2000, &2: s_globals &= ~0x182

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.AreaFarClipOverride self
function row:SetID(value) end

---Gets the value of field 'AreaID'.
---@return integer value
function row:GetAreaID() end

---Sets the value of field 'AreaID'.
---@param value integer
---@return dbc.row.v1215.AreaFarClipOverride self
function row:SetAreaID(value) end

---Navigates foreign relationship to 'AreaTable' via 'AreaID'.
---@return dbc.row.v1215.AreaTable|nil
function row:GetArea() end

---Creates a related 'AreaTable' row and automatically links 'AreaID'.
---@param data? table
---@return dbc.row.v1215.AreaTable
function row:CreateRelated(data) end

---Gets the value of field 'MinFarClip'.
---@return number value
function row:GetMinFarClip() end

---Sets the value of field 'MinFarClip'.
---@param value number
---@return dbc.row.v1215.AreaFarClipOverride self
function row:SetMinFarClip(value) end

---Gets the value of field 'MinHorizonStart'.
---@return number value
function row:GetMinHorizonStart() end

---Sets the value of field 'MinHorizonStart'.
---@param value number
---@return dbc.row.v1215.AreaFarClipOverride self
function row:SetMinHorizonStart(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.AreaFarClipOverride self
function row:SetFlags(value) end

---Table container for AreaFarClipOverride (Build 12.1.5.69594).
---@class dbc.Table.v1215.AreaFarClipOverride : DbcTable
---@field [integer] dbc.row.v1215.AreaFarClipOverride
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.AreaFarClipOverride
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.AreaFarClipOverride|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.AreaFarClipOverride
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.AreaFarClipOverride>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.AreaFarClipOverride[]
function tbl:GetByRelation(foreign_id) end

return {}
