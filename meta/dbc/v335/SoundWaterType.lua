---@meta
-- Generated LuaLS annotations for SoundWaterType (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of SoundWaterType in build 3.3.5.12340.
---@class dbc.row.v335.SoundWaterType : RowProxy
---@field ID integer
---@field SoundType integer per soundType, exactly one soundSubtype needs to be given
---@field SoundSubtype integer 0, 4 or 8; client reads (soundSubtype >> 2) & 3
---@field SoundID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.SoundWaterType self
function row:SetID(value) end

---Gets the value of field 'SoundType'.
---@return integer value
function row:GetSoundType() end

---Sets the value of field 'SoundType'.
---@param value integer
---@return dbc.row.v335.SoundWaterType self
function row:SetSoundType(value) end

---Gets the value of field 'SoundSubtype'.
---@return integer value
function row:GetSoundSubtype() end

---Sets the value of field 'SoundSubtype'.
---@param value integer
---@return dbc.row.v335.SoundWaterType self
function row:SetSoundSubtype(value) end

---Gets the value of field 'SoundID'.
---@return integer value
function row:GetSoundID() end

---Sets the value of field 'SoundID'.
---@param value integer
---@return dbc.row.v335.SoundWaterType self
function row:SetSoundID(value) end

---Navigates foreign relationship to 'SoundEntries' via 'SoundID'.
---@return dbc.row.v335.SoundEntries|nil
function row:GetSound() end

---Creates a related 'SoundEntries' row and automatically links 'SoundID'.
---@param data? table
---@return dbc.row.v335.SoundEntries
function row:CreateRelated(data) end

---Table container for SoundWaterType (Build 3.3.5.12340).
---@class dbc.Table.v335.SoundWaterType : DbcTable
---@field [integer] dbc.row.v335.SoundWaterType
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.SoundWaterType
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.SoundWaterType|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.SoundWaterType
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.SoundWaterType>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.SoundWaterType[]
function tbl:GetByRelation(foreign_id) end

return {}
