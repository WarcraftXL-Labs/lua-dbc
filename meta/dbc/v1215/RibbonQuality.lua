---@meta
-- Generated LuaLS annotations for RibbonQuality (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of RibbonQuality in build 12.1.5.69594.
---@class dbc.row.v1215.RibbonQuality : RowProxy
---@field ID integer
---@field NumStrips integer
---@field MaxSampleTimeDelta number
---@field AngleThreshold number
---@field MinDistancePerSlice number
---@field Flags integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.RibbonQuality self
function row:SetID(value) end

---Gets the value of field 'NumStrips'.
---@return integer value
function row:GetNumStrips() end

---Sets the value of field 'NumStrips'.
---@param value integer
---@return dbc.row.v1215.RibbonQuality self
function row:SetNumStrips(value) end

---Gets the value of field 'MaxSampleTimeDelta'.
---@return number value
function row:GetMaxSampleTimeDelta() end

---Sets the value of field 'MaxSampleTimeDelta'.
---@param value number
---@return dbc.row.v1215.RibbonQuality self
function row:SetMaxSampleTimeDelta(value) end

---Gets the value of field 'AngleThreshold'.
---@return number value
function row:GetAngleThreshold() end

---Sets the value of field 'AngleThreshold'.
---@param value number
---@return dbc.row.v1215.RibbonQuality self
function row:SetAngleThreshold(value) end

---Gets the value of field 'MinDistancePerSlice'.
---@return number value
function row:GetMinDistancePerSlice() end

---Sets the value of field 'MinDistancePerSlice'.
---@param value number
---@return dbc.row.v1215.RibbonQuality self
function row:SetMinDistancePerSlice(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.RibbonQuality self
function row:SetFlags(value) end

---Table container for RibbonQuality (Build 12.1.5.69594).
---@class dbc.Table.v1215.RibbonQuality : DbcTable
---@field [integer] dbc.row.v1215.RibbonQuality
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.RibbonQuality
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.RibbonQuality|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.RibbonQuality
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.RibbonQuality>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.RibbonQuality[]
function tbl:GetByRelation(foreign_id) end

return {}
