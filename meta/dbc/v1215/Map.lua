---@meta
-- Generated LuaLS annotations for Map (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of Map in build 12.1.5.69594.
---@class dbc.row.v1215.Map : RowProxy
---@field ID integer
---@field Directory string reference to World\Map\ [...] \
---@field MapName_lang string
---@field MapDescription0_lang string Horde
---@field MapDescription1_lang string Alliance
---@field PvpShortDescription_lang string
---@field PvpLongDescription_lang string
---@field Corpse number[] Array of CorpsePosX/CorpsePosY
---@field MapType integer
---@field InstanceType integer Integer 0: none, 1: party, 2: raid, 3: pvp, 4: arena, >=5: none (official from "IsInInstance()")
---@field ExpansionID integer Vanilla: 0, BC: 1, WotLK: 2 # todo enum
---@field AreaTableID integer
---@field LoadingScreenID integer
---@field TimeOfDayOverride integer Set to -1 for everything but Orgrimmar and Dalaran arena. For those, the time of day will change to this.
---@field ParentMapID integer
---@field CosmeticParentMapID integer
---@field TimeOffset integer
---@field MinimapIconScale number
---@field CorpseMapID integer
---@field MaxPlayers integer
---@field WindSettingsID integer
---@field ZmpFileDataID integer
---@field WdtFileDataID integer
---@field NavigationMaxDistance integer default/if <= 0: 999, max ingame navigation pin distance
---@field PreloadFileDataID integer
---@field Flags integer[] &0x100: CanChangeDifficulty

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.Map self
function row:SetID(value) end

---Gets the value of field 'Directory'.
---@return string value
function row:GetDirectory() end

---Sets the value of field 'Directory'.
---@param value string
---@return dbc.row.v1215.Map self
function row:SetDirectory(value) end

---Gets the value of field 'MapName_lang'.
---@return string value
function row:GetMapName_lang() end

---Sets the value of field 'MapName_lang'.
---@param value string
---@return dbc.row.v1215.Map self
function row:SetMapName_lang(value) end

---Gets the value of field 'MapDescription0_lang'.
---@return string value
function row:GetMapDescription0_lang() end

---Sets the value of field 'MapDescription0_lang'.
---@param value string
---@return dbc.row.v1215.Map self
function row:SetMapDescription0_lang(value) end

---Gets the value of field 'MapDescription1_lang'.
---@return string value
function row:GetMapDescription1_lang() end

---Sets the value of field 'MapDescription1_lang'.
---@param value string
---@return dbc.row.v1215.Map self
function row:SetMapDescription1_lang(value) end

---Gets the value of field 'PvpShortDescription_lang'.
---@return string value
function row:GetPvpShortDescription_lang() end

---Sets the value of field 'PvpShortDescription_lang'.
---@param value string
---@return dbc.row.v1215.Map self
function row:SetPvpShortDescription_lang(value) end

---Gets the value of field 'PvpLongDescription_lang'.
---@return string value
function row:GetPvpLongDescription_lang() end

---Sets the value of field 'PvpLongDescription_lang'.
---@param value string
---@return dbc.row.v1215.Map self
function row:SetPvpLongDescription_lang(value) end

---Gets the value of field 'Corpse'.
---@return number[] value
function row:GetCorpse() end

---Sets the value of field 'Corpse'.
---@param value number[]
---@return dbc.row.v1215.Map self
function row:SetCorpse(value) end

---Gets element at 1-based index in 'Corpse'.
---@param index integer
---@return number value
function row:GetCorpseItem(index) end

---Gets the value of field 'MapType'.
---@return integer value
function row:GetMapType() end

---Sets the value of field 'MapType'.
---@param value integer
---@return dbc.row.v1215.Map self
function row:SetMapType(value) end

---Gets the value of field 'InstanceType'.
---@return integer value
function row:GetInstanceType() end

---Sets the value of field 'InstanceType'.
---@param value integer
---@return dbc.row.v1215.Map self
function row:SetInstanceType(value) end

---Gets the value of field 'ExpansionID'.
---@return integer value
function row:GetExpansionID() end

---Sets the value of field 'ExpansionID'.
---@param value integer
---@return dbc.row.v1215.Map self
function row:SetExpansionID(value) end

---Navigates foreign relationship to 'Expansion' via 'ExpansionID'.
---@return dbc.row.v1215.Expansion|nil
function row:GetExpansion() end

---Creates a related 'Expansion' row and automatically links 'ExpansionID'.
---@param data? table
---@return dbc.row.v1215.Expansion
function row:CreateRelated(data) end

---Gets the value of field 'AreaTableID'.
---@return integer value
function row:GetAreaTableID() end

---Sets the value of field 'AreaTableID'.
---@param value integer
---@return dbc.row.v1215.Map self
function row:SetAreaTableID(value) end

---Navigates foreign relationship to 'AreaTable' via 'AreaTableID'.
---@return dbc.row.v1215.AreaTable|nil
function row:GetAreaTable() end

---Creates a related 'AreaTable' row and automatically links 'AreaTableID'.
---@param data? table
---@return dbc.row.v1215.AreaTable
function row:CreateRelated(data) end

---Gets the value of field 'LoadingScreenID'.
---@return integer value
function row:GetLoadingScreenID() end

---Sets the value of field 'LoadingScreenID'.
---@param value integer
---@return dbc.row.v1215.Map self
function row:SetLoadingScreenID(value) end

---Navigates foreign relationship to 'LoadingScreens' via 'LoadingScreenID'.
---@return dbc.row.v1215.LoadingScreens|nil
function row:GetLoadingScreen() end

---Creates a related 'LoadingScreens' row and automatically links 'LoadingScreenID'.
---@param data? table
---@return dbc.row.v1215.LoadingScreens
function row:CreateRelated(data) end

---Gets the value of field 'TimeOfDayOverride'.
---@return integer value
function row:GetTimeOfDayOverride() end

---Sets the value of field 'TimeOfDayOverride'.
---@param value integer
---@return dbc.row.v1215.Map self
function row:SetTimeOfDayOverride(value) end

---Gets the value of field 'ParentMapID'.
---@return integer value
function row:GetParentMapID() end

---Sets the value of field 'ParentMapID'.
---@param value integer
---@return dbc.row.v1215.Map self
function row:SetParentMapID(value) end

---Navigates foreign relationship to 'Map' via 'ParentMapID'.
---@return dbc.row.v1215.Map|nil
function row:GetParentMap() end

---Creates a related 'Map' row and automatically links 'ParentMapID'.
---@param data? table
---@return dbc.row.v1215.Map
function row:CreateRelated(data) end

---Gets the value of field 'CosmeticParentMapID'.
---@return integer value
function row:GetCosmeticParentMapID() end

---Sets the value of field 'CosmeticParentMapID'.
---@param value integer
---@return dbc.row.v1215.Map self
function row:SetCosmeticParentMapID(value) end

---Navigates foreign relationship to 'Map' via 'CosmeticParentMapID'.
---@return dbc.row.v1215.Map|nil
function row:GetCosmeticParentMap() end

---Creates a related 'Map' row and automatically links 'CosmeticParentMapID'.
---@param data? table
---@return dbc.row.v1215.Map
function row:CreateRelated(data) end

---Gets the value of field 'TimeOffset'.
---@return integer value
function row:GetTimeOffset() end

---Sets the value of field 'TimeOffset'.
---@param value integer
---@return dbc.row.v1215.Map self
function row:SetTimeOffset(value) end

---Gets the value of field 'MinimapIconScale'.
---@return number value
function row:GetMinimapIconScale() end

---Sets the value of field 'MinimapIconScale'.
---@param value number
---@return dbc.row.v1215.Map self
function row:SetMinimapIconScale(value) end

---Gets the value of field 'CorpseMapID'.
---@return integer value
function row:GetCorpseMapID() end

---Sets the value of field 'CorpseMapID'.
---@param value integer
---@return dbc.row.v1215.Map self
function row:SetCorpseMapID(value) end

---Navigates foreign relationship to 'Map' via 'CorpseMapID'.
---@return dbc.row.v1215.Map|nil
function row:GetCorpseMap() end

---Creates a related 'Map' row and automatically links 'CorpseMapID'.
---@param data? table
---@return dbc.row.v1215.Map
function row:CreateRelated(data) end

---Gets the value of field 'MaxPlayers'.
---@return integer value
function row:GetMaxPlayers() end

---Sets the value of field 'MaxPlayers'.
---@param value integer
---@return dbc.row.v1215.Map self
function row:SetMaxPlayers(value) end

---Gets the value of field 'WindSettingsID'.
---@return integer value
function row:GetWindSettingsID() end

---Sets the value of field 'WindSettingsID'.
---@param value integer
---@return dbc.row.v1215.Map self
function row:SetWindSettingsID(value) end

---Navigates foreign relationship to 'WindSettings' via 'WindSettingsID'.
---@return dbc.row.v1215.WindSettings|nil
function row:GetWindSettings() end

---Creates a related 'WindSettings' row and automatically links 'WindSettingsID'.
---@param data? table
---@return dbc.row.v1215.WindSettings
function row:CreateRelated(data) end

---Gets the value of field 'ZmpFileDataID'.
---@return integer value
function row:GetZmpFileDataID() end

---Sets the value of field 'ZmpFileDataID'.
---@param value integer
---@return dbc.row.v1215.Map self
function row:SetZmpFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'ZmpFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetZmpFileData() end

---Creates a related 'FileData' row and automatically links 'ZmpFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'WdtFileDataID'.
---@return integer value
function row:GetWdtFileDataID() end

---Sets the value of field 'WdtFileDataID'.
---@param value integer
---@return dbc.row.v1215.Map self
function row:SetWdtFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'WdtFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetWdtFileData() end

---Creates a related 'FileData' row and automatically links 'WdtFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'NavigationMaxDistance'.
---@return integer value
function row:GetNavigationMaxDistance() end

---Sets the value of field 'NavigationMaxDistance'.
---@param value integer
---@return dbc.row.v1215.Map self
function row:SetNavigationMaxDistance(value) end

---Gets the value of field 'PreloadFileDataID'.
---@return integer value
function row:GetPreloadFileDataID() end

---Sets the value of field 'PreloadFileDataID'.
---@param value integer
---@return dbc.row.v1215.Map self
function row:SetPreloadFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'PreloadFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetPreloadFileData() end

---Creates a related 'FileData' row and automatically links 'PreloadFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer[] value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer[]
---@return dbc.row.v1215.Map self
function row:SetFlags(value) end

---Gets element at 1-based index in 'Flags'.
---@param index integer
---@return integer value
function row:GetFlagsItem(index) end

---Table container for Map (Build 12.1.5.69594).
---@class dbc.Table.v1215.Map : DbcTable
---@field [integer] dbc.row.v1215.Map
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.Map
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.Map|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.Map
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.Map>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.Map[]
function tbl:GetByRelation(foreign_id) end

return {}
