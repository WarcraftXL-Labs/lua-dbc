---@meta
-- Generated LuaLS annotations for NodeTemplateXPinTemplate (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of NodeTemplateXPinTemplate in build 12.1.5.69594.
---@class dbc.row.v1215.NodeTemplateXPinTemplate : RowProxy
---@field ID integer
---@field NodeTemplateID integer
---@field PinTemplateID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.NodeTemplateXPinTemplate self
function row:SetID(value) end

---Gets the value of field 'NodeTemplateID'.
---@return integer value
function row:GetNodeTemplateID() end

---Sets the value of field 'NodeTemplateID'.
---@param value integer
---@return dbc.row.v1215.NodeTemplateXPinTemplate self
function row:SetNodeTemplateID(value) end

---Navigates foreign relationship to 'NodeTemplate' via 'NodeTemplateID'.
---@return dbc.row.v1215.NodeTemplate|nil
function row:GetNodeTemplate() end

---Creates a related 'NodeTemplate' row and automatically links 'NodeTemplateID'.
---@param data? table
---@return dbc.row.v1215.NodeTemplate
function row:CreateRelated(data) end

---Gets the value of field 'PinTemplateID'.
---@return integer value
function row:GetPinTemplateID() end

---Sets the value of field 'PinTemplateID'.
---@param value integer
---@return dbc.row.v1215.NodeTemplateXPinTemplate self
function row:SetPinTemplateID(value) end

---Navigates foreign relationship to 'PinTemplate' via 'PinTemplateID'.
---@return dbc.row.v1215.PinTemplate|nil
function row:GetPinTemplate() end

---Creates a related 'PinTemplate' row and automatically links 'PinTemplateID'.
---@param data? table
---@return dbc.row.v1215.PinTemplate
function row:CreateRelated(data) end

---Table container for NodeTemplateXPinTemplate (Build 12.1.5.69594).
---@class dbc.Table.v1215.NodeTemplateXPinTemplate : DbcTable
---@field [integer] dbc.row.v1215.NodeTemplateXPinTemplate
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.NodeTemplateXPinTemplate
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.NodeTemplateXPinTemplate|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.NodeTemplateXPinTemplate
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.NodeTemplateXPinTemplate>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.NodeTemplateXPinTemplate[]
function tbl:GetByRelation(foreign_id) end

return {}
