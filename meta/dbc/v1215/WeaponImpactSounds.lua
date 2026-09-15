---@meta
-- Generated LuaLS annotations for WeaponImpactSounds (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of WeaponImpactSounds in build 12.1.5.69594.
---@class dbc.row.v1215.WeaponImpactSounds : RowProxy
---@field ID integer
---@field WeaponSubClassID integer
---@field ParrySoundType integer
---@field ImpactSource integer
---@field ImpactSoundID integer[]
---@field CritImpactSoundID integer[]
---@field PierceImpactSoundID integer[]
---@field PierceCritImpactSoundID integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.WeaponImpactSounds self
function row:SetID(value) end

---Gets the value of field 'WeaponSubClassID'.
---@return integer value
function row:GetWeaponSubClassID() end

---Sets the value of field 'WeaponSubClassID'.
---@param value integer
---@return dbc.row.v1215.WeaponImpactSounds self
function row:SetWeaponSubClassID(value) end

---Navigates foreign relationship to 'WeaponSubClass' via 'WeaponSubClassID'.
---@return dbc.row.v1215.WeaponSubClass|nil
function row:GetWeaponSubClass() end

---Creates a related 'WeaponSubClass' row and automatically links 'WeaponSubClassID'.
---@param data? table
---@return dbc.row.v1215.WeaponSubClass
function row:CreateRelated(data) end

---Gets the value of field 'ParrySoundType'.
---@return integer value
function row:GetParrySoundType() end

---Sets the value of field 'ParrySoundType'.
---@param value integer
---@return dbc.row.v1215.WeaponImpactSounds self
function row:SetParrySoundType(value) end

---Gets the value of field 'ImpactSource'.
---@return integer value
function row:GetImpactSource() end

---Sets the value of field 'ImpactSource'.
---@param value integer
---@return dbc.row.v1215.WeaponImpactSounds self
function row:SetImpactSource(value) end

---Gets the value of field 'ImpactSoundID'.
---@return integer[] value
function row:GetImpactSoundID() end

---Sets the value of field 'ImpactSoundID'.
---@param value integer[]
---@return dbc.row.v1215.WeaponImpactSounds self
function row:SetImpactSoundID(value) end

---Gets element at 1-based index in 'ImpactSoundID'.
---@param index integer
---@return integer value
function row:GetImpactSoundIDItem(index) end

---Navigates foreign relationship to 'SoundEntries' via 'ImpactSoundID'.
---@return dbc.row.v1215.SoundEntries|nil
function row:GetImpactSound() end

---Creates a related 'SoundEntries' row and automatically links 'ImpactSoundID'.
---@param data? table
---@return dbc.row.v1215.SoundEntries
function row:CreateRelated(data) end

---Gets the value of field 'CritImpactSoundID'.
---@return integer[] value
function row:GetCritImpactSoundID() end

---Sets the value of field 'CritImpactSoundID'.
---@param value integer[]
---@return dbc.row.v1215.WeaponImpactSounds self
function row:SetCritImpactSoundID(value) end

---Gets element at 1-based index in 'CritImpactSoundID'.
---@param index integer
---@return integer value
function row:GetCritImpactSoundIDItem(index) end

---Navigates foreign relationship to 'SoundEntries' via 'CritImpactSoundID'.
---@return dbc.row.v1215.SoundEntries|nil
function row:GetCritImpactSound() end

---Creates a related 'SoundEntries' row and automatically links 'CritImpactSoundID'.
---@param data? table
---@return dbc.row.v1215.SoundEntries
function row:CreateRelated(data) end

---Gets the value of field 'PierceImpactSoundID'.
---@return integer[] value
function row:GetPierceImpactSoundID() end

---Sets the value of field 'PierceImpactSoundID'.
---@param value integer[]
---@return dbc.row.v1215.WeaponImpactSounds self
function row:SetPierceImpactSoundID(value) end

---Gets element at 1-based index in 'PierceImpactSoundID'.
---@param index integer
---@return integer value
function row:GetPierceImpactSoundIDItem(index) end

---Navigates foreign relationship to 'PierceImpactSound' via 'PierceImpactSoundID'.
---@return dbc.row.v1215.PierceImpactSound|nil
function row:GetPierceImpactSound() end

---Creates a related 'PierceImpactSound' row and automatically links 'PierceImpactSoundID'.
---@param data? table
---@return dbc.row.v1215.PierceImpactSound
function row:CreateRelated(data) end

---Gets the value of field 'PierceCritImpactSoundID'.
---@return integer[] value
function row:GetPierceCritImpactSoundID() end

---Sets the value of field 'PierceCritImpactSoundID'.
---@param value integer[]
---@return dbc.row.v1215.WeaponImpactSounds self
function row:SetPierceCritImpactSoundID(value) end

---Gets element at 1-based index in 'PierceCritImpactSoundID'.
---@param index integer
---@return integer value
function row:GetPierceCritImpactSoundIDItem(index) end

---Navigates foreign relationship to 'PierceCritImpactSound' via 'PierceCritImpactSoundID'.
---@return dbc.row.v1215.PierceCritImpactSound|nil
function row:GetPierceCritImpactSound() end

---Creates a related 'PierceCritImpactSound' row and automatically links 'PierceCritImpactSoundID'.
---@param data? table
---@return dbc.row.v1215.PierceCritImpactSound
function row:CreateRelated(data) end

---Table container for WeaponImpactSounds (Build 12.1.5.69594).
---@class dbc.Table.v1215.WeaponImpactSounds : DbcTable
---@field [integer] dbc.row.v1215.WeaponImpactSounds
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.WeaponImpactSounds
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.WeaponImpactSounds|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.WeaponImpactSounds
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.WeaponImpactSounds>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.WeaponImpactSounds[]
function tbl:GetByRelation(foreign_id) end

return {}
