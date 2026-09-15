---@meta
-- Generated LuaLS annotations for GameObjectLabel (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GameObjectLabel in build 12.1.5.69594.
---@class dbc.row.v1215.GameObjectLabel : RowProxy
---@field ID integer
---@field LabelID integer
---@field GameObjectID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GameObjectLabel self
function row:SetID(value) end

---Gets the value of field 'LabelID'.
---@return integer value
function row:GetLabelID() end

---Sets the value of field 'LabelID'.
---@param value integer
---@return dbc.row.v1215.GameObjectLabel self
function row:SetLabelID(value) end

---Navigates foreign relationship to 'Label' via 'LabelID'.
---@return dbc.row.v1215.Label|nil
function row:GetLabel() end

---Creates a related 'Label' row and automatically links 'LabelID'.
---@param data? table
---@return dbc.row.v1215.Label
function row:CreateRelated(data) end

---Gets the value of field 'GameObjectID'.
---@return integer value
function row:GetGameObjectID() end

---Sets the value of field 'GameObjectID'.
---@param value integer
---@return dbc.row.v1215.GameObjectLabel self
function row:SetGameObjectID(value) end

---Navigates foreign relationship to 'GameObjects' via 'GameObjectID'.
---@return dbc.row.v1215.GameObjects|nil
function row:GetGameObject() end

---Creates a related 'GameObjects' row and automatically links 'GameObjectID'.
---@param data? table
---@return dbc.row.v1215.GameObjects
function row:CreateRelated(data) end

---Table container for GameObjectLabel (Build 12.1.5.69594).
---@class dbc.Table.v1215.GameObjectLabel : DbcTable
---@field [integer] dbc.row.v1215.GameObjectLabel
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GameObjectLabel
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GameObjectLabel|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GameObjectLabel
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GameObjectLabel>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GameObjectLabel[]
function tbl:GetByRelation(foreign_id) end

return {}
