---@meta
-- Generated LuaLS annotations for GameObjectDisplayInfo (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of GameObjectDisplayInfo in build 3.3.5.12340.
---@class dbc.row.v335.GameObjectDisplayInfo : RowProxy
---@field ID integer
---@field ModelName string
---@field Sound integer[]
---@field GeoBoxMin number[]
---@field GeoBoxMax number[]
---@field ObjectEffectPackageID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.GameObjectDisplayInfo self
function row:SetID(value) end

---Gets the value of field 'ModelName'.
---@return string value
function row:GetModelName() end

---Sets the value of field 'ModelName'.
---@param value string
---@return dbc.row.v335.GameObjectDisplayInfo self
function row:SetModelName(value) end

---Gets the value of field 'Sound'.
---@return integer[] value
function row:GetSound() end

---Sets the value of field 'Sound'.
---@param value integer[]
---@return dbc.row.v335.GameObjectDisplayInfo self
function row:SetSound(value) end

---Gets element at 1-based index in 'Sound'.
---@param index integer
---@return integer value
function row:GetSoundItem(index) end

---Gets the value of field 'GeoBoxMin'.
---@return number[] value
function row:GetGeoBoxMin() end

---Sets the value of field 'GeoBoxMin'.
---@param value number[]
---@return dbc.row.v335.GameObjectDisplayInfo self
function row:SetGeoBoxMin(value) end

---Gets element at 1-based index in 'GeoBoxMin'.
---@param index integer
---@return number value
function row:GetGeoBoxMinItem(index) end

---Gets the value of field 'GeoBoxMax'.
---@return number[] value
function row:GetGeoBoxMax() end

---Sets the value of field 'GeoBoxMax'.
---@param value number[]
---@return dbc.row.v335.GameObjectDisplayInfo self
function row:SetGeoBoxMax(value) end

---Gets element at 1-based index in 'GeoBoxMax'.
---@param index integer
---@return number value
function row:GetGeoBoxMaxItem(index) end

---Gets the value of field 'ObjectEffectPackageID'.
---@return integer value
function row:GetObjectEffectPackageID() end

---Sets the value of field 'ObjectEffectPackageID'.
---@param value integer
---@return dbc.row.v335.GameObjectDisplayInfo self
function row:SetObjectEffectPackageID(value) end

---Navigates foreign relationship to 'ObjectEffectPackage' via 'ObjectEffectPackageID'.
---@return dbc.row.v335.ObjectEffectPackage|nil
function row:GetObjectEffectPackage() end

---Creates a related 'ObjectEffectPackage' row and automatically links 'ObjectEffectPackageID'.
---@param data? table
---@return dbc.row.v335.ObjectEffectPackage
function row:CreateRelated(data) end

---Table container for GameObjectDisplayInfo (Build 3.3.5.12340).
---@class dbc.Table.v335.GameObjectDisplayInfo : DbcTable
---@field [integer] dbc.row.v335.GameObjectDisplayInfo
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.GameObjectDisplayInfo
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.GameObjectDisplayInfo|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.GameObjectDisplayInfo
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.GameObjectDisplayInfo>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.GameObjectDisplayInfo[]
function tbl:GetByRelation(foreign_id) end

return {}
