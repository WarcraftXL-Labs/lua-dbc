---@meta
-- Generated LuaLS annotations for AnimationData (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of AnimationData in build 12.1.5.69594.
---@class dbc.row.v1215.AnimationData : RowProxy
---@field ID integer
---@field Fallback integer visual equivalent
---@field BehaviorTier integer 0: Normal, 3: Flying
---@field BehaviorID integer semantic equivalent
---@field Flags integer[] &0x10: fallback-related,  &0x20: fallback-related, &0x80: fallback-related

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.AnimationData self
function row:SetID(value) end

---Gets the value of field 'Fallback'.
---@return integer value
function row:GetFallback() end

---Sets the value of field 'Fallback'.
---@param value integer
---@return dbc.row.v1215.AnimationData self
function row:SetFallback(value) end

---Navigates foreign relationship to 'AnimationData' via 'Fallback'.
---@return dbc.row.v1215.AnimationData|nil
function row:GetFallback() end

---Creates a related 'AnimationData' row and automatically links 'Fallback'.
---@param data? table
---@return dbc.row.v1215.AnimationData
function row:CreateRelated(data) end

---Gets the value of field 'BehaviorTier'.
---@return integer value
function row:GetBehaviorTier() end

---Sets the value of field 'BehaviorTier'.
---@param value integer
---@return dbc.row.v1215.AnimationData self
function row:SetBehaviorTier(value) end

---Gets the value of field 'BehaviorID'.
---@return integer value
function row:GetBehaviorID() end

---Sets the value of field 'BehaviorID'.
---@param value integer
---@return dbc.row.v1215.AnimationData self
function row:SetBehaviorID(value) end

---Navigates foreign relationship to 'AnimationData' via 'BehaviorID'.
---@return dbc.row.v1215.AnimationData|nil
function row:GetBehavior() end

---Creates a related 'AnimationData' row and automatically links 'BehaviorID'.
---@param data? table
---@return dbc.row.v1215.AnimationData
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer[] value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer[]
---@return dbc.row.v1215.AnimationData self
function row:SetFlags(value) end

---Gets element at 1-based index in 'Flags'.
---@param index integer
---@return integer value
function row:GetFlagsItem(index) end

---Table container for AnimationData (Build 12.1.5.69594).
---@class dbc.Table.v1215.AnimationData : DbcTable
---@field [integer] dbc.row.v1215.AnimationData
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.AnimationData
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.AnimationData|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.AnimationData
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.AnimationData>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.AnimationData[]
function tbl:GetByRelation(foreign_id) end

return {}
