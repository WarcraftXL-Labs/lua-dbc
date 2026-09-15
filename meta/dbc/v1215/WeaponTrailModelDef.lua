---@meta
-- Generated LuaLS annotations for WeaponTrailModelDef (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of WeaponTrailModelDef in build 12.1.5.69594.
---@class dbc.row.v1215.WeaponTrailModelDef : RowProxy
---@field ID integer
---@field ModelFileDataID integer Same as LowDefFileDataID but HD models
---@field WeaponTrailID integer
---@field AnimEnumID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.WeaponTrailModelDef self
function row:SetID(value) end

---Gets the value of field 'ModelFileDataID'.
---@return integer value
function row:GetModelFileDataID() end

---Sets the value of field 'ModelFileDataID'.
---@param value integer
---@return dbc.row.v1215.WeaponTrailModelDef self
function row:SetModelFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'ModelFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetModelFileData() end

---Creates a related 'FileData' row and automatically links 'ModelFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'WeaponTrailID'.
---@return integer value
function row:GetWeaponTrailID() end

---Sets the value of field 'WeaponTrailID'.
---@param value integer
---@return dbc.row.v1215.WeaponTrailModelDef self
function row:SetWeaponTrailID(value) end

---Navigates foreign relationship to 'WeaponTrail' via 'WeaponTrailID'.
---@return dbc.row.v1215.WeaponTrail|nil
function row:GetWeaponTrail() end

---Creates a related 'WeaponTrail' row and automatically links 'WeaponTrailID'.
---@param data? table
---@return dbc.row.v1215.WeaponTrail
function row:CreateRelated(data) end

---Gets the value of field 'AnimEnumID'.
---@return integer value
function row:GetAnimEnumID() end

---Sets the value of field 'AnimEnumID'.
---@param value integer
---@return dbc.row.v1215.WeaponTrailModelDef self
function row:SetAnimEnumID(value) end

---Navigates foreign relationship to 'AnimEnum' via 'AnimEnumID'.
---@return dbc.row.v1215.AnimEnum|nil
function row:GetAnimEnum() end

---Creates a related 'AnimEnum' row and automatically links 'AnimEnumID'.
---@param data? table
---@return dbc.row.v1215.AnimEnum
function row:CreateRelated(data) end

---Table container for WeaponTrailModelDef (Build 12.1.5.69594).
---@class dbc.Table.v1215.WeaponTrailModelDef : DbcTable
---@field [integer] dbc.row.v1215.WeaponTrailModelDef
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.WeaponTrailModelDef
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.WeaponTrailModelDef|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.WeaponTrailModelDef
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.WeaponTrailModelDef>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.WeaponTrailModelDef[]
function tbl:GetByRelation(foreign_id) end

return {}
