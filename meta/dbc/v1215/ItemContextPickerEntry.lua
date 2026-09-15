---@meta
-- Generated LuaLS annotations for ItemContextPickerEntry (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ItemContextPickerEntry in build 12.1.5.69594.
---@class dbc.row.v1215.ItemContextPickerEntry : RowProxy
---@field ID integer
---@field ItemCreationContext integer
---@field OrderIndex integer
---@field PVal integer
---@field LabelID integer
---@field Flags integer
---@field PlayerConditionID integer
---@field ItemContextPickerID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ItemContextPickerEntry self
function row:SetID(value) end

---Gets the value of field 'ItemCreationContext'.
---@return integer value
function row:GetItemCreationContext() end

---Sets the value of field 'ItemCreationContext'.
---@param value integer
---@return dbc.row.v1215.ItemContextPickerEntry self
function row:SetItemCreationContext(value) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.ItemContextPickerEntry self
function row:SetOrderIndex(value) end

---Gets the value of field 'PVal'.
---@return integer value
function row:GetPVal() end

---Sets the value of field 'PVal'.
---@param value integer
---@return dbc.row.v1215.ItemContextPickerEntry self
function row:SetPVal(value) end

---Gets the value of field 'LabelID'.
---@return integer value
function row:GetLabelID() end

---Sets the value of field 'LabelID'.
---@param value integer
---@return dbc.row.v1215.ItemContextPickerEntry self
function row:SetLabelID(value) end

---Navigates foreign relationship to 'Label' via 'LabelID'.
---@return dbc.row.v1215.Label|nil
function row:GetLabel() end

---Creates a related 'Label' row and automatically links 'LabelID'.
---@param data? table
---@return dbc.row.v1215.Label
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.ItemContextPickerEntry self
function row:SetFlags(value) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.ItemContextPickerEntry self
function row:SetPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'ItemContextPickerID'.
---@return integer value
function row:GetItemContextPickerID() end

---Sets the value of field 'ItemContextPickerID'.
---@param value integer
---@return dbc.row.v1215.ItemContextPickerEntry self
function row:SetItemContextPickerID(value) end

---Navigates foreign relationship to 'ItemContextPicker' via 'ItemContextPickerID'.
---@return dbc.row.v1215.ItemContextPicker|nil
function row:GetItemContextPicker() end

---Creates a related 'ItemContextPicker' row and automatically links 'ItemContextPickerID'.
---@param data? table
---@return dbc.row.v1215.ItemContextPicker
function row:CreateRelated(data) end

---Table container for ItemContextPickerEntry (Build 12.1.5.69594).
---@class dbc.Table.v1215.ItemContextPickerEntry : DbcTable
---@field [integer] dbc.row.v1215.ItemContextPickerEntry
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ItemContextPickerEntry
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ItemContextPickerEntry|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ItemContextPickerEntry
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ItemContextPickerEntry>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ItemContextPickerEntry[]
function tbl:GetByRelation(foreign_id) end

return {}
