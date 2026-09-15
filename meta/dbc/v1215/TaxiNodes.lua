---@meta
-- Generated LuaLS annotations for TaxiNodes (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of TaxiNodes in build 12.1.5.69594.
---@class dbc.row.v1215.TaxiNodes : RowProxy
---@field Name_lang string
---@field Pos number[]
---@field MapOffset number[]
---@field FlightMapOffset number[]
---@field ID integer
---@field ContinentID integer
---@field ConditionID integer
---@field CharacterBitNumber integer
---@field Flags integer
---@field UiTextureKitID integer
---@field MinimapAtlasMemberID integer
---@field Facing number
---@field SpecialIconConditionID integer
---@field VisibilityConditionID integer
---@field MountCreatureID integer[]

local row = {}

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.TaxiNodes self
function row:SetName_lang(value) end

---Gets the value of field 'Pos'.
---@return number[] value
function row:GetPos() end

---Sets the value of field 'Pos'.
---@param value number[]
---@return dbc.row.v1215.TaxiNodes self
function row:SetPos(value) end

---Gets element at 1-based index in 'Pos'.
---@param index integer
---@return number value
function row:GetPosItem(index) end

---Gets the value of field 'MapOffset'.
---@return number[] value
function row:GetMapOffset() end

---Sets the value of field 'MapOffset'.
---@param value number[]
---@return dbc.row.v1215.TaxiNodes self
function row:SetMapOffset(value) end

---Gets element at 1-based index in 'MapOffset'.
---@param index integer
---@return number value
function row:GetMapOffsetItem(index) end

---Gets the value of field 'FlightMapOffset'.
---@return number[] value
function row:GetFlightMapOffset() end

---Sets the value of field 'FlightMapOffset'.
---@param value number[]
---@return dbc.row.v1215.TaxiNodes self
function row:SetFlightMapOffset(value) end

---Gets element at 1-based index in 'FlightMapOffset'.
---@param index integer
---@return number value
function row:GetFlightMapOffsetItem(index) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.TaxiNodes self
function row:SetID(value) end

---Gets the value of field 'ContinentID'.
---@return integer value
function row:GetContinentID() end

---Sets the value of field 'ContinentID'.
---@param value integer
---@return dbc.row.v1215.TaxiNodes self
function row:SetContinentID(value) end

---Navigates foreign relationship to 'Map' via 'ContinentID'.
---@return dbc.row.v1215.Map|nil
function row:GetContinent() end

---Creates a related 'Map' row and automatically links 'ContinentID'.
---@param data? table
---@return dbc.row.v1215.Map
function row:CreateRelated(data) end

---Gets the value of field 'ConditionID'.
---@return integer value
function row:GetConditionID() end

---Sets the value of field 'ConditionID'.
---@param value integer
---@return dbc.row.v1215.TaxiNodes self
function row:SetConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'ConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'ConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'CharacterBitNumber'.
---@return integer value
function row:GetCharacterBitNumber() end

---Sets the value of field 'CharacterBitNumber'.
---@param value integer
---@return dbc.row.v1215.TaxiNodes self
function row:SetCharacterBitNumber(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.TaxiNodes self
function row:SetFlags(value) end

---Gets the value of field 'UiTextureKitID'.
---@return integer value
function row:GetUiTextureKitID() end

---Sets the value of field 'UiTextureKitID'.
---@param value integer
---@return dbc.row.v1215.TaxiNodes self
function row:SetUiTextureKitID(value) end

---Navigates foreign relationship to 'UiTextureKit' via 'UiTextureKitID'.
---@return dbc.row.v1215.UiTextureKit|nil
function row:GetUiTextureKit() end

---Creates a related 'UiTextureKit' row and automatically links 'UiTextureKitID'.
---@param data? table
---@return dbc.row.v1215.UiTextureKit
function row:CreateRelated(data) end

---Gets the value of field 'MinimapAtlasMemberID'.
---@return integer value
function row:GetMinimapAtlasMemberID() end

---Sets the value of field 'MinimapAtlasMemberID'.
---@param value integer
---@return dbc.row.v1215.TaxiNodes self
function row:SetMinimapAtlasMemberID(value) end

---Navigates foreign relationship to 'MinimapAtlasMember' via 'MinimapAtlasMemberID'.
---@return dbc.row.v1215.MinimapAtlasMember|nil
function row:GetMinimapAtlasMember() end

---Creates a related 'MinimapAtlasMember' row and automatically links 'MinimapAtlasMemberID'.
---@param data? table
---@return dbc.row.v1215.MinimapAtlasMember
function row:CreateRelated(data) end

---Gets the value of field 'Facing'.
---@return number value
function row:GetFacing() end

---Sets the value of field 'Facing'.
---@param value number
---@return dbc.row.v1215.TaxiNodes self
function row:SetFacing(value) end

---Gets the value of field 'SpecialIconConditionID'.
---@return integer value
function row:GetSpecialIconConditionID() end

---Sets the value of field 'SpecialIconConditionID'.
---@param value integer
---@return dbc.row.v1215.TaxiNodes self
function row:SetSpecialIconConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'SpecialIconConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetSpecialIconCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'SpecialIconConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'VisibilityConditionID'.
---@return integer value
function row:GetVisibilityConditionID() end

---Sets the value of field 'VisibilityConditionID'.
---@param value integer
---@return dbc.row.v1215.TaxiNodes self
function row:SetVisibilityConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'VisibilityConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetVisibilityCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'VisibilityConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'MountCreatureID'.
---@return integer[] value
function row:GetMountCreatureID() end

---Sets the value of field 'MountCreatureID'.
---@param value integer[]
---@return dbc.row.v1215.TaxiNodes self
function row:SetMountCreatureID(value) end

---Gets element at 1-based index in 'MountCreatureID'.
---@param index integer
---@return integer value
function row:GetMountCreatureIDItem(index) end

---Navigates foreign relationship to 'Creature' via 'MountCreatureID'.
---@return dbc.row.v1215.Creature|nil
function row:GetMountCreature() end

---Creates a related 'Creature' row and automatically links 'MountCreatureID'.
---@param data? table
---@return dbc.row.v1215.Creature
function row:CreateRelated(data) end

---Table container for TaxiNodes (Build 12.1.5.69594).
---@class dbc.Table.v1215.TaxiNodes : DbcTable
---@field [integer] dbc.row.v1215.TaxiNodes
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.TaxiNodes
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.TaxiNodes|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.TaxiNodes
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.TaxiNodes>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.TaxiNodes[]
function tbl:GetByRelation(foreign_id) end

return {}
