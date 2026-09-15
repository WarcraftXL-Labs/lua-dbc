---@meta
-- Generated LuaLS annotations for SpellVisualAnim (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SpellVisualAnim in build 12.1.5.69594.
---@class dbc.row.v1215.SpellVisualAnim : RowProxy
---@field ID integer
---@field InitialAnimID integer
---@field LoopAnimID integer
---@field AnimKitID integer
---@field Field_12_0_0_63967_003 integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SpellVisualAnim self
function row:SetID(value) end

---Gets the value of field 'InitialAnimID'.
---@return integer value
function row:GetInitialAnimID() end

---Sets the value of field 'InitialAnimID'.
---@param value integer
---@return dbc.row.v1215.SpellVisualAnim self
function row:SetInitialAnimID(value) end

---Navigates foreign relationship to 'AnimationData' via 'InitialAnimID'.
---@return dbc.row.v1215.AnimationData|nil
function row:GetInitialAnim() end

---Creates a related 'AnimationData' row and automatically links 'InitialAnimID'.
---@param data? table
---@return dbc.row.v1215.AnimationData
function row:CreateRelated(data) end

---Gets the value of field 'LoopAnimID'.
---@return integer value
function row:GetLoopAnimID() end

---Sets the value of field 'LoopAnimID'.
---@param value integer
---@return dbc.row.v1215.SpellVisualAnim self
function row:SetLoopAnimID(value) end

---Navigates foreign relationship to 'AnimationData' via 'LoopAnimID'.
---@return dbc.row.v1215.AnimationData|nil
function row:GetLoopAnim() end

---Creates a related 'AnimationData' row and automatically links 'LoopAnimID'.
---@param data? table
---@return dbc.row.v1215.AnimationData
function row:CreateRelated(data) end

---Gets the value of field 'AnimKitID'.
---@return integer value
function row:GetAnimKitID() end

---Sets the value of field 'AnimKitID'.
---@param value integer
---@return dbc.row.v1215.SpellVisualAnim self
function row:SetAnimKitID(value) end

---Navigates foreign relationship to 'AnimKit' via 'AnimKitID'.
---@return dbc.row.v1215.AnimKit|nil
function row:GetAnimKit() end

---Creates a related 'AnimKit' row and automatically links 'AnimKitID'.
---@param data? table
---@return dbc.row.v1215.AnimKit
function row:CreateRelated(data) end

---Gets the value of field 'Field_12_0_0_63967_003'.
---@return integer value
function row:GetField_12_0_0_63967_003() end

---Sets the value of field 'Field_12_0_0_63967_003'.
---@param value integer
---@return dbc.row.v1215.SpellVisualAnim self
function row:SetField_12_0_0_63967_003(value) end

---Table container for SpellVisualAnim (Build 12.1.5.69594).
---@class dbc.Table.v1215.SpellVisualAnim : DbcTable
---@field [integer] dbc.row.v1215.SpellVisualAnim
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SpellVisualAnim
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SpellVisualAnim|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SpellVisualAnim
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SpellVisualAnim>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SpellVisualAnim[]
function tbl:GetByRelation(foreign_id) end

return {}
