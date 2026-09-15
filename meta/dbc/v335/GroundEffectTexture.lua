---@meta
-- Generated LuaLS annotations for GroundEffectTexture (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of GroundEffectTexture in build 3.3.5.12340.
---@class dbc.row.v335.GroundEffectTexture : RowProxy
---@field ID integer
---@field DoodadID integer[]
---@field DoodadWeight integer[]
---@field Density integer 8..24
---@field Sound integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.GroundEffectTexture self
function row:SetID(value) end

---Gets the value of field 'DoodadID'.
---@return integer[] value
function row:GetDoodadID() end

---Sets the value of field 'DoodadID'.
---@param value integer[]
---@return dbc.row.v335.GroundEffectTexture self
function row:SetDoodadID(value) end

---Gets element at 1-based index in 'DoodadID'.
---@param index integer
---@return integer value
function row:GetDoodadIDItem(index) end

---Navigates foreign relationship to 'Doodad' via 'DoodadID'.
---@return dbc.row.v335.Doodad|nil
function row:GetDoodad() end

---Creates a related 'Doodad' row and automatically links 'DoodadID'.
---@param data? table
---@return dbc.row.v335.Doodad
function row:CreateRelated(data) end

---Gets the value of field 'DoodadWeight'.
---@return integer[] value
function row:GetDoodadWeight() end

---Sets the value of field 'DoodadWeight'.
---@param value integer[]
---@return dbc.row.v335.GroundEffectTexture self
function row:SetDoodadWeight(value) end

---Gets element at 1-based index in 'DoodadWeight'.
---@param index integer
---@return integer value
function row:GetDoodadWeightItem(index) end

---Gets the value of field 'Density'.
---@return integer value
function row:GetDensity() end

---Sets the value of field 'Density'.
---@param value integer
---@return dbc.row.v335.GroundEffectTexture self
function row:SetDensity(value) end

---Gets the value of field 'Sound'.
---@return integer value
function row:GetSound() end

---Sets the value of field 'Sound'.
---@param value integer
---@return dbc.row.v335.GroundEffectTexture self
function row:SetSound(value) end

---Table container for GroundEffectTexture (Build 3.3.5.12340).
---@class dbc.Table.v335.GroundEffectTexture : DbcTable
---@field [integer] dbc.row.v335.GroundEffectTexture
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.GroundEffectTexture
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.GroundEffectTexture|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.GroundEffectTexture
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.GroundEffectTexture>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.GroundEffectTexture[]
function tbl:GetByRelation(foreign_id) end

return {}
