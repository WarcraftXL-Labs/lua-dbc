---@meta
-- Generated LuaLS annotations for GarrMssnBonusAbility (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GarrMssnBonusAbility in build 12.1.5.69594.
---@class dbc.row.v1215.GarrMssnBonusAbility : RowProxy
---@field ID integer
---@field GarrFollowerTypeID integer
---@field GarrMissionTextureID integer
---@field GarrAbilityID integer
---@field Radius number
---@field DurationSecs integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GarrMssnBonusAbility self
function row:SetID(value) end

---Gets the value of field 'GarrFollowerTypeID'.
---@return integer value
function row:GetGarrFollowerTypeID() end

---Sets the value of field 'GarrFollowerTypeID'.
---@param value integer
---@return dbc.row.v1215.GarrMssnBonusAbility self
function row:SetGarrFollowerTypeID(value) end

---Navigates foreign relationship to 'GarrFollowerType' via 'GarrFollowerTypeID'.
---@return dbc.row.v1215.GarrFollowerType|nil
function row:GetGarrFollowerType() end

---Creates a related 'GarrFollowerType' row and automatically links 'GarrFollowerTypeID'.
---@param data? table
---@return dbc.row.v1215.GarrFollowerType
function row:CreateRelated(data) end

---Gets the value of field 'GarrMissionTextureID'.
---@return integer value
function row:GetGarrMissionTextureID() end

---Sets the value of field 'GarrMissionTextureID'.
---@param value integer
---@return dbc.row.v1215.GarrMssnBonusAbility self
function row:SetGarrMissionTextureID(value) end

---Navigates foreign relationship to 'GarrMissionTexture' via 'GarrMissionTextureID'.
---@return dbc.row.v1215.GarrMissionTexture|nil
function row:GetGarrMissionTexture() end

---Creates a related 'GarrMissionTexture' row and automatically links 'GarrMissionTextureID'.
---@param data? table
---@return dbc.row.v1215.GarrMissionTexture
function row:CreateRelated(data) end

---Gets the value of field 'GarrAbilityID'.
---@return integer value
function row:GetGarrAbilityID() end

---Sets the value of field 'GarrAbilityID'.
---@param value integer
---@return dbc.row.v1215.GarrMssnBonusAbility self
function row:SetGarrAbilityID(value) end

---Navigates foreign relationship to 'GarrAbility' via 'GarrAbilityID'.
---@return dbc.row.v1215.GarrAbility|nil
function row:GetGarrAbility() end

---Creates a related 'GarrAbility' row and automatically links 'GarrAbilityID'.
---@param data? table
---@return dbc.row.v1215.GarrAbility
function row:CreateRelated(data) end

---Gets the value of field 'Radius'.
---@return number value
function row:GetRadius() end

---Sets the value of field 'Radius'.
---@param value number
---@return dbc.row.v1215.GarrMssnBonusAbility self
function row:SetRadius(value) end

---Gets the value of field 'DurationSecs'.
---@return integer value
function row:GetDurationSecs() end

---Sets the value of field 'DurationSecs'.
---@param value integer
---@return dbc.row.v1215.GarrMssnBonusAbility self
function row:SetDurationSecs(value) end

---Table container for GarrMssnBonusAbility (Build 12.1.5.69594).
---@class dbc.Table.v1215.GarrMssnBonusAbility : DbcTable
---@field [integer] dbc.row.v1215.GarrMssnBonusAbility
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GarrMssnBonusAbility
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GarrMssnBonusAbility|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GarrMssnBonusAbility
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GarrMssnBonusAbility>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GarrMssnBonusAbility[]
function tbl:GetByRelation(foreign_id) end

return {}
