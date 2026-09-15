---@meta
-- Generated LuaLS annotations for PaperDollItemFrame (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of PaperDollItemFrame in build 12.1.5.69594.
---@class dbc.row.v1215.PaperDollItemFrame : RowProxy
---@field ID integer
---@field ItemButtonName string
---@field SlotIconFileID integer
---@field SlotNumber integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.PaperDollItemFrame self
function row:SetID(value) end

---Gets the value of field 'ItemButtonName'.
---@return string value
function row:GetItemButtonName() end

---Sets the value of field 'ItemButtonName'.
---@param value string
---@return dbc.row.v1215.PaperDollItemFrame self
function row:SetItemButtonName(value) end

---Gets the value of field 'SlotIconFileID'.
---@return integer value
function row:GetSlotIconFileID() end

---Sets the value of field 'SlotIconFileID'.
---@param value integer
---@return dbc.row.v1215.PaperDollItemFrame self
function row:SetSlotIconFileID(value) end

---Navigates foreign relationship to 'FileData' via 'SlotIconFileID'.
---@return dbc.row.v1215.FileData|nil
function row:GetSlotIconFile() end

---Creates a related 'FileData' row and automatically links 'SlotIconFileID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'SlotNumber'.
---@return integer value
function row:GetSlotNumber() end

---Sets the value of field 'SlotNumber'.
---@param value integer
---@return dbc.row.v1215.PaperDollItemFrame self
function row:SetSlotNumber(value) end

---Table container for PaperDollItemFrame (Build 12.1.5.69594).
---@class dbc.Table.v1215.PaperDollItemFrame : DbcTable
---@field [integer] dbc.row.v1215.PaperDollItemFrame
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.PaperDollItemFrame
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.PaperDollItemFrame|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.PaperDollItemFrame
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.PaperDollItemFrame>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.PaperDollItemFrame[]
function tbl:GetByRelation(foreign_id) end

return {}
