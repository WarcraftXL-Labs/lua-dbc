---@meta
-- Generated LuaLS annotations for WeaponSwingSounds2 (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of WeaponSwingSounds2 in build 3.3.5.12340.
---@class dbc.row.v335.WeaponSwingSounds2 : RowProxy
---@field ID integer
---@field SwingType integer
---@field Crit integer
---@field SoundID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.WeaponSwingSounds2 self
function row:SetID(value) end

---Gets the value of field 'SwingType'.
---@return integer value
function row:GetSwingType() end

---Sets the value of field 'SwingType'.
---@param value integer
---@return dbc.row.v335.WeaponSwingSounds2 self
function row:SetSwingType(value) end

---Gets the value of field 'Crit'.
---@return integer value
function row:GetCrit() end

---Sets the value of field 'Crit'.
---@param value integer
---@return dbc.row.v335.WeaponSwingSounds2 self
function row:SetCrit(value) end

---Gets the value of field 'SoundID'.
---@return integer value
function row:GetSoundID() end

---Sets the value of field 'SoundID'.
---@param value integer
---@return dbc.row.v335.WeaponSwingSounds2 self
function row:SetSoundID(value) end

---Navigates foreign relationship to 'SoundEntries' via 'SoundID'.
---@return dbc.row.v335.SoundEntries|nil
function row:GetSound() end

---Creates a related 'SoundEntries' row and automatically links 'SoundID'.
---@param data? table
---@return dbc.row.v335.SoundEntries
function row:CreateRelated(data) end

---Table container for WeaponSwingSounds2 (Build 3.3.5.12340).
---@class dbc.Table.v335.WeaponSwingSounds2 : DbcTable
---@field [integer] dbc.row.v335.WeaponSwingSounds2
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.WeaponSwingSounds2
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.WeaponSwingSounds2|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.WeaponSwingSounds2
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.WeaponSwingSounds2>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.WeaponSwingSounds2[]
function tbl:GetByRelation(foreign_id) end

return {}
