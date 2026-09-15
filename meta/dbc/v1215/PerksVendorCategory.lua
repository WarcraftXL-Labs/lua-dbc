---@meta
-- Generated LuaLS annotations for PerksVendorCategory (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of PerksVendorCategory in build 12.1.5.69594.
---@class dbc.row.v1215.PerksVendorCategory : RowProxy
---@field DisplayName_lang string
---@field ID integer
---@field PerksVendorType integer
---@field DefaultUIModelSceneID integer

local row = {}

---Gets the value of field 'DisplayName_lang'.
---@return string value
function row:GetDisplayName_lang() end

---Sets the value of field 'DisplayName_lang'.
---@param value string
---@return dbc.row.v1215.PerksVendorCategory self
function row:SetDisplayName_lang(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.PerksVendorCategory self
function row:SetID(value) end

---Gets the value of field 'PerksVendorType'.
---@return integer value
function row:GetPerksVendorType() end

---Sets the value of field 'PerksVendorType'.
---@param value integer
---@return dbc.row.v1215.PerksVendorCategory self
function row:SetPerksVendorType(value) end

---Gets the value of field 'DefaultUIModelSceneID'.
---@return integer value
function row:GetDefaultUIModelSceneID() end

---Sets the value of field 'DefaultUIModelSceneID'.
---@param value integer
---@return dbc.row.v1215.PerksVendorCategory self
function row:SetDefaultUIModelSceneID(value) end

---Navigates foreign relationship to 'UiModelScene' via 'DefaultUIModelSceneID'.
---@return dbc.row.v1215.UiModelScene|nil
function row:GetDefaultUIModelScene() end

---Creates a related 'UiModelScene' row and automatically links 'DefaultUIModelSceneID'.
---@param data? table
---@return dbc.row.v1215.UiModelScene
function row:CreateRelated(data) end

---Table container for PerksVendorCategory (Build 12.1.5.69594).
---@class dbc.Table.v1215.PerksVendorCategory : DbcTable
---@field [integer] dbc.row.v1215.PerksVendorCategory
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.PerksVendorCategory
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.PerksVendorCategory|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.PerksVendorCategory
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.PerksVendorCategory>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.PerksVendorCategory[]
function tbl:GetByRelation(foreign_id) end

return {}
