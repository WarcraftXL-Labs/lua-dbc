---@meta
-- Generated LuaLS annotations for PaperDollItemFrame (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of PaperDollItemFrame in build 3.3.5.12340.
---@class dbc.row.v335.PaperDollItemFrame : RowProxy
---@field ItemButtonName string
---@field SlotIcon string
---@field SlotNumber integer

local row = {}

---Gets the value of field 'ItemButtonName'.
---@return string value
function row:GetItemButtonName() end

---Sets the value of field 'ItemButtonName'.
---@param value string
---@return dbc.row.v335.PaperDollItemFrame self
function row:SetItemButtonName(value) end

---Gets the value of field 'SlotIcon'.
---@return string value
function row:GetSlotIcon() end

---Sets the value of field 'SlotIcon'.
---@param value string
---@return dbc.row.v335.PaperDollItemFrame self
function row:SetSlotIcon(value) end

---Gets the value of field 'SlotNumber'.
---@return integer value
function row:GetSlotNumber() end

---Sets the value of field 'SlotNumber'.
---@param value integer
---@return dbc.row.v335.PaperDollItemFrame self
function row:SetSlotNumber(value) end

---Table container for PaperDollItemFrame (Build 3.3.5.12340).
---@class dbc.Table.v335.PaperDollItemFrame : DbcTable
---@field [integer] dbc.row.v335.PaperDollItemFrame
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.PaperDollItemFrame
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.PaperDollItemFrame|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.PaperDollItemFrame
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.PaperDollItemFrame>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.PaperDollItemFrame[]
function tbl:GetByRelation(foreign_id) end

return {}
