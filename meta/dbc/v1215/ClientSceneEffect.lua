---@meta
-- Generated LuaLS annotations for ClientSceneEffect (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ClientSceneEffect in build 12.1.5.69594.
---@class dbc.row.v1215.ClientSceneEffect : RowProxy
---@field ID integer
---@field SceneScriptPackageID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ClientSceneEffect self
function row:SetID(value) end

---Gets the value of field 'SceneScriptPackageID'.
---@return integer value
function row:GetSceneScriptPackageID() end

---Sets the value of field 'SceneScriptPackageID'.
---@param value integer
---@return dbc.row.v1215.ClientSceneEffect self
function row:SetSceneScriptPackageID(value) end

---Navigates foreign relationship to 'SceneScriptPackage' via 'SceneScriptPackageID'.
---@return dbc.row.v1215.SceneScriptPackage|nil
function row:GetSceneScriptPackage() end

---Creates a related 'SceneScriptPackage' row and automatically links 'SceneScriptPackageID'.
---@param data? table
---@return dbc.row.v1215.SceneScriptPackage
function row:CreateRelated(data) end

---Table container for ClientSceneEffect (Build 12.1.5.69594).
---@class dbc.Table.v1215.ClientSceneEffect : DbcTable
---@field [integer] dbc.row.v1215.ClientSceneEffect
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ClientSceneEffect
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ClientSceneEffect|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ClientSceneEffect
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ClientSceneEffect>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ClientSceneEffect[]
function tbl:GetByRelation(foreign_id) end

return {}
