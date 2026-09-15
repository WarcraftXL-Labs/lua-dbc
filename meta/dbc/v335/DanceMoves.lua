---@meta
-- Generated LuaLS annotations for DanceMoves (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of DanceMoves in build 3.3.5.12340.
---@class dbc.row.v335.DanceMoves : RowProxy
---@field ID integer
---@field Type integer
---@field Param integer
---@field Fallback integer
---@field Racemask integer
---@field Internal_name string
---@field Name_lang string pre-8622 this uses the old 9 locale locstring format
---@field LockID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.DanceMoves self
function row:SetID(value) end

---Gets the value of field 'Type'.
---@return integer value
function row:GetType() end

---Sets the value of field 'Type'.
---@param value integer
---@return dbc.row.v335.DanceMoves self
function row:SetType(value) end

---Gets the value of field 'Param'.
---@return integer value
function row:GetParam() end

---Sets the value of field 'Param'.
---@param value integer
---@return dbc.row.v335.DanceMoves self
function row:SetParam(value) end

---Gets the value of field 'Fallback'.
---@return integer value
function row:GetFallback() end

---Sets the value of field 'Fallback'.
---@param value integer
---@return dbc.row.v335.DanceMoves self
function row:SetFallback(value) end

---Gets the value of field 'Racemask'.
---@return integer value
function row:GetRacemask() end

---Sets the value of field 'Racemask'.
---@param value integer
---@return dbc.row.v335.DanceMoves self
function row:SetRacemask(value) end

---Gets the value of field 'Internal_name'.
---@return string value
function row:GetInternal_name() end

---Sets the value of field 'Internal_name'.
---@param value string
---@return dbc.row.v335.DanceMoves self
function row:SetInternal_name(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v335.DanceMoves self
function row:SetName_lang(value) end

---Gets the value of field 'LockID'.
---@return integer value
function row:GetLockID() end

---Sets the value of field 'LockID'.
---@param value integer
---@return dbc.row.v335.DanceMoves self
function row:SetLockID(value) end

---Navigates foreign relationship to 'Lock' via 'LockID'.
---@return dbc.row.v335.Lock|nil
function row:GetLock() end

---Creates a related 'Lock' row and automatically links 'LockID'.
---@param data? table
---@return dbc.row.v335.Lock
function row:CreateRelated(data) end

---Table container for DanceMoves (Build 3.3.5.12340).
---@class dbc.Table.v335.DanceMoves : DbcTable
---@field [integer] dbc.row.v335.DanceMoves
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.DanceMoves
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.DanceMoves|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.DanceMoves
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.DanceMoves>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.DanceMoves[]
function tbl:GetByRelation(foreign_id) end

return {}
