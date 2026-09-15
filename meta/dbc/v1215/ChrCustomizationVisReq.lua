---@meta
-- Generated LuaLS annotations for ChrCustomizationVisReq (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ChrCustomizationVisReq in build 12.1.5.69594.
---@class dbc.row.v1215.ChrCustomizationVisReq : RowProxy
---@field ID integer
---@field AllowedDisplayedItemSlots integer using ITEM_SLOT enum, not inventory type
---@field Flags integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationVisReq self
function row:SetID(value) end

---Gets the value of field 'AllowedDisplayedItemSlots'.
---@return integer value
function row:GetAllowedDisplayedItemSlots() end

---Sets the value of field 'AllowedDisplayedItemSlots'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationVisReq self
function row:SetAllowedDisplayedItemSlots(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationVisReq self
function row:SetFlags(value) end

---Table container for ChrCustomizationVisReq (Build 12.1.5.69594).
---@class dbc.Table.v1215.ChrCustomizationVisReq : DbcTable
---@field [integer] dbc.row.v1215.ChrCustomizationVisReq
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ChrCustomizationVisReq
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ChrCustomizationVisReq|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ChrCustomizationVisReq
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ChrCustomizationVisReq>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ChrCustomizationVisReq[]
function tbl:GetByRelation(foreign_id) end

return {}
