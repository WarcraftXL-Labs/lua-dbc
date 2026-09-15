---@meta
-- Generated LuaLS annotations for ItemVisuals (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ItemVisuals in build 12.1.5.69594.
---@class dbc.row.v1215.ItemVisuals : RowProxy
---@field ID integer
---@field SpellVisualKitId1 integer
---@field SpellVisualKitId2 integer
---@field ModelFileID integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ItemVisuals self
function row:SetID(value) end

---Gets the value of field 'SpellVisualKitId1'.
---@return integer value
function row:GetSpellVisualKitId1() end

---Sets the value of field 'SpellVisualKitId1'.
---@param value integer
---@return dbc.row.v1215.ItemVisuals self
function row:SetSpellVisualKitId1(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'SpellVisualKitId1'.
---@return dbc.row.v1215.SpellVisualKit|nil
function row:GetSpellVisualKitId1() end

---Creates a related 'SpellVisualKit' row and automatically links 'SpellVisualKitId1'.
---@param data? table
---@return dbc.row.v1215.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'SpellVisualKitId2'.
---@return integer value
function row:GetSpellVisualKitId2() end

---Sets the value of field 'SpellVisualKitId2'.
---@param value integer
---@return dbc.row.v1215.ItemVisuals self
function row:SetSpellVisualKitId2(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'SpellVisualKitId2'.
---@return dbc.row.v1215.SpellVisualKit|nil
function row:GetSpellVisualKitId2() end

---Creates a related 'SpellVisualKit' row and automatically links 'SpellVisualKitId2'.
---@param data? table
---@return dbc.row.v1215.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'ModelFileID'.
---@return integer[] value
function row:GetModelFileID() end

---Sets the value of field 'ModelFileID'.
---@param value integer[]
---@return dbc.row.v1215.ItemVisuals self
function row:SetModelFileID(value) end

---Gets element at 1-based index in 'ModelFileID'.
---@param index integer
---@return integer value
function row:GetModelFileIDItem(index) end

---Navigates foreign relationship to 'FileData' via 'ModelFileID'.
---@return dbc.row.v1215.FileData|nil
function row:GetModelFile() end

---Creates a related 'FileData' row and automatically links 'ModelFileID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Table container for ItemVisuals (Build 12.1.5.69594).
---@class dbc.Table.v1215.ItemVisuals : DbcTable
---@field [integer] dbc.row.v1215.ItemVisuals
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ItemVisuals
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ItemVisuals|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ItemVisuals
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ItemVisuals>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ItemVisuals[]
function tbl:GetByRelation(foreign_id) end

return {}
