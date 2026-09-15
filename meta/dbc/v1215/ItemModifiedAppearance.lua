---@meta
-- Generated LuaLS annotations for ItemModifiedAppearance (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ItemModifiedAppearance in build 12.1.5.69594.
---@class dbc.row.v1215.ItemModifiedAppearance : RowProxy
---@field ID integer
---@field ItemID integer
---@field ItemAppearanceModifierID integer
---@field ItemAppearanceID integer
---@field OrderIndex integer
---@field TransmogSourceTypeEnum integer
---@field Flags integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ItemModifiedAppearance self
function row:SetID(value) end

---Gets the value of field 'ItemID'.
---@return integer value
function row:GetItemID() end

---Sets the value of field 'ItemID'.
---@param value integer
---@return dbc.row.v1215.ItemModifiedAppearance self
function row:SetItemID(value) end

---Navigates foreign relationship to 'Item' via 'ItemID'.
---@return dbc.row.v1215.Item|nil
function row:GetItem() end

---Creates a related 'Item' row and automatically links 'ItemID'.
---@param data? table
---@return dbc.row.v1215.Item
function row:CreateRelated(data) end

---Gets the value of field 'ItemAppearanceModifierID'.
---@return integer value
function row:GetItemAppearanceModifierID() end

---Sets the value of field 'ItemAppearanceModifierID'.
---@param value integer
---@return dbc.row.v1215.ItemModifiedAppearance self
function row:SetItemAppearanceModifierID(value) end

---Navigates foreign relationship to 'ItemAppearanceModifier' via 'ItemAppearanceModifierID'.
---@return dbc.row.v1215.ItemAppearanceModifier|nil
function row:GetItemAppearanceModifier() end

---Creates a related 'ItemAppearanceModifier' row and automatically links 'ItemAppearanceModifierID'.
---@param data? table
---@return dbc.row.v1215.ItemAppearanceModifier
function row:CreateRelated(data) end

---Gets the value of field 'ItemAppearanceID'.
---@return integer value
function row:GetItemAppearanceID() end

---Sets the value of field 'ItemAppearanceID'.
---@param value integer
---@return dbc.row.v1215.ItemModifiedAppearance self
function row:SetItemAppearanceID(value) end

---Navigates foreign relationship to 'ItemAppearance' via 'ItemAppearanceID'.
---@return dbc.row.v1215.ItemAppearance|nil
function row:GetItemAppearance() end

---Creates a related 'ItemAppearance' row and automatically links 'ItemAppearanceID'.
---@param data? table
---@return dbc.row.v1215.ItemAppearance
function row:CreateRelated(data) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.ItemModifiedAppearance self
function row:SetOrderIndex(value) end

---Gets the value of field 'TransmogSourceTypeEnum'.
---@return integer value
function row:GetTransmogSourceTypeEnum() end

---Sets the value of field 'TransmogSourceTypeEnum'.
---@param value integer
---@return dbc.row.v1215.ItemModifiedAppearance self
function row:SetTransmogSourceTypeEnum(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.ItemModifiedAppearance self
function row:SetFlags(value) end

---Table container for ItemModifiedAppearance (Build 12.1.5.69594).
---@class dbc.Table.v1215.ItemModifiedAppearance : DbcTable
---@field [integer] dbc.row.v1215.ItemModifiedAppearance
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ItemModifiedAppearance
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ItemModifiedAppearance|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ItemModifiedAppearance
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ItemModifiedAppearance>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ItemModifiedAppearance[]
function tbl:GetByRelation(foreign_id) end

return {}
