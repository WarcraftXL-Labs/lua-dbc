---@meta
-- Generated LuaLS annotations for WeaponImpactSounds (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of WeaponImpactSounds in build 3.3.5.12340.
---@class dbc.row.v335.WeaponImpactSounds : RowProxy
---@field ID integer
---@field WeaponSubClassID integer
---@field ParrySoundType integer
---@field ImpactSoundID integer[]
---@field CritImpactSoundID integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.WeaponImpactSounds self
function row:SetID(value) end

---Gets the value of field 'WeaponSubClassID'.
---@return integer value
function row:GetWeaponSubClassID() end

---Sets the value of field 'WeaponSubClassID'.
---@param value integer
---@return dbc.row.v335.WeaponImpactSounds self
function row:SetWeaponSubClassID(value) end

---Navigates foreign relationship to 'WeaponSubClass' via 'WeaponSubClassID'.
---@return dbc.row.v335.WeaponSubClass|nil
function row:GetWeaponSubClass() end

---Creates a related 'WeaponSubClass' row and automatically links 'WeaponSubClassID'.
---@param data? table
---@return dbc.row.v335.WeaponSubClass
function row:CreateRelated(data) end

---Gets the value of field 'ParrySoundType'.
---@return integer value
function row:GetParrySoundType() end

---Sets the value of field 'ParrySoundType'.
---@param value integer
---@return dbc.row.v335.WeaponImpactSounds self
function row:SetParrySoundType(value) end

---Gets the value of field 'ImpactSoundID'.
---@return integer[] value
function row:GetImpactSoundID() end

---Sets the value of field 'ImpactSoundID'.
---@param value integer[]
---@return dbc.row.v335.WeaponImpactSounds self
function row:SetImpactSoundID(value) end

---Gets element at 1-based index in 'ImpactSoundID'.
---@param index integer
---@return integer value
function row:GetImpactSoundIDItem(index) end

---Navigates foreign relationship to 'SoundEntries' via 'ImpactSoundID'.
---@return dbc.row.v335.SoundEntries|nil
function row:GetImpactSound() end

---Creates a related 'SoundEntries' row and automatically links 'ImpactSoundID'.
---@param data? table
---@return dbc.row.v335.SoundEntries
function row:CreateRelated(data) end

---Gets the value of field 'CritImpactSoundID'.
---@return integer[] value
function row:GetCritImpactSoundID() end

---Sets the value of field 'CritImpactSoundID'.
---@param value integer[]
---@return dbc.row.v335.WeaponImpactSounds self
function row:SetCritImpactSoundID(value) end

---Gets element at 1-based index in 'CritImpactSoundID'.
---@param index integer
---@return integer value
function row:GetCritImpactSoundIDItem(index) end

---Navigates foreign relationship to 'SoundEntries' via 'CritImpactSoundID'.
---@return dbc.row.v335.SoundEntries|nil
function row:GetCritImpactSound() end

---Creates a related 'SoundEntries' row and automatically links 'CritImpactSoundID'.
---@param data? table
---@return dbc.row.v335.SoundEntries
function row:CreateRelated(data) end

---Table container for WeaponImpactSounds (Build 3.3.5.12340).
---@class dbc.Table.v335.WeaponImpactSounds : DbcTable
---@field [integer] dbc.row.v335.WeaponImpactSounds
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.WeaponImpactSounds
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.WeaponImpactSounds|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.WeaponImpactSounds
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.WeaponImpactSounds>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.WeaponImpactSounds[]
function tbl:GetByRelation(foreign_id) end

return {}
