---@meta
-- Generated LuaLS annotations for PerksUITheme (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of PerksUITheme in build 12.1.5.69594.
---@class dbc.row.v1215.PerksUITheme : RowProxy
---@field ID integer
---@field UiTextureKitID integer
---@field Field_10_2_0_51239_002 integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.PerksUITheme self
function row:SetID(value) end

---Gets the value of field 'UiTextureKitID'.
---@return integer value
function row:GetUiTextureKitID() end

---Sets the value of field 'UiTextureKitID'.
---@param value integer
---@return dbc.row.v1215.PerksUITheme self
function row:SetUiTextureKitID(value) end

---Navigates foreign relationship to 'UiTextureKit' via 'UiTextureKitID'.
---@return dbc.row.v1215.UiTextureKit|nil
function row:GetUiTextureKit() end

---Creates a related 'UiTextureKit' row and automatically links 'UiTextureKitID'.
---@param data? table
---@return dbc.row.v1215.UiTextureKit
function row:CreateRelated(data) end

---Gets the value of field 'Field_10_2_0_51239_002'.
---@return integer value
function row:GetField_10_2_0_51239_002() end

---Sets the value of field 'Field_10_2_0_51239_002'.
---@param value integer
---@return dbc.row.v1215.PerksUITheme self
function row:SetField_10_2_0_51239_002(value) end

---Table container for PerksUITheme (Build 12.1.5.69594).
---@class dbc.Table.v1215.PerksUITheme : DbcTable
---@field [integer] dbc.row.v1215.PerksUITheme
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.PerksUITheme
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.PerksUITheme|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.PerksUITheme
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.PerksUITheme>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.PerksUITheme[]
function tbl:GetByRelation(foreign_id) end

return {}
