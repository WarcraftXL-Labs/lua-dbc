---@meta
-- Generated LuaLS annotations for NeighborhoodMap (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of NeighborhoodMap in build 12.1.5.69594.
---@class dbc.row.v1215.NeighborhoodMap : RowProxy
---@field EntryPosition number[] entering the map places the player here
---@field ID integer
---@field MapID integer
---@field EntryRotation number entering the map faces the player in this direction
---@field UiTextureKitID integer
---@field Flags integer

local row = {}

---Gets the value of field 'EntryPosition'.
---@return number[] value
function row:GetEntryPosition() end

---Sets the value of field 'EntryPosition'.
---@param value number[]
---@return dbc.row.v1215.NeighborhoodMap self
function row:SetEntryPosition(value) end

---Gets element at 1-based index in 'EntryPosition'.
---@param index integer
---@return number value
function row:GetEntryPositionItem(index) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.NeighborhoodMap self
function row:SetID(value) end

---Gets the value of field 'MapID'.
---@return integer value
function row:GetMapID() end

---Sets the value of field 'MapID'.
---@param value integer
---@return dbc.row.v1215.NeighborhoodMap self
function row:SetMapID(value) end

---Navigates foreign relationship to 'Map' via 'MapID'.
---@return dbc.row.v1215.Map|nil
function row:GetMap() end

---Creates a related 'Map' row and automatically links 'MapID'.
---@param data? table
---@return dbc.row.v1215.Map
function row:CreateRelated(data) end

---Gets the value of field 'EntryRotation'.
---@return number value
function row:GetEntryRotation() end

---Sets the value of field 'EntryRotation'.
---@param value number
---@return dbc.row.v1215.NeighborhoodMap self
function row:SetEntryRotation(value) end

---Gets the value of field 'UiTextureKitID'.
---@return integer value
function row:GetUiTextureKitID() end

---Sets the value of field 'UiTextureKitID'.
---@param value integer
---@return dbc.row.v1215.NeighborhoodMap self
function row:SetUiTextureKitID(value) end

---Navigates foreign relationship to 'UiTextureKit' via 'UiTextureKitID'.
---@return dbc.row.v1215.UiTextureKit|nil
function row:GetUiTextureKit() end

---Creates a related 'UiTextureKit' row and automatically links 'UiTextureKitID'.
---@param data? table
---@return dbc.row.v1215.UiTextureKit
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.NeighborhoodMap self
function row:SetFlags(value) end

---Table container for NeighborhoodMap (Build 12.1.5.69594).
---@class dbc.Table.v1215.NeighborhoodMap : DbcTable
---@field [integer] dbc.row.v1215.NeighborhoodMap
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.NeighborhoodMap
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.NeighborhoodMap|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.NeighborhoodMap
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.NeighborhoodMap>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.NeighborhoodMap[]
function tbl:GetByRelation(foreign_id) end

return {}
