---@meta
-- Generated LuaLS annotations for CreatureFamilyXUIModelScene (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CreatureFamilyXUIModelScene in build 12.1.5.69594.
---@class dbc.row.v1215.CreatureFamilyXUIModelScene : RowProxy
---@field ID integer
---@field CreatureFamilyID integer
---@field UiModelSceneID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CreatureFamilyXUIModelScene self
function row:SetID(value) end

---Gets the value of field 'CreatureFamilyID'.
---@return integer value
function row:GetCreatureFamilyID() end

---Sets the value of field 'CreatureFamilyID'.
---@param value integer
---@return dbc.row.v1215.CreatureFamilyXUIModelScene self
function row:SetCreatureFamilyID(value) end

---Navigates foreign relationship to 'CreatureFamily' via 'CreatureFamilyID'.
---@return dbc.row.v1215.CreatureFamily|nil
function row:GetCreatureFamily() end

---Creates a related 'CreatureFamily' row and automatically links 'CreatureFamilyID'.
---@param data? table
---@return dbc.row.v1215.CreatureFamily
function row:CreateRelated(data) end

---Gets the value of field 'UiModelSceneID'.
---@return integer value
function row:GetUiModelSceneID() end

---Sets the value of field 'UiModelSceneID'.
---@param value integer
---@return dbc.row.v1215.CreatureFamilyXUIModelScene self
function row:SetUiModelSceneID(value) end

---Navigates foreign relationship to 'UiModelScene' via 'UiModelSceneID'.
---@return dbc.row.v1215.UiModelScene|nil
function row:GetUiModelScene() end

---Creates a related 'UiModelScene' row and automatically links 'UiModelSceneID'.
---@param data? table
---@return dbc.row.v1215.UiModelScene
function row:CreateRelated(data) end

---Table container for CreatureFamilyXUIModelScene (Build 12.1.5.69594).
---@class dbc.Table.v1215.CreatureFamilyXUIModelScene : DbcTable
---@field [integer] dbc.row.v1215.CreatureFamilyXUIModelScene
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CreatureFamilyXUIModelScene
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CreatureFamilyXUIModelScene|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CreatureFamilyXUIModelScene
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CreatureFamilyXUIModelScene>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CreatureFamilyXUIModelScene[]
function tbl:GetByRelation(foreign_id) end

return {}
