---@meta
-- Generated LuaLS annotations for AzeriteTierUnlock (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of AzeriteTierUnlock in build 12.1.5.69594.
---@class dbc.row.v1215.AzeriteTierUnlock : RowProxy
---@field ID integer
---@field ItemCreationContext integer
---@field Tier integer 0..4
---@field AzeriteLevel integer
---@field AzeriteTierUnlockSetID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.AzeriteTierUnlock self
function row:SetID(value) end

---Gets the value of field 'ItemCreationContext'.
---@return integer value
function row:GetItemCreationContext() end

---Sets the value of field 'ItemCreationContext'.
---@param value integer
---@return dbc.row.v1215.AzeriteTierUnlock self
function row:SetItemCreationContext(value) end

---Gets the value of field 'Tier'.
---@return integer value
function row:GetTier() end

---Sets the value of field 'Tier'.
---@param value integer
---@return dbc.row.v1215.AzeriteTierUnlock self
function row:SetTier(value) end

---Gets the value of field 'AzeriteLevel'.
---@return integer value
function row:GetAzeriteLevel() end

---Sets the value of field 'AzeriteLevel'.
---@param value integer
---@return dbc.row.v1215.AzeriteTierUnlock self
function row:SetAzeriteLevel(value) end

---Gets the value of field 'AzeriteTierUnlockSetID'.
---@return integer value
function row:GetAzeriteTierUnlockSetID() end

---Sets the value of field 'AzeriteTierUnlockSetID'.
---@param value integer
---@return dbc.row.v1215.AzeriteTierUnlock self
function row:SetAzeriteTierUnlockSetID(value) end

---Navigates foreign relationship to 'AzeriteTierUnlockSet' via 'AzeriteTierUnlockSetID'.
---@return dbc.row.v1215.AzeriteTierUnlockSet|nil
function row:GetAzeriteTierUnlockSet() end

---Creates a related 'AzeriteTierUnlockSet' row and automatically links 'AzeriteTierUnlockSetID'.
---@param data? table
---@return dbc.row.v1215.AzeriteTierUnlockSet
function row:CreateRelated(data) end

---Table container for AzeriteTierUnlock (Build 12.1.5.69594).
---@class dbc.Table.v1215.AzeriteTierUnlock : DbcTable
---@field [integer] dbc.row.v1215.AzeriteTierUnlock
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.AzeriteTierUnlock
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.AzeriteTierUnlock|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.AzeriteTierUnlock
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.AzeriteTierUnlock>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.AzeriteTierUnlock[]
function tbl:GetByRelation(foreign_id) end

return {}
