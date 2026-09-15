---@meta
-- Generated LuaLS annotations for Weather (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of Weather in build 3.3.5.12340.
---@class dbc.row.v335.Weather : RowProxy
---@field ID integer
---@field AmbienceID integer
---@field EffectType integer
---@field TransitionSkyBox number
---@field EffectColor number[]
---@field EffectTexture string

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.Weather self
function row:SetID(value) end

---Gets the value of field 'AmbienceID'.
---@return integer value
function row:GetAmbienceID() end

---Sets the value of field 'AmbienceID'.
---@param value integer
---@return dbc.row.v335.Weather self
function row:SetAmbienceID(value) end

---Navigates foreign relationship to 'SoundEntries' via 'AmbienceID'.
---@return dbc.row.v335.SoundEntries|nil
function row:GetAmbience() end

---Creates a related 'SoundEntries' row and automatically links 'AmbienceID'.
---@param data? table
---@return dbc.row.v335.SoundEntries
function row:CreateRelated(data) end

---Gets the value of field 'EffectType'.
---@return integer value
function row:GetEffectType() end

---Sets the value of field 'EffectType'.
---@param value integer
---@return dbc.row.v335.Weather self
function row:SetEffectType(value) end

---Gets the value of field 'TransitionSkyBox'.
---@return number value
function row:GetTransitionSkyBox() end

---Sets the value of field 'TransitionSkyBox'.
---@param value number
---@return dbc.row.v335.Weather self
function row:SetTransitionSkyBox(value) end

---Gets the value of field 'EffectColor'.
---@return number[] value
function row:GetEffectColor() end

---Sets the value of field 'EffectColor'.
---@param value number[]
---@return dbc.row.v335.Weather self
function row:SetEffectColor(value) end

---Gets element at 1-based index in 'EffectColor'.
---@param index integer
---@return number value
function row:GetEffectColorItem(index) end

---Gets the value of field 'EffectTexture'.
---@return string value
function row:GetEffectTexture() end

---Sets the value of field 'EffectTexture'.
---@param value string
---@return dbc.row.v335.Weather self
function row:SetEffectTexture(value) end

---Table container for Weather (Build 3.3.5.12340).
---@class dbc.Table.v335.Weather : DbcTable
---@field [integer] dbc.row.v335.Weather
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.Weather
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.Weather|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.Weather
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.Weather>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.Weather[]
function tbl:GetByRelation(foreign_id) end

return {}
