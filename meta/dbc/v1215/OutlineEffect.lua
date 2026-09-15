---@meta
-- Generated LuaLS annotations for OutlineEffect (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of OutlineEffect in build 12.1.5.69594.
---@class dbc.row.v1215.OutlineEffect : RowProxy
---@field ID integer
---@field PassiveHighlightColorID integer
---@field HighlightColorID integer
---@field Priority integer
---@field Flags integer
---@field Range number
---@field UnitConditionID integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.OutlineEffect self
function row:SetID(value) end

---Gets the value of field 'PassiveHighlightColorID'.
---@return integer value
function row:GetPassiveHighlightColorID() end

---Sets the value of field 'PassiveHighlightColorID'.
---@param value integer
---@return dbc.row.v1215.OutlineEffect self
function row:SetPassiveHighlightColorID(value) end

---Navigates foreign relationship to 'PassiveHighlightColor' via 'PassiveHighlightColorID'.
---@return dbc.row.v1215.PassiveHighlightColor|nil
function row:GetPassiveHighlightColor() end

---Creates a related 'PassiveHighlightColor' row and automatically links 'PassiveHighlightColorID'.
---@param data? table
---@return dbc.row.v1215.PassiveHighlightColor
function row:CreateRelated(data) end

---Gets the value of field 'HighlightColorID'.
---@return integer value
function row:GetHighlightColorID() end

---Sets the value of field 'HighlightColorID'.
---@param value integer
---@return dbc.row.v1215.OutlineEffect self
function row:SetHighlightColorID(value) end

---Navigates foreign relationship to 'HighlightColor' via 'HighlightColorID'.
---@return dbc.row.v1215.HighlightColor|nil
function row:GetHighlightColor() end

---Creates a related 'HighlightColor' row and automatically links 'HighlightColorID'.
---@param data? table
---@return dbc.row.v1215.HighlightColor
function row:CreateRelated(data) end

---Gets the value of field 'Priority'.
---@return integer value
function row:GetPriority() end

---Sets the value of field 'Priority'.
---@param value integer
---@return dbc.row.v1215.OutlineEffect self
function row:SetPriority(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.OutlineEffect self
function row:SetFlags(value) end

---Gets the value of field 'Range'.
---@return number value
function row:GetRange() end

---Sets the value of field 'Range'.
---@param value number
---@return dbc.row.v1215.OutlineEffect self
function row:SetRange(value) end

---Gets the value of field 'UnitConditionID'.
---@return integer[] value
function row:GetUnitConditionID() end

---Sets the value of field 'UnitConditionID'.
---@param value integer[]
---@return dbc.row.v1215.OutlineEffect self
function row:SetUnitConditionID(value) end

---Gets element at 1-based index in 'UnitConditionID'.
---@param index integer
---@return integer value
function row:GetUnitConditionIDItem(index) end

---Navigates foreign relationship to 'UnitCondition' via 'UnitConditionID'.
---@return dbc.row.v1215.UnitCondition|nil
function row:GetUnitCondition() end

---Creates a related 'UnitCondition' row and automatically links 'UnitConditionID'.
---@param data? table
---@return dbc.row.v1215.UnitCondition
function row:CreateRelated(data) end

---Table container for OutlineEffect (Build 12.1.5.69594).
---@class dbc.Table.v1215.OutlineEffect : DbcTable
---@field [integer] dbc.row.v1215.OutlineEffect
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.OutlineEffect
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.OutlineEffect|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.OutlineEffect
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.OutlineEffect>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.OutlineEffect[]
function tbl:GetByRelation(foreign_id) end

return {}
