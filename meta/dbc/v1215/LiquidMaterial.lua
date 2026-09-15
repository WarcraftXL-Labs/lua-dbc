---@meta
-- Generated LuaLS annotations for LiquidMaterial (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of LiquidMaterial in build 12.1.5.69594.
---@class dbc.row.v1215.LiquidMaterial : RowProxy
---@field ID integer
---@field Flags integer
---@field LVF integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.LiquidMaterial self
function row:SetID(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.LiquidMaterial self
function row:SetFlags(value) end

---Gets the value of field 'LVF'.
---@return integer value
function row:GetLVF() end

---Sets the value of field 'LVF'.
---@param value integer
---@return dbc.row.v1215.LiquidMaterial self
function row:SetLVF(value) end

---Table container for LiquidMaterial (Build 12.1.5.69594).
---@class dbc.Table.v1215.LiquidMaterial : DbcTable
---@field [integer] dbc.row.v1215.LiquidMaterial
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.LiquidMaterial
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.LiquidMaterial|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.LiquidMaterial
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.LiquidMaterial>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.LiquidMaterial[]
function tbl:GetByRelation(foreign_id) end

return {}
