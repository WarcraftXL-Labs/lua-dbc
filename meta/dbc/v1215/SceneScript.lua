---@meta
-- Generated LuaLS annotations for SceneScript (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SceneScript in build 12.1.5.69594.
---@class dbc.row.v1215.SceneScript : RowProxy
---@field ID integer
---@field FirstSceneScriptID integer
---@field NextSceneScriptID integer
---@field Field_9_1_5_39977_002 integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SceneScript self
function row:SetID(value) end

---Gets the value of field 'FirstSceneScriptID'.
---@return integer value
function row:GetFirstSceneScriptID() end

---Sets the value of field 'FirstSceneScriptID'.
---@param value integer
---@return dbc.row.v1215.SceneScript self
function row:SetFirstSceneScriptID(value) end

---Navigates foreign relationship to 'SceneScript' via 'FirstSceneScriptID'.
---@return dbc.row.v1215.SceneScript|nil
function row:GetFirstSceneScript() end

---Creates a related 'SceneScript' row and automatically links 'FirstSceneScriptID'.
---@param data? table
---@return dbc.row.v1215.SceneScript
function row:CreateRelated(data) end

---Gets the value of field 'NextSceneScriptID'.
---@return integer value
function row:GetNextSceneScriptID() end

---Sets the value of field 'NextSceneScriptID'.
---@param value integer
---@return dbc.row.v1215.SceneScript self
function row:SetNextSceneScriptID(value) end

---Navigates foreign relationship to 'SceneScript' via 'NextSceneScriptID'.
---@return dbc.row.v1215.SceneScript|nil
function row:GetNextSceneScript() end

---Creates a related 'SceneScript' row and automatically links 'NextSceneScriptID'.
---@param data? table
---@return dbc.row.v1215.SceneScript
function row:CreateRelated(data) end

---Gets the value of field 'Field_9_1_5_39977_002'.
---@return integer value
function row:GetField_9_1_5_39977_002() end

---Sets the value of field 'Field_9_1_5_39977_002'.
---@param value integer
---@return dbc.row.v1215.SceneScript self
function row:SetField_9_1_5_39977_002(value) end

---Table container for SceneScript (Build 12.1.5.69594).
---@class dbc.Table.v1215.SceneScript : DbcTable
---@field [integer] dbc.row.v1215.SceneScript
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SceneScript
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SceneScript|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SceneScript
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SceneScript>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SceneScript[]
function tbl:GetByRelation(foreign_id) end

return {}
