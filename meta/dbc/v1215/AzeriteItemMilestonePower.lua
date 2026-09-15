---@meta
-- Generated LuaLS annotations for AzeriteItemMilestonePower (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of AzeriteItemMilestonePower in build 12.1.5.69594.
---@class dbc.row.v1215.AzeriteItemMilestonePower : RowProxy
---@field ID integer
---@field RequiredLevel integer
---@field AzeritePowerID integer
---@field AzeriteEssenceType integer 0: heart essence (use spell 296208 instead of AzeritePowerID), [2, 3]: ??? (milestone spell via AzeritePowerID)
---@field IsHeartEssenceUnlock integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.AzeriteItemMilestonePower self
function row:SetID(value) end

---Gets the value of field 'RequiredLevel'.
---@return integer value
function row:GetRequiredLevel() end

---Sets the value of field 'RequiredLevel'.
---@param value integer
---@return dbc.row.v1215.AzeriteItemMilestonePower self
function row:SetRequiredLevel(value) end

---Gets the value of field 'AzeritePowerID'.
---@return integer value
function row:GetAzeritePowerID() end

---Sets the value of field 'AzeritePowerID'.
---@param value integer
---@return dbc.row.v1215.AzeriteItemMilestonePower self
function row:SetAzeritePowerID(value) end

---Navigates foreign relationship to 'AzeritePower' via 'AzeritePowerID'.
---@return dbc.row.v1215.AzeritePower|nil
function row:GetAzeritePower() end

---Creates a related 'AzeritePower' row and automatically links 'AzeritePowerID'.
---@param data? table
---@return dbc.row.v1215.AzeritePower
function row:CreateRelated(data) end

---Gets the value of field 'AzeriteEssenceType'.
---@return integer value
function row:GetAzeriteEssenceType() end

---Sets the value of field 'AzeriteEssenceType'.
---@param value integer
---@return dbc.row.v1215.AzeriteItemMilestonePower self
function row:SetAzeriteEssenceType(value) end

---Gets the value of field 'IsHeartEssenceUnlock'.
---@return integer value
function row:GetIsHeartEssenceUnlock() end

---Sets the value of field 'IsHeartEssenceUnlock'.
---@param value integer
---@return dbc.row.v1215.AzeriteItemMilestonePower self
function row:SetIsHeartEssenceUnlock(value) end

---Table container for AzeriteItemMilestonePower (Build 12.1.5.69594).
---@class dbc.Table.v1215.AzeriteItemMilestonePower : DbcTable
---@field [integer] dbc.row.v1215.AzeriteItemMilestonePower
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.AzeriteItemMilestonePower
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.AzeriteItemMilestonePower|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.AzeriteItemMilestonePower
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.AzeriteItemMilestonePower>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.AzeriteItemMilestonePower[]
function tbl:GetByRelation(foreign_id) end

return {}
