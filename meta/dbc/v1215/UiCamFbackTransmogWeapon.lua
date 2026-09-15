---@meta
-- Generated LuaLS annotations for UiCamFbackTransmogWeapon (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of UiCamFbackTransmogWeapon in build 12.1.5.69594.
---@class dbc.row.v1215.UiCamFbackTransmogWeapon : RowProxy
---@field ID integer
---@field ItemClass integer
---@field ItemSubclass integer
---@field InventoryType integer
---@field UiCameraID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.UiCamFbackTransmogWeapon self
function row:SetID(value) end

---Gets the value of field 'ItemClass'.
---@return integer value
function row:GetItemClass() end

---Sets the value of field 'ItemClass'.
---@param value integer
---@return dbc.row.v1215.UiCamFbackTransmogWeapon self
function row:SetItemClass(value) end

---Navigates foreign relationship to 'ItemClass' via 'ItemClass'.
---@return dbc.row.v1215.ItemClass|nil
function row:GetItemClass() end

---Creates a related 'ItemClass' row and automatically links 'ItemClass'.
---@param data? table
---@return dbc.row.v1215.ItemClass
function row:CreateRelated(data) end

---Gets the value of field 'ItemSubclass'.
---@return integer value
function row:GetItemSubclass() end

---Sets the value of field 'ItemSubclass'.
---@param value integer
---@return dbc.row.v1215.UiCamFbackTransmogWeapon self
function row:SetItemSubclass(value) end

---Navigates foreign relationship to 'ItemSubClass' via 'ItemSubclass'.
---@return dbc.row.v1215.ItemSubClass|nil
function row:GetItemSubclass() end

---Creates a related 'ItemSubClass' row and automatically links 'ItemSubclass'.
---@param data? table
---@return dbc.row.v1215.ItemSubClass
function row:CreateRelated(data) end

---Gets the value of field 'InventoryType'.
---@return integer value
function row:GetInventoryType() end

---Sets the value of field 'InventoryType'.
---@param value integer
---@return dbc.row.v1215.UiCamFbackTransmogWeapon self
function row:SetInventoryType(value) end

---Gets the value of field 'UiCameraID'.
---@return integer value
function row:GetUiCameraID() end

---Sets the value of field 'UiCameraID'.
---@param value integer
---@return dbc.row.v1215.UiCamFbackTransmogWeapon self
function row:SetUiCameraID(value) end

---Navigates foreign relationship to 'UiCamera' via 'UiCameraID'.
---@return dbc.row.v1215.UiCamera|nil
function row:GetUiCamera() end

---Creates a related 'UiCamera' row and automatically links 'UiCameraID'.
---@param data? table
---@return dbc.row.v1215.UiCamera
function row:CreateRelated(data) end

---Table container for UiCamFbackTransmogWeapon (Build 12.1.5.69594).
---@class dbc.Table.v1215.UiCamFbackTransmogWeapon : DbcTable
---@field [integer] dbc.row.v1215.UiCamFbackTransmogWeapon
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.UiCamFbackTransmogWeapon
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.UiCamFbackTransmogWeapon|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.UiCamFbackTransmogWeapon
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.UiCamFbackTransmogWeapon>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.UiCamFbackTransmogWeapon[]
function tbl:GetByRelation(foreign_id) end

return {}
