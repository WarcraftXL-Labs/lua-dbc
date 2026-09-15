---@meta
-- Generated LuaLS annotations for GemProperties (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GemProperties in build 12.1.5.69594.
---@class dbc.row.v1215.GemProperties : RowProxy
---@field ID integer
---@field Enchant_ID integer
---@field Type integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GemProperties self
function row:SetID(value) end

---Gets the value of field 'Enchant_ID'.
---@return integer value
function row:GetEnchant_ID() end

---Sets the value of field 'Enchant_ID'.
---@param value integer
---@return dbc.row.v1215.GemProperties self
function row:SetEnchant_ID(value) end

---Navigates foreign relationship to 'SpellItemEnchantment' via 'Enchant_ID'.
---@return dbc.row.v1215.SpellItemEnchantment|nil
function row:GetEnchant_() end

---Creates a related 'SpellItemEnchantment' row and automatically links 'Enchant_ID'.
---@param data? table
---@return dbc.row.v1215.SpellItemEnchantment
function row:CreateRelated(data) end

---Gets the value of field 'Type'.
---@return integer value
function row:GetType() end

---Sets the value of field 'Type'.
---@param value integer
---@return dbc.row.v1215.GemProperties self
function row:SetType(value) end

---Table container for GemProperties (Build 12.1.5.69594).
---@class dbc.Table.v1215.GemProperties : DbcTable
---@field [integer] dbc.row.v1215.GemProperties
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GemProperties
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GemProperties|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GemProperties
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GemProperties>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GemProperties[]
function tbl:GetByRelation(foreign_id) end

return {}
