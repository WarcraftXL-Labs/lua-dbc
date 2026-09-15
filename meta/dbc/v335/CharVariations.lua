---@meta
-- Generated LuaLS annotations for CharVariations (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of CharVariations in build 3.3.5.12340.
---@class dbc.row.v335.CharVariations : RowProxy
---@field RaceID integer
---@field SexID integer
---@field TextureHoldLayer integer[]

local row = {}

---Gets the value of field 'RaceID'.
---@return integer value
function row:GetRaceID() end

---Sets the value of field 'RaceID'.
---@param value integer
---@return dbc.row.v335.CharVariations self
function row:SetRaceID(value) end

---Navigates foreign relationship to 'ChrRaces' via 'RaceID'.
---@return dbc.row.v335.ChrRaces|nil
function row:GetRace() end

---Creates a related 'ChrRaces' row and automatically links 'RaceID'.
---@param data? table
---@return dbc.row.v335.ChrRaces
function row:CreateRelated(data) end

---Gets the value of field 'SexID'.
---@return integer value
function row:GetSexID() end

---Sets the value of field 'SexID'.
---@param value integer
---@return dbc.row.v335.CharVariations self
function row:SetSexID(value) end

---Navigates foreign relationship to 'Sex' via 'SexID'.
---@return dbc.row.v335.Sex|nil
function row:GetSex() end

---Creates a related 'Sex' row and automatically links 'SexID'.
---@param data? table
---@return dbc.row.v335.Sex
function row:CreateRelated(data) end

---Gets the value of field 'TextureHoldLayer'.
---@return integer[] value
function row:GetTextureHoldLayer() end

---Sets the value of field 'TextureHoldLayer'.
---@param value integer[]
---@return dbc.row.v335.CharVariations self
function row:SetTextureHoldLayer(value) end

---Gets element at 1-based index in 'TextureHoldLayer'.
---@param index integer
---@return integer value
function row:GetTextureHoldLayerItem(index) end

---Table container for CharVariations (Build 3.3.5.12340).
---@class dbc.Table.v335.CharVariations : DbcTable
---@field [integer] dbc.row.v335.CharVariations
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.CharVariations
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.CharVariations|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.CharVariations
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.CharVariations>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.CharVariations[]
function tbl:GetByRelation(foreign_id) end

return {}
