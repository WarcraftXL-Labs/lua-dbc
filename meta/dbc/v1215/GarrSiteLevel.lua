---@meta
-- Generated LuaLS annotations for GarrSiteLevel (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GarrSiteLevel in build 12.1.5.69594.
---@class dbc.row.v1215.GarrSiteLevel : RowProxy
---@field ID integer
---@field TownHallUiPos number[]
---@field GarrSiteID integer
---@field GarrLevel integer
---@field MapID integer
---@field UpgradeMovieID integer
---@field UiTextureKitID integer
---@field MaxBuildingLevel integer
---@field UpgradeCost integer
---@field UpgradeGoldCost integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GarrSiteLevel self
function row:SetID(value) end

---Gets the value of field 'TownHallUiPos'.
---@return number[] value
function row:GetTownHallUiPos() end

---Sets the value of field 'TownHallUiPos'.
---@param value number[]
---@return dbc.row.v1215.GarrSiteLevel self
function row:SetTownHallUiPos(value) end

---Gets element at 1-based index in 'TownHallUiPos'.
---@param index integer
---@return number value
function row:GetTownHallUiPosItem(index) end

---Gets the value of field 'GarrSiteID'.
---@return integer value
function row:GetGarrSiteID() end

---Sets the value of field 'GarrSiteID'.
---@param value integer
---@return dbc.row.v1215.GarrSiteLevel self
function row:SetGarrSiteID(value) end

---Navigates foreign relationship to 'GarrSite' via 'GarrSiteID'.
---@return dbc.row.v1215.GarrSite|nil
function row:GetGarrSite() end

---Creates a related 'GarrSite' row and automatically links 'GarrSiteID'.
---@param data? table
---@return dbc.row.v1215.GarrSite
function row:CreateRelated(data) end

---Gets the value of field 'GarrLevel'.
---@return integer value
function row:GetGarrLevel() end

---Sets the value of field 'GarrLevel'.
---@param value integer
---@return dbc.row.v1215.GarrSiteLevel self
function row:SetGarrLevel(value) end

---Gets the value of field 'MapID'.
---@return integer value
function row:GetMapID() end

---Sets the value of field 'MapID'.
---@param value integer
---@return dbc.row.v1215.GarrSiteLevel self
function row:SetMapID(value) end

---Navigates foreign relationship to 'Map' via 'MapID'.
---@return dbc.row.v1215.Map|nil
function row:GetMap() end

---Creates a related 'Map' row and automatically links 'MapID'.
---@param data? table
---@return dbc.row.v1215.Map
function row:CreateRelated(data) end

---Gets the value of field 'UpgradeMovieID'.
---@return integer value
function row:GetUpgradeMovieID() end

---Sets the value of field 'UpgradeMovieID'.
---@param value integer
---@return dbc.row.v1215.GarrSiteLevel self
function row:SetUpgradeMovieID(value) end

---Navigates foreign relationship to 'Movie' via 'UpgradeMovieID'.
---@return dbc.row.v1215.Movie|nil
function row:GetUpgradeMovie() end

---Creates a related 'Movie' row and automatically links 'UpgradeMovieID'.
---@param data? table
---@return dbc.row.v1215.Movie
function row:CreateRelated(data) end

---Gets the value of field 'UiTextureKitID'.
---@return integer value
function row:GetUiTextureKitID() end

---Sets the value of field 'UiTextureKitID'.
---@param value integer
---@return dbc.row.v1215.GarrSiteLevel self
function row:SetUiTextureKitID(value) end

---Navigates foreign relationship to 'UiTextureKit' via 'UiTextureKitID'.
---@return dbc.row.v1215.UiTextureKit|nil
function row:GetUiTextureKit() end

---Creates a related 'UiTextureKit' row and automatically links 'UiTextureKitID'.
---@param data? table
---@return dbc.row.v1215.UiTextureKit
function row:CreateRelated(data) end

---Gets the value of field 'MaxBuildingLevel'.
---@return integer value
function row:GetMaxBuildingLevel() end

---Sets the value of field 'MaxBuildingLevel'.
---@param value integer
---@return dbc.row.v1215.GarrSiteLevel self
function row:SetMaxBuildingLevel(value) end

---Gets the value of field 'UpgradeCost'.
---@return integer value
function row:GetUpgradeCost() end

---Sets the value of field 'UpgradeCost'.
---@param value integer
---@return dbc.row.v1215.GarrSiteLevel self
function row:SetUpgradeCost(value) end

---Gets the value of field 'UpgradeGoldCost'.
---@return integer value
function row:GetUpgradeGoldCost() end

---Sets the value of field 'UpgradeGoldCost'.
---@param value integer
---@return dbc.row.v1215.GarrSiteLevel self
function row:SetUpgradeGoldCost(value) end

---Table container for GarrSiteLevel (Build 12.1.5.69594).
---@class dbc.Table.v1215.GarrSiteLevel : DbcTable
---@field [integer] dbc.row.v1215.GarrSiteLevel
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GarrSiteLevel
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GarrSiteLevel|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GarrSiteLevel
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GarrSiteLevel>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GarrSiteLevel[]
function tbl:GetByRelation(foreign_id) end

return {}
