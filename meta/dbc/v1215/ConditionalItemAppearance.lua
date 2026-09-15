---@meta
-- Generated LuaLS annotations for ConditionalItemAppearance (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ConditionalItemAppearance in build 12.1.5.69594.
---@class dbc.row.v1215.ConditionalItemAppearance : RowProxy
---@field ID integer
---@field Field_10_2_0_51425_000 integer
---@field OverrideItemAppearanceID integer
---@field Field_10_2_0_51425_002 integer
---@field Field_10_2_0_51425_003 integer
---@field Field_10_2_0_51425_004 integer
---@field ItemAppearanceID integer Either nonsense values or entirely wrong name

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ConditionalItemAppearance self
function row:SetID(value) end

---Gets the value of field 'Field_10_2_0_51425_000'.
---@return integer value
function row:GetField_10_2_0_51425_000() end

---Sets the value of field 'Field_10_2_0_51425_000'.
---@param value integer
---@return dbc.row.v1215.ConditionalItemAppearance self
function row:SetField_10_2_0_51425_000(value) end

---Gets the value of field 'OverrideItemAppearanceID'.
---@return integer value
function row:GetOverrideItemAppearanceID() end

---Sets the value of field 'OverrideItemAppearanceID'.
---@param value integer
---@return dbc.row.v1215.ConditionalItemAppearance self
function row:SetOverrideItemAppearanceID(value) end

---Navigates foreign relationship to 'ItemAppearance' via 'OverrideItemAppearanceID'.
---@return dbc.row.v1215.ItemAppearance|nil
function row:GetOverrideItemAppearance() end

---Creates a related 'ItemAppearance' row and automatically links 'OverrideItemAppearanceID'.
---@param data? table
---@return dbc.row.v1215.ItemAppearance
function row:CreateRelated(data) end

---Gets the value of field 'Field_10_2_0_51425_002'.
---@return integer value
function row:GetField_10_2_0_51425_002() end

---Sets the value of field 'Field_10_2_0_51425_002'.
---@param value integer
---@return dbc.row.v1215.ConditionalItemAppearance self
function row:SetField_10_2_0_51425_002(value) end

---Gets the value of field 'Field_10_2_0_51425_003'.
---@return integer value
function row:GetField_10_2_0_51425_003() end

---Sets the value of field 'Field_10_2_0_51425_003'.
---@param value integer
---@return dbc.row.v1215.ConditionalItemAppearance self
function row:SetField_10_2_0_51425_003(value) end

---Gets the value of field 'Field_10_2_0_51425_004'.
---@return integer value
function row:GetField_10_2_0_51425_004() end

---Sets the value of field 'Field_10_2_0_51425_004'.
---@param value integer
---@return dbc.row.v1215.ConditionalItemAppearance self
function row:SetField_10_2_0_51425_004(value) end

---Gets the value of field 'ItemAppearanceID'.
---@return integer value
function row:GetItemAppearanceID() end

---Sets the value of field 'ItemAppearanceID'.
---@param value integer
---@return dbc.row.v1215.ConditionalItemAppearance self
function row:SetItemAppearanceID(value) end

---Navigates foreign relationship to 'ItemAppearance' via 'ItemAppearanceID'.
---@return dbc.row.v1215.ItemAppearance|nil
function row:GetItemAppearance() end

---Creates a related 'ItemAppearance' row and automatically links 'ItemAppearanceID'.
---@param data? table
---@return dbc.row.v1215.ItemAppearance
function row:CreateRelated(data) end

---Table container for ConditionalItemAppearance (Build 12.1.5.69594).
---@class dbc.Table.v1215.ConditionalItemAppearance : DbcTable
---@field [integer] dbc.row.v1215.ConditionalItemAppearance
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ConditionalItemAppearance
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ConditionalItemAppearance|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ConditionalItemAppearance
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ConditionalItemAppearance>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ConditionalItemAppearance[]
function tbl:GetByRelation(foreign_id) end

return {}
