---@meta
-- Generated LuaLS annotations for ItemAppearance (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ItemAppearance in build 12.1.5.69594.
---@class dbc.row.v1215.ItemAppearance : RowProxy
---@field ID integer
---@field DisplayType integer
---@field ItemDisplayInfoID integer
---@field DefaultIconFileDataID integer
---@field UiOrder integer
---@field TransmogPlayerConditionID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ItemAppearance self
function row:SetID(value) end

---Gets the value of field 'DisplayType'.
---@return integer value
function row:GetDisplayType() end

---Sets the value of field 'DisplayType'.
---@param value integer
---@return dbc.row.v1215.ItemAppearance self
function row:SetDisplayType(value) end

---Gets the value of field 'ItemDisplayInfoID'.
---@return integer value
function row:GetItemDisplayInfoID() end

---Sets the value of field 'ItemDisplayInfoID'.
---@param value integer
---@return dbc.row.v1215.ItemAppearance self
function row:SetItemDisplayInfoID(value) end

---Navigates foreign relationship to 'ItemDisplayInfo' via 'ItemDisplayInfoID'.
---@return dbc.row.v1215.ItemDisplayInfo|nil
function row:GetItemDisplayInfo() end

---Creates a related 'ItemDisplayInfo' row and automatically links 'ItemDisplayInfoID'.
---@param data? table
---@return dbc.row.v1215.ItemDisplayInfo
function row:CreateRelated(data) end

---Gets the value of field 'DefaultIconFileDataID'.
---@return integer value
function row:GetDefaultIconFileDataID() end

---Sets the value of field 'DefaultIconFileDataID'.
---@param value integer
---@return dbc.row.v1215.ItemAppearance self
function row:SetDefaultIconFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'DefaultIconFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetDefaultIconFileData() end

---Creates a related 'FileData' row and automatically links 'DefaultIconFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'UiOrder'.
---@return integer value
function row:GetUiOrder() end

---Sets the value of field 'UiOrder'.
---@param value integer
---@return dbc.row.v1215.ItemAppearance self
function row:SetUiOrder(value) end

---Gets the value of field 'TransmogPlayerConditionID'.
---@return integer value
function row:GetTransmogPlayerConditionID() end

---Sets the value of field 'TransmogPlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.ItemAppearance self
function row:SetTransmogPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'TransmogPlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetTransmogPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'TransmogPlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Table container for ItemAppearance (Build 12.1.5.69594).
---@class dbc.Table.v1215.ItemAppearance : DbcTable
---@field [integer] dbc.row.v1215.ItemAppearance
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ItemAppearance
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ItemAppearance|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ItemAppearance
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ItemAppearance>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ItemAppearance[]
function tbl:GetByRelation(foreign_id) end

return {}
