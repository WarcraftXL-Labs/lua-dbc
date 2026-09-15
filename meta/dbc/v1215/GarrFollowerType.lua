---@meta
-- Generated LuaLS annotations for GarrFollowerType (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GarrFollowerType in build 12.1.5.69594.
---@class dbc.row.v1215.GarrFollowerType : RowProxy
---@field ID integer
---@field GarrTypeID integer
---@field MaxFollowers integer
---@field MaxFollowerBuildingType integer
---@field MaxItemLevel integer
---@field LevelRangeBias integer
---@field ItemLevelRangeBias integer
---@field Flags integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GarrFollowerType self
function row:SetID(value) end

---Gets the value of field 'GarrTypeID'.
---@return integer value
function row:GetGarrTypeID() end

---Sets the value of field 'GarrTypeID'.
---@param value integer
---@return dbc.row.v1215.GarrFollowerType self
function row:SetGarrTypeID(value) end

---Navigates foreign relationship to 'GarrType' via 'GarrTypeID'.
---@return dbc.row.v1215.GarrType|nil
function row:GetGarrType() end

---Creates a related 'GarrType' row and automatically links 'GarrTypeID'.
---@param data? table
---@return dbc.row.v1215.GarrType
function row:CreateRelated(data) end

---Gets the value of field 'MaxFollowers'.
---@return integer value
function row:GetMaxFollowers() end

---Sets the value of field 'MaxFollowers'.
---@param value integer
---@return dbc.row.v1215.GarrFollowerType self
function row:SetMaxFollowers(value) end

---Gets the value of field 'MaxFollowerBuildingType'.
---@return integer value
function row:GetMaxFollowerBuildingType() end

---Sets the value of field 'MaxFollowerBuildingType'.
---@param value integer
---@return dbc.row.v1215.GarrFollowerType self
function row:SetMaxFollowerBuildingType(value) end

---Gets the value of field 'MaxItemLevel'.
---@return integer value
function row:GetMaxItemLevel() end

---Sets the value of field 'MaxItemLevel'.
---@param value integer
---@return dbc.row.v1215.GarrFollowerType self
function row:SetMaxItemLevel(value) end

---Gets the value of field 'LevelRangeBias'.
---@return integer value
function row:GetLevelRangeBias() end

---Sets the value of field 'LevelRangeBias'.
---@param value integer
---@return dbc.row.v1215.GarrFollowerType self
function row:SetLevelRangeBias(value) end

---Gets the value of field 'ItemLevelRangeBias'.
---@return integer value
function row:GetItemLevelRangeBias() end

---Sets the value of field 'ItemLevelRangeBias'.
---@param value integer
---@return dbc.row.v1215.GarrFollowerType self
function row:SetItemLevelRangeBias(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.GarrFollowerType self
function row:SetFlags(value) end

---Table container for GarrFollowerType (Build 12.1.5.69594).
---@class dbc.Table.v1215.GarrFollowerType : DbcTable
---@field [integer] dbc.row.v1215.GarrFollowerType
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GarrFollowerType
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GarrFollowerType|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GarrFollowerType
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GarrFollowerType>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GarrFollowerType[]
function tbl:GetByRelation(foreign_id) end

return {}
