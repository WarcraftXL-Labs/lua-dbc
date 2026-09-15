---@meta
-- Generated LuaLS annotations for CriteriaTreeXEffect (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CriteriaTreeXEffect in build 12.1.5.69594.
---@class dbc.row.v1215.CriteriaTreeXEffect : RowProxy
---@field ID integer
---@field WorldEffectID integer
---@field CriteriaTreeID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CriteriaTreeXEffect self
function row:SetID(value) end

---Gets the value of field 'WorldEffectID'.
---@return integer value
function row:GetWorldEffectID() end

---Sets the value of field 'WorldEffectID'.
---@param value integer
---@return dbc.row.v1215.CriteriaTreeXEffect self
function row:SetWorldEffectID(value) end

---Navigates foreign relationship to 'WorldEffect' via 'WorldEffectID'.
---@return dbc.row.v1215.WorldEffect|nil
function row:GetWorldEffect() end

---Creates a related 'WorldEffect' row and automatically links 'WorldEffectID'.
---@param data? table
---@return dbc.row.v1215.WorldEffect
function row:CreateRelated(data) end

---Gets the value of field 'CriteriaTreeID'.
---@return integer value
function row:GetCriteriaTreeID() end

---Sets the value of field 'CriteriaTreeID'.
---@param value integer
---@return dbc.row.v1215.CriteriaTreeXEffect self
function row:SetCriteriaTreeID(value) end

---Navigates foreign relationship to 'CriteriaTree' via 'CriteriaTreeID'.
---@return dbc.row.v1215.CriteriaTree|nil
function row:GetCriteriaTree() end

---Creates a related 'CriteriaTree' row and automatically links 'CriteriaTreeID'.
---@param data? table
---@return dbc.row.v1215.CriteriaTree
function row:CreateRelated(data) end

---Table container for CriteriaTreeXEffect (Build 12.1.5.69594).
---@class dbc.Table.v1215.CriteriaTreeXEffect : DbcTable
---@field [integer] dbc.row.v1215.CriteriaTreeXEffect
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CriteriaTreeXEffect
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CriteriaTreeXEffect|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CriteriaTreeXEffect
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CriteriaTreeXEffect>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CriteriaTreeXEffect[]
function tbl:GetByRelation(foreign_id) end

return {}
