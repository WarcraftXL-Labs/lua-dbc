---@meta
-- Generated LuaLS annotations for SceneScriptPackage (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SceneScriptPackage in build 12.1.5.69594.
---@class dbc.row.v1215.SceneScriptPackage : RowProxy
---@field ID integer
---@field Name string
---@field Field_12_0_0_64499_001 integer
---@field Field_9_1_5_39977_001 integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SceneScriptPackage self
function row:SetID(value) end

---Gets the value of field 'Name'.
---@return string value
function row:GetName() end

---Sets the value of field 'Name'.
---@param value string
---@return dbc.row.v1215.SceneScriptPackage self
function row:SetName(value) end

---Gets the value of field 'Field_12_0_0_64499_001'.
---@return integer value
function row:GetField_12_0_0_64499_001() end

---Sets the value of field 'Field_12_0_0_64499_001'.
---@param value integer
---@return dbc.row.v1215.SceneScriptPackage self
function row:SetField_12_0_0_64499_001(value) end

---Gets the value of field 'Field_9_1_5_39977_001'.
---@return integer value
function row:GetField_9_1_5_39977_001() end

---Sets the value of field 'Field_9_1_5_39977_001'.
---@param value integer
---@return dbc.row.v1215.SceneScriptPackage self
function row:SetField_9_1_5_39977_001(value) end

---Table container for SceneScriptPackage (Build 12.1.5.69594).
---@class dbc.Table.v1215.SceneScriptPackage : DbcTable
---@field [integer] dbc.row.v1215.SceneScriptPackage
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SceneScriptPackage
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SceneScriptPackage|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SceneScriptPackage
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SceneScriptPackage>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SceneScriptPackage[]
function tbl:GetByRelation(foreign_id) end

return {}
