---@meta
-- Generated LuaLS annotations for CreatureDispXUiCamera (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CreatureDispXUiCamera in build 12.1.5.69594.
---@class dbc.row.v1215.CreatureDispXUiCamera : RowProxy
---@field ID integer
---@field CreatureDisplayInfoID integer
---@field UiCameraID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CreatureDispXUiCamera self
function row:SetID(value) end

---Gets the value of field 'CreatureDisplayInfoID'.
---@return integer value
function row:GetCreatureDisplayInfoID() end

---Sets the value of field 'CreatureDisplayInfoID'.
---@param value integer
---@return dbc.row.v1215.CreatureDispXUiCamera self
function row:SetCreatureDisplayInfoID(value) end

---Navigates foreign relationship to 'CreatureDisplayInfo' via 'CreatureDisplayInfoID'.
---@return dbc.row.v1215.CreatureDisplayInfo|nil
function row:GetCreatureDisplayInfo() end

---Creates a related 'CreatureDisplayInfo' row and automatically links 'CreatureDisplayInfoID'.
---@param data? table
---@return dbc.row.v1215.CreatureDisplayInfo
function row:CreateRelated(data) end

---Gets the value of field 'UiCameraID'.
---@return integer value
function row:GetUiCameraID() end

---Sets the value of field 'UiCameraID'.
---@param value integer
---@return dbc.row.v1215.CreatureDispXUiCamera self
function row:SetUiCameraID(value) end

---Navigates foreign relationship to 'UiCamera' via 'UiCameraID'.
---@return dbc.row.v1215.UiCamera|nil
function row:GetUiCamera() end

---Creates a related 'UiCamera' row and automatically links 'UiCameraID'.
---@param data? table
---@return dbc.row.v1215.UiCamera
function row:CreateRelated(data) end

---Table container for CreatureDispXUiCamera (Build 12.1.5.69594).
---@class dbc.Table.v1215.CreatureDispXUiCamera : DbcTable
---@field [integer] dbc.row.v1215.CreatureDispXUiCamera
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CreatureDispXUiCamera
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CreatureDispXUiCamera|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CreatureDispXUiCamera
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CreatureDispXUiCamera>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CreatureDispXUiCamera[]
function tbl:GetByRelation(foreign_id) end

return {}
