---@meta
-- Generated LuaLS annotations for PerksVendorItemUIInfo (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of PerksVendorItemUIInfo in build 12.1.5.69594.
---@class dbc.row.v1215.PerksVendorItemUIInfo : RowProxy
---@field ID integer
---@field Field_10_0_5_47118_001 integer
---@field CreatureDisplayInfoID integer
---@field Field_10_2_5_52206_003 integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.PerksVendorItemUIInfo self
function row:SetID(value) end

---Gets the value of field 'Field_10_0_5_47118_001'.
---@return integer value
function row:GetField_10_0_5_47118_001() end

---Sets the value of field 'Field_10_0_5_47118_001'.
---@param value integer
---@return dbc.row.v1215.PerksVendorItemUIInfo self
function row:SetField_10_0_5_47118_001(value) end

---Gets the value of field 'CreatureDisplayInfoID'.
---@return integer value
function row:GetCreatureDisplayInfoID() end

---Sets the value of field 'CreatureDisplayInfoID'.
---@param value integer
---@return dbc.row.v1215.PerksVendorItemUIInfo self
function row:SetCreatureDisplayInfoID(value) end

---Navigates foreign relationship to 'CreatureDisplayInfo' via 'CreatureDisplayInfoID'.
---@return dbc.row.v1215.CreatureDisplayInfo|nil
function row:GetCreatureDisplayInfo() end

---Creates a related 'CreatureDisplayInfo' row and automatically links 'CreatureDisplayInfoID'.
---@param data? table
---@return dbc.row.v1215.CreatureDisplayInfo
function row:CreateRelated(data) end

---Gets the value of field 'Field_10_2_5_52206_003'.
---@return integer value
function row:GetField_10_2_5_52206_003() end

---Sets the value of field 'Field_10_2_5_52206_003'.
---@param value integer
---@return dbc.row.v1215.PerksVendorItemUIInfo self
function row:SetField_10_2_5_52206_003(value) end

---Table container for PerksVendorItemUIInfo (Build 12.1.5.69594).
---@class dbc.Table.v1215.PerksVendorItemUIInfo : DbcTable
---@field [integer] dbc.row.v1215.PerksVendorItemUIInfo
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.PerksVendorItemUIInfo
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.PerksVendorItemUIInfo|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.PerksVendorItemUIInfo
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.PerksVendorItemUIInfo>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.PerksVendorItemUIInfo[]
function tbl:GetByRelation(foreign_id) end

return {}
