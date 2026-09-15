---@meta
-- Generated LuaLS annotations for ModelAnimCloakDampening (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ModelAnimCloakDampening in build 12.1.5.69594.
---@class dbc.row.v1215.ModelAnimCloakDampening : RowProxy
---@field ID integer
---@field AnimationDataID integer
---@field CloakDampeningID integer
---@field FileDataID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ModelAnimCloakDampening self
function row:SetID(value) end

---Gets the value of field 'AnimationDataID'.
---@return integer value
function row:GetAnimationDataID() end

---Sets the value of field 'AnimationDataID'.
---@param value integer
---@return dbc.row.v1215.ModelAnimCloakDampening self
function row:SetAnimationDataID(value) end

---Navigates foreign relationship to 'AnimationData' via 'AnimationDataID'.
---@return dbc.row.v1215.AnimationData|nil
function row:GetAnimationData() end

---Creates a related 'AnimationData' row and automatically links 'AnimationDataID'.
---@param data? table
---@return dbc.row.v1215.AnimationData
function row:CreateRelated(data) end

---Gets the value of field 'CloakDampeningID'.
---@return integer value
function row:GetCloakDampeningID() end

---Sets the value of field 'CloakDampeningID'.
---@param value integer
---@return dbc.row.v1215.ModelAnimCloakDampening self
function row:SetCloakDampeningID(value) end

---Navigates foreign relationship to 'CloakDampening' via 'CloakDampeningID'.
---@return dbc.row.v1215.CloakDampening|nil
function row:GetCloakDampening() end

---Creates a related 'CloakDampening' row and automatically links 'CloakDampeningID'.
---@param data? table
---@return dbc.row.v1215.CloakDampening
function row:CreateRelated(data) end

---Gets the value of field 'FileDataID'.
---@return integer value
function row:GetFileDataID() end

---Sets the value of field 'FileDataID'.
---@param value integer
---@return dbc.row.v1215.ModelAnimCloakDampening self
function row:SetFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'FileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetFileData() end

---Creates a related 'FileData' row and automatically links 'FileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Table container for ModelAnimCloakDampening (Build 12.1.5.69594).
---@class dbc.Table.v1215.ModelAnimCloakDampening : DbcTable
---@field [integer] dbc.row.v1215.ModelAnimCloakDampening
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ModelAnimCloakDampening
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ModelAnimCloakDampening|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ModelAnimCloakDampening
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ModelAnimCloakDampening>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ModelAnimCloakDampening[]
function tbl:GetByRelation(foreign_id) end

return {}
