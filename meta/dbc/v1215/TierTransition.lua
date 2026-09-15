---@meta
-- Generated LuaLS annotations for TierTransition (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of TierTransition in build 12.1.5.69594.
---@class dbc.row.v1215.TierTransition : RowProxy
---@field ID integer
---@field AnimTier integer
---@field AnimationTierDataID1 integer magic hardcoded value: >= 1496 / 1476
---@field AnimationTierDataID2 integer
---@field Milliseconds number

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.TierTransition self
function row:SetID(value) end

---Gets the value of field 'AnimTier'.
---@return integer value
function row:GetAnimTier() end

---Sets the value of field 'AnimTier'.
---@param value integer
---@return dbc.row.v1215.TierTransition self
function row:SetAnimTier(value) end

---Gets the value of field 'AnimationTierDataID1'.
---@return integer value
function row:GetAnimationTierDataID1() end

---Sets the value of field 'AnimationTierDataID1'.
---@param value integer
---@return dbc.row.v1215.TierTransition self
function row:SetAnimationTierDataID1(value) end

---Navigates foreign relationship to 'AnimationData' via 'AnimationTierDataID1'.
---@return dbc.row.v1215.AnimationData|nil
function row:GetAnimationTierDataID1() end

---Creates a related 'AnimationData' row and automatically links 'AnimationTierDataID1'.
---@param data? table
---@return dbc.row.v1215.AnimationData
function row:CreateRelated(data) end

---Gets the value of field 'AnimationTierDataID2'.
---@return integer value
function row:GetAnimationTierDataID2() end

---Sets the value of field 'AnimationTierDataID2'.
---@param value integer
---@return dbc.row.v1215.TierTransition self
function row:SetAnimationTierDataID2(value) end

---Navigates foreign relationship to 'AnimationData' via 'AnimationTierDataID2'.
---@return dbc.row.v1215.AnimationData|nil
function row:GetAnimationTierDataID2() end

---Creates a related 'AnimationData' row and automatically links 'AnimationTierDataID2'.
---@param data? table
---@return dbc.row.v1215.AnimationData
function row:CreateRelated(data) end

---Gets the value of field 'Milliseconds'.
---@return number value
function row:GetMilliseconds() end

---Sets the value of field 'Milliseconds'.
---@param value number
---@return dbc.row.v1215.TierTransition self
function row:SetMilliseconds(value) end

---Table container for TierTransition (Build 12.1.5.69594).
---@class dbc.Table.v1215.TierTransition : DbcTable
---@field [integer] dbc.row.v1215.TierTransition
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.TierTransition
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.TierTransition|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.TierTransition
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.TierTransition>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.TierTransition[]
function tbl:GetByRelation(foreign_id) end

return {}
