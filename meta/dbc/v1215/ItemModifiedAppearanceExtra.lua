---@meta
-- Generated LuaLS annotations for ItemModifiedAppearanceExtra (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ItemModifiedAppearanceExtra in build 12.1.5.69594.
---@class dbc.row.v1215.ItemModifiedAppearanceExtra : RowProxy
---@field ID integer
---@field IconFileDataID integer
---@field UnequippedIconFileDataID integer
---@field SheatheType integer
---@field DisplayWeaponSubclassID integer
---@field DisplayInventoryType integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ItemModifiedAppearanceExtra self
function row:SetID(value) end

---Gets the value of field 'IconFileDataID'.
---@return integer value
function row:GetIconFileDataID() end

---Sets the value of field 'IconFileDataID'.
---@param value integer
---@return dbc.row.v1215.ItemModifiedAppearanceExtra self
function row:SetIconFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'IconFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetIconFileData() end

---Creates a related 'FileData' row and automatically links 'IconFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'UnequippedIconFileDataID'.
---@return integer value
function row:GetUnequippedIconFileDataID() end

---Sets the value of field 'UnequippedIconFileDataID'.
---@param value integer
---@return dbc.row.v1215.ItemModifiedAppearanceExtra self
function row:SetUnequippedIconFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'UnequippedIconFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetUnequippedIconFileData() end

---Creates a related 'FileData' row and automatically links 'UnequippedIconFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'SheatheType'.
---@return integer value
function row:GetSheatheType() end

---Sets the value of field 'SheatheType'.
---@param value integer
---@return dbc.row.v1215.ItemModifiedAppearanceExtra self
function row:SetSheatheType(value) end

---Gets the value of field 'DisplayWeaponSubclassID'.
---@return integer value
function row:GetDisplayWeaponSubclassID() end

---Sets the value of field 'DisplayWeaponSubclassID'.
---@param value integer
---@return dbc.row.v1215.ItemModifiedAppearanceExtra self
function row:SetDisplayWeaponSubclassID(value) end

---Navigates foreign relationship to 'DisplayWeaponSubclass' via 'DisplayWeaponSubclassID'.
---@return dbc.row.v1215.DisplayWeaponSubclass|nil
function row:GetDisplayWeaponSubclass() end

---Creates a related 'DisplayWeaponSubclass' row and automatically links 'DisplayWeaponSubclassID'.
---@param data? table
---@return dbc.row.v1215.DisplayWeaponSubclass
function row:CreateRelated(data) end

---Gets the value of field 'DisplayInventoryType'.
---@return integer value
function row:GetDisplayInventoryType() end

---Sets the value of field 'DisplayInventoryType'.
---@param value integer
---@return dbc.row.v1215.ItemModifiedAppearanceExtra self
function row:SetDisplayInventoryType(value) end

---Table container for ItemModifiedAppearanceExtra (Build 12.1.5.69594).
---@class dbc.Table.v1215.ItemModifiedAppearanceExtra : DbcTable
---@field [integer] dbc.row.v1215.ItemModifiedAppearanceExtra
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ItemModifiedAppearanceExtra
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ItemModifiedAppearanceExtra|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ItemModifiedAppearanceExtra
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ItemModifiedAppearanceExtra>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ItemModifiedAppearanceExtra[]
function tbl:GetByRelation(foreign_id) end

return {}
