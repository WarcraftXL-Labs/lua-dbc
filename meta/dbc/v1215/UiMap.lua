---@meta
-- Generated LuaLS annotations for UiMap (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of UiMap in build 12.1.5.69594.
---@class dbc.row.v1215.UiMap : RowProxy
---@field Name_lang string
---@field ID integer
---@field ParentUiMapID integer
---@field Flags integer &0x1: NoHighlight, &0x2: ShowOverlays, &0x4: ShowTaxiNodes, &0x8: GarrisonMap, &0x10: FallbackToParentMap, &0x20: NoHighlightTexture, &0x40: ShowTaskObjectives, &0x80: NoWorldPositions, &0x100: HideArchaeologyDigs, &0x200: ??? (Deprecated), &0x400: HideIcons, &0x800: HideVignettes, &0x1000: ForceAllOverlayExplored, &0x2000: FlightMapShowZoomOut, &0x4000: FlightMapAutoZoom, &0x8000: ForceOnNavbar, &0x10000: AlwaysAllowUserWaypoints
---@field System integer 0 = World, 1 = Taxi, 2 = Adventure
---@field Type integer 0 = Cosmic, 1 = World, 2 = Continent, 3 = Zone, 4 = Dungeon, 5 = Micro, 6 = Orphan
---@field BountySetID integer
---@field BountyDisplayLocation integer
---@field VisibilityPlayerConditionID integer
---@field HelpTextPosition integer
---@field BkgAtlasID integer
---@field AlternateUiMapGroup integer
---@field ContentTuningID integer
---@field AdventureMapTextureKitID integer
---@field MapArtZoneTextPosition integer 0 = None, 1 = BottomLeft, 2 = BottomRight, 3 = TopLeft, 4 = TopRight

local row = {}

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.UiMap self
function row:SetName_lang(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.UiMap self
function row:SetID(value) end

---Gets the value of field 'ParentUiMapID'.
---@return integer value
function row:GetParentUiMapID() end

---Sets the value of field 'ParentUiMapID'.
---@param value integer
---@return dbc.row.v1215.UiMap self
function row:SetParentUiMapID(value) end

---Navigates foreign relationship to 'UiMap' via 'ParentUiMapID'.
---@return dbc.row.v1215.UiMap|nil
function row:GetParentUiMap() end

---Creates a related 'UiMap' row and automatically links 'ParentUiMapID'.
---@param data? table
---@return dbc.row.v1215.UiMap
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.UiMap self
function row:SetFlags(value) end

---Gets the value of field 'System'.
---@return integer value
function row:GetSystem() end

---Sets the value of field 'System'.
---@param value integer
---@return dbc.row.v1215.UiMap self
function row:SetSystem(value) end

---Gets the value of field 'Type'.
---@return integer value
function row:GetType() end

---Sets the value of field 'Type'.
---@param value integer
---@return dbc.row.v1215.UiMap self
function row:SetType(value) end

---Gets the value of field 'BountySetID'.
---@return integer value
function row:GetBountySetID() end

---Sets the value of field 'BountySetID'.
---@param value integer
---@return dbc.row.v1215.UiMap self
function row:SetBountySetID(value) end

---Navigates foreign relationship to 'BountySet' via 'BountySetID'.
---@return dbc.row.v1215.BountySet|nil
function row:GetBountySet() end

---Creates a related 'BountySet' row and automatically links 'BountySetID'.
---@param data? table
---@return dbc.row.v1215.BountySet
function row:CreateRelated(data) end

---Gets the value of field 'BountyDisplayLocation'.
---@return integer value
function row:GetBountyDisplayLocation() end

---Sets the value of field 'BountyDisplayLocation'.
---@param value integer
---@return dbc.row.v1215.UiMap self
function row:SetBountyDisplayLocation(value) end

---Gets the value of field 'VisibilityPlayerConditionID'.
---@return integer value
function row:GetVisibilityPlayerConditionID() end

---Sets the value of field 'VisibilityPlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.UiMap self
function row:SetVisibilityPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'VisibilityPlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetVisibilityPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'VisibilityPlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'HelpTextPosition'.
---@return integer value
function row:GetHelpTextPosition() end

---Sets the value of field 'HelpTextPosition'.
---@param value integer
---@return dbc.row.v1215.UiMap self
function row:SetHelpTextPosition(value) end

---Gets the value of field 'BkgAtlasID'.
---@return integer value
function row:GetBkgAtlasID() end

---Sets the value of field 'BkgAtlasID'.
---@param value integer
---@return dbc.row.v1215.UiMap self
function row:SetBkgAtlasID(value) end

---Navigates foreign relationship to 'UiTextureAtlasElement' via 'BkgAtlasID'.
---@return dbc.row.v1215.UiTextureAtlasElement|nil
function row:GetBkgAtlas() end

---Creates a related 'UiTextureAtlasElement' row and automatically links 'BkgAtlasID'.
---@param data? table
---@return dbc.row.v1215.UiTextureAtlasElement
function row:CreateRelated(data) end

---Gets the value of field 'AlternateUiMapGroup'.
---@return integer value
function row:GetAlternateUiMapGroup() end

---Sets the value of field 'AlternateUiMapGroup'.
---@param value integer
---@return dbc.row.v1215.UiMap self
function row:SetAlternateUiMapGroup(value) end

---Gets the value of field 'ContentTuningID'.
---@return integer value
function row:GetContentTuningID() end

---Sets the value of field 'ContentTuningID'.
---@param value integer
---@return dbc.row.v1215.UiMap self
function row:SetContentTuningID(value) end

---Navigates foreign relationship to 'ContentTuning' via 'ContentTuningID'.
---@return dbc.row.v1215.ContentTuning|nil
function row:GetContentTuning() end

---Creates a related 'ContentTuning' row and automatically links 'ContentTuningID'.
---@param data? table
---@return dbc.row.v1215.ContentTuning
function row:CreateRelated(data) end

---Gets the value of field 'AdventureMapTextureKitID'.
---@return integer value
function row:GetAdventureMapTextureKitID() end

---Sets the value of field 'AdventureMapTextureKitID'.
---@param value integer
---@return dbc.row.v1215.UiMap self
function row:SetAdventureMapTextureKitID(value) end

---Navigates foreign relationship to 'UiTextureKit' via 'AdventureMapTextureKitID'.
---@return dbc.row.v1215.UiTextureKit|nil
function row:GetAdventureMapTextureKit() end

---Creates a related 'UiTextureKit' row and automatically links 'AdventureMapTextureKitID'.
---@param data? table
---@return dbc.row.v1215.UiTextureKit
function row:CreateRelated(data) end

---Gets the value of field 'MapArtZoneTextPosition'.
---@return integer value
function row:GetMapArtZoneTextPosition() end

---Sets the value of field 'MapArtZoneTextPosition'.
---@param value integer
---@return dbc.row.v1215.UiMap self
function row:SetMapArtZoneTextPosition(value) end

---Table container for UiMap (Build 12.1.5.69594).
---@class dbc.Table.v1215.UiMap : DbcTable
---@field [integer] dbc.row.v1215.UiMap
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.UiMap
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.UiMap|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.UiMap
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.UiMap>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.UiMap[]
function tbl:GetByRelation(foreign_id) end

return {}
