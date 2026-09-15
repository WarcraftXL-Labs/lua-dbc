---@meta
-- Generated LuaLS annotations for CollectableSourceVendorSparse (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CollectableSourceVendorSparse in build 12.1.5.69594.
---@class dbc.row.v1215.CollectableSourceVendorSparse : RowProxy
---@field ID integer
---@field VendorMapID integer
---@field VendorPosition number[]
---@field VendorItemID integer
---@field CreatureID integer
---@field AreaTableID integer
---@field WMOGroupID integer
---@field CollectableSourceInfoID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CollectableSourceVendorSparse self
function row:SetID(value) end

---Gets the value of field 'VendorMapID'.
---@return integer value
function row:GetVendorMapID() end

---Sets the value of field 'VendorMapID'.
---@param value integer
---@return dbc.row.v1215.CollectableSourceVendorSparse self
function row:SetVendorMapID(value) end

---Navigates foreign relationship to 'Map' via 'VendorMapID'.
---@return dbc.row.v1215.Map|nil
function row:GetVendorMap() end

---Creates a related 'Map' row and automatically links 'VendorMapID'.
---@param data? table
---@return dbc.row.v1215.Map
function row:CreateRelated(data) end

---Gets the value of field 'VendorPosition'.
---@return number[] value
function row:GetVendorPosition() end

---Sets the value of field 'VendorPosition'.
---@param value number[]
---@return dbc.row.v1215.CollectableSourceVendorSparse self
function row:SetVendorPosition(value) end

---Gets element at 1-based index in 'VendorPosition'.
---@param index integer
---@return number value
function row:GetVendorPositionItem(index) end

---Gets the value of field 'VendorItemID'.
---@return integer value
function row:GetVendorItemID() end

---Sets the value of field 'VendorItemID'.
---@param value integer
---@return dbc.row.v1215.CollectableSourceVendorSparse self
function row:SetVendorItemID(value) end

---Navigates foreign relationship to 'VendorItem' via 'VendorItemID'.
---@return dbc.row.v1215.VendorItem|nil
function row:GetVendorItem() end

---Creates a related 'VendorItem' row and automatically links 'VendorItemID'.
---@param data? table
---@return dbc.row.v1215.VendorItem
function row:CreateRelated(data) end

---Gets the value of field 'CreatureID'.
---@return integer value
function row:GetCreatureID() end

---Sets the value of field 'CreatureID'.
---@param value integer
---@return dbc.row.v1215.CollectableSourceVendorSparse self
function row:SetCreatureID(value) end

---Navigates foreign relationship to 'Creature' via 'CreatureID'.
---@return dbc.row.v1215.Creature|nil
function row:GetCreature() end

---Creates a related 'Creature' row and automatically links 'CreatureID'.
---@param data? table
---@return dbc.row.v1215.Creature
function row:CreateRelated(data) end

---Gets the value of field 'AreaTableID'.
---@return integer value
function row:GetAreaTableID() end

---Sets the value of field 'AreaTableID'.
---@param value integer
---@return dbc.row.v1215.CollectableSourceVendorSparse self
function row:SetAreaTableID(value) end

---Navigates foreign relationship to 'AreaTable' via 'AreaTableID'.
---@return dbc.row.v1215.AreaTable|nil
function row:GetAreaTable() end

---Creates a related 'AreaTable' row and automatically links 'AreaTableID'.
---@param data? table
---@return dbc.row.v1215.AreaTable
function row:CreateRelated(data) end

---Gets the value of field 'WMOGroupID'.
---@return integer value
function row:GetWMOGroupID() end

---Sets the value of field 'WMOGroupID'.
---@param value integer
---@return dbc.row.v1215.CollectableSourceVendorSparse self
function row:SetWMOGroupID(value) end

---Navigates foreign relationship to 'WMOAreaTable' via 'WMOGroupID'.
---@return dbc.row.v1215.WMOAreaTable|nil
function row:GetWMOGroup() end

---Creates a related 'WMOAreaTable' row and automatically links 'WMOGroupID'.
---@param data? table
---@return dbc.row.v1215.WMOAreaTable
function row:CreateRelated(data) end

---Gets the value of field 'CollectableSourceInfoID'.
---@return integer value
function row:GetCollectableSourceInfoID() end

---Sets the value of field 'CollectableSourceInfoID'.
---@param value integer
---@return dbc.row.v1215.CollectableSourceVendorSparse self
function row:SetCollectableSourceInfoID(value) end

---Navigates foreign relationship to 'CollectableSourceInfo' via 'CollectableSourceInfoID'.
---@return dbc.row.v1215.CollectableSourceInfo|nil
function row:GetCollectableSourceInfo() end

---Creates a related 'CollectableSourceInfo' row and automatically links 'CollectableSourceInfoID'.
---@param data? table
---@return dbc.row.v1215.CollectableSourceInfo
function row:CreateRelated(data) end

---Table container for CollectableSourceVendorSparse (Build 12.1.5.69594).
---@class dbc.Table.v1215.CollectableSourceVendorSparse : DbcTable
---@field [integer] dbc.row.v1215.CollectableSourceVendorSparse
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CollectableSourceVendorSparse
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CollectableSourceVendorSparse|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CollectableSourceVendorSparse
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CollectableSourceVendorSparse>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CollectableSourceVendorSparse[]
function tbl:GetByRelation(foreign_id) end

return {}
