---@meta
-- Generated LuaLS annotations for MountXSpellVisualKitPicker (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of MountXSpellVisualKitPicker in build 12.1.5.69594.
---@class dbc.row.v1215.MountXSpellVisualKitPicker : RowProxy
---@field ID integer
---@field SpellVisualKitPickerID integer
---@field Index integer evaluating this table on client returns array int[2] with spell visual kit ids, this field determines which slot of that array is filled; it could mean which model to apply the visual on, rider or mount
---@field Purpose integer used to filter which picker ids are included when evaluating this table; currently only one context exists; 0 = MountSpecialAnim
---@field Priority integer
---@field MountID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.MountXSpellVisualKitPicker self
function row:SetID(value) end

---Gets the value of field 'SpellVisualKitPickerID'.
---@return integer value
function row:GetSpellVisualKitPickerID() end

---Sets the value of field 'SpellVisualKitPickerID'.
---@param value integer
---@return dbc.row.v1215.MountXSpellVisualKitPicker self
function row:SetSpellVisualKitPickerID(value) end

---Navigates foreign relationship to 'SpellVisualKitPicker' via 'SpellVisualKitPickerID'.
---@return dbc.row.v1215.SpellVisualKitPicker|nil
function row:GetSpellVisualKitPicker() end

---Creates a related 'SpellVisualKitPicker' row and automatically links 'SpellVisualKitPickerID'.
---@param data? table
---@return dbc.row.v1215.SpellVisualKitPicker
function row:CreateRelated(data) end

---Gets the value of field 'Index'.
---@return integer value
function row:GetIndex() end

---Sets the value of field 'Index'.
---@param value integer
---@return dbc.row.v1215.MountXSpellVisualKitPicker self
function row:SetIndex(value) end

---Gets the value of field 'Purpose'.
---@return integer value
function row:GetPurpose() end

---Sets the value of field 'Purpose'.
---@param value integer
---@return dbc.row.v1215.MountXSpellVisualKitPicker self
function row:SetPurpose(value) end

---Gets the value of field 'Priority'.
---@return integer value
function row:GetPriority() end

---Sets the value of field 'Priority'.
---@param value integer
---@return dbc.row.v1215.MountXSpellVisualKitPicker self
function row:SetPriority(value) end

---Gets the value of field 'MountID'.
---@return integer value
function row:GetMountID() end

---Sets the value of field 'MountID'.
---@param value integer
---@return dbc.row.v1215.MountXSpellVisualKitPicker self
function row:SetMountID(value) end

---Navigates foreign relationship to 'Mount' via 'MountID'.
---@return dbc.row.v1215.Mount|nil
function row:GetMount() end

---Creates a related 'Mount' row and automatically links 'MountID'.
---@param data? table
---@return dbc.row.v1215.Mount
function row:CreateRelated(data) end

---Table container for MountXSpellVisualKitPicker (Build 12.1.5.69594).
---@class dbc.Table.v1215.MountXSpellVisualKitPicker : DbcTable
---@field [integer] dbc.row.v1215.MountXSpellVisualKitPicker
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.MountXSpellVisualKitPicker
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.MountXSpellVisualKitPicker|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.MountXSpellVisualKitPicker
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.MountXSpellVisualKitPicker>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.MountXSpellVisualKitPicker[]
function tbl:GetByRelation(foreign_id) end

return {}
