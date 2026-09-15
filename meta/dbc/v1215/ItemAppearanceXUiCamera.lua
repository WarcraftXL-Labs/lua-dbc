---@meta
-- Generated LuaLS annotations for ItemAppearanceXUiCamera (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ItemAppearanceXUiCamera in build 12.1.5.69594.
---@class dbc.row.v1215.ItemAppearanceXUiCamera : RowProxy
---@field ID integer
---@field ItemAppearanceID integer
---@field UiCameraID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ItemAppearanceXUiCamera self
function row:SetID(value) end

---Gets the value of field 'ItemAppearanceID'.
---@return integer value
function row:GetItemAppearanceID() end

---Sets the value of field 'ItemAppearanceID'.
---@param value integer
---@return dbc.row.v1215.ItemAppearanceXUiCamera self
function row:SetItemAppearanceID(value) end

---Navigates foreign relationship to 'ItemAppearance' via 'ItemAppearanceID'.
---@return dbc.row.v1215.ItemAppearance|nil
function row:GetItemAppearance() end

---Creates a related 'ItemAppearance' row and automatically links 'ItemAppearanceID'.
---@param data? table
---@return dbc.row.v1215.ItemAppearance
function row:CreateRelated(data) end

---Gets the value of field 'UiCameraID'.
---@return integer value
function row:GetUiCameraID() end

---Sets the value of field 'UiCameraID'.
---@param value integer
---@return dbc.row.v1215.ItemAppearanceXUiCamera self
function row:SetUiCameraID(value) end

---Navigates foreign relationship to 'UiCamera' via 'UiCameraID'.
---@return dbc.row.v1215.UiCamera|nil
function row:GetUiCamera() end

---Creates a related 'UiCamera' row and automatically links 'UiCameraID'.
---@param data? table
---@return dbc.row.v1215.UiCamera
function row:CreateRelated(data) end

---Table container for ItemAppearanceXUiCamera (Build 12.1.5.69594).
---@class dbc.Table.v1215.ItemAppearanceXUiCamera : DbcTable
---@field [integer] dbc.row.v1215.ItemAppearanceXUiCamera
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ItemAppearanceXUiCamera
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ItemAppearanceXUiCamera|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ItemAppearanceXUiCamera
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ItemAppearanceXUiCamera>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ItemAppearanceXUiCamera[]
function tbl:GetByRelation(foreign_id) end

return {}
