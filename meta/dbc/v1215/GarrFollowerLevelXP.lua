---@meta
-- Generated LuaLS annotations for GarrFollowerLevelXP (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GarrFollowerLevelXP in build 12.1.5.69594.
---@class dbc.row.v1215.GarrFollowerLevelXP : RowProxy
---@field ID integer
---@field GarrFollowerTypeID integer
---@field FollowerLevel integer
---@field XpToNextLevel integer
---@field ShipmentXP integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GarrFollowerLevelXP self
function row:SetID(value) end

---Gets the value of field 'GarrFollowerTypeID'.
---@return integer value
function row:GetGarrFollowerTypeID() end

---Sets the value of field 'GarrFollowerTypeID'.
---@param value integer
---@return dbc.row.v1215.GarrFollowerLevelXP self
function row:SetGarrFollowerTypeID(value) end

---Navigates foreign relationship to 'GarrFollowerType' via 'GarrFollowerTypeID'.
---@return dbc.row.v1215.GarrFollowerType|nil
function row:GetGarrFollowerType() end

---Creates a related 'GarrFollowerType' row and automatically links 'GarrFollowerTypeID'.
---@param data? table
---@return dbc.row.v1215.GarrFollowerType
function row:CreateRelated(data) end

---Gets the value of field 'FollowerLevel'.
---@return integer value
function row:GetFollowerLevel() end

---Sets the value of field 'FollowerLevel'.
---@param value integer
---@return dbc.row.v1215.GarrFollowerLevelXP self
function row:SetFollowerLevel(value) end

---Gets the value of field 'XpToNextLevel'.
---@return integer value
function row:GetXpToNextLevel() end

---Sets the value of field 'XpToNextLevel'.
---@param value integer
---@return dbc.row.v1215.GarrFollowerLevelXP self
function row:SetXpToNextLevel(value) end

---Gets the value of field 'ShipmentXP'.
---@return integer value
function row:GetShipmentXP() end

---Sets the value of field 'ShipmentXP'.
---@param value integer
---@return dbc.row.v1215.GarrFollowerLevelXP self
function row:SetShipmentXP(value) end

---Table container for GarrFollowerLevelXP (Build 12.1.5.69594).
---@class dbc.Table.v1215.GarrFollowerLevelXP : DbcTable
---@field [integer] dbc.row.v1215.GarrFollowerLevelXP
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GarrFollowerLevelXP
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GarrFollowerLevelXP|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GarrFollowerLevelXP
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GarrFollowerLevelXP>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GarrFollowerLevelXP[]
function tbl:GetByRelation(foreign_id) end

return {}
