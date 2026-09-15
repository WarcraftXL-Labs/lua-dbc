---@meta
-- Generated LuaLS annotations for WarbandSceneAnimChrSpec (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of WarbandSceneAnimChrSpec in build 12.1.5.69594.
---@class dbc.row.v1215.WarbandSceneAnimChrSpec : RowProxy
---@field ID integer
---@field WarbandSceneAnimationID integer
---@field ChrSpecializationID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.WarbandSceneAnimChrSpec self
function row:SetID(value) end

---Gets the value of field 'WarbandSceneAnimationID'.
---@return integer value
function row:GetWarbandSceneAnimationID() end

---Sets the value of field 'WarbandSceneAnimationID'.
---@param value integer
---@return dbc.row.v1215.WarbandSceneAnimChrSpec self
function row:SetWarbandSceneAnimationID(value) end

---Navigates foreign relationship to 'WarbandSceneAnimation' via 'WarbandSceneAnimationID'.
---@return dbc.row.v1215.WarbandSceneAnimation|nil
function row:GetWarbandSceneAnimation() end

---Creates a related 'WarbandSceneAnimation' row and automatically links 'WarbandSceneAnimationID'.
---@param data? table
---@return dbc.row.v1215.WarbandSceneAnimation
function row:CreateRelated(data) end

---Gets the value of field 'ChrSpecializationID'.
---@return integer value
function row:GetChrSpecializationID() end

---Sets the value of field 'ChrSpecializationID'.
---@param value integer
---@return dbc.row.v1215.WarbandSceneAnimChrSpec self
function row:SetChrSpecializationID(value) end

---Navigates foreign relationship to 'ChrSpecialization' via 'ChrSpecializationID'.
---@return dbc.row.v1215.ChrSpecialization|nil
function row:GetChrSpecialization() end

---Creates a related 'ChrSpecialization' row and automatically links 'ChrSpecializationID'.
---@param data? table
---@return dbc.row.v1215.ChrSpecialization
function row:CreateRelated(data) end

---Table container for WarbandSceneAnimChrSpec (Build 12.1.5.69594).
---@class dbc.Table.v1215.WarbandSceneAnimChrSpec : DbcTable
---@field [integer] dbc.row.v1215.WarbandSceneAnimChrSpec
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.WarbandSceneAnimChrSpec
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.WarbandSceneAnimChrSpec|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.WarbandSceneAnimChrSpec
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.WarbandSceneAnimChrSpec>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.WarbandSceneAnimChrSpec[]
function tbl:GetByRelation(foreign_id) end

return {}
