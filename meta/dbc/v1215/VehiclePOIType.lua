---@meta
-- Generated LuaLS annotations for VehiclePOIType (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of VehiclePOIType in build 12.1.5.69594.
---@class dbc.row.v1215.VehiclePOIType : RowProxy
---@field ID integer
---@field Flags integer &1: MINIMAP_DRAW_BELOW_PLAYER_BLIPS
---@field TextureWidth integer
---@field TextureHeight integer
---@field OccupiedTexture integer
---@field UnoccupiedTexture integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.VehiclePOIType self
function row:SetID(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.VehiclePOIType self
function row:SetFlags(value) end

---Gets the value of field 'TextureWidth'.
---@return integer value
function row:GetTextureWidth() end

---Sets the value of field 'TextureWidth'.
---@param value integer
---@return dbc.row.v1215.VehiclePOIType self
function row:SetTextureWidth(value) end

---Gets the value of field 'TextureHeight'.
---@return integer value
function row:GetTextureHeight() end

---Sets the value of field 'TextureHeight'.
---@param value integer
---@return dbc.row.v1215.VehiclePOIType self
function row:SetTextureHeight(value) end

---Gets the value of field 'OccupiedTexture'.
---@return integer value
function row:GetOccupiedTexture() end

---Sets the value of field 'OccupiedTexture'.
---@param value integer
---@return dbc.row.v1215.VehiclePOIType self
function row:SetOccupiedTexture(value) end

---Navigates foreign relationship to 'UiTextureAtlasMember' via 'OccupiedTexture'.
---@return dbc.row.v1215.UiTextureAtlasMember|nil
function row:GetOccupiedTexture() end

---Creates a related 'UiTextureAtlasMember' row and automatically links 'OccupiedTexture'.
---@param data? table
---@return dbc.row.v1215.UiTextureAtlasMember
function row:CreateRelated(data) end

---Gets the value of field 'UnoccupiedTexture'.
---@return integer value
function row:GetUnoccupiedTexture() end

---Sets the value of field 'UnoccupiedTexture'.
---@param value integer
---@return dbc.row.v1215.VehiclePOIType self
function row:SetUnoccupiedTexture(value) end

---Navigates foreign relationship to 'UiTextureAtlasMember' via 'UnoccupiedTexture'.
---@return dbc.row.v1215.UiTextureAtlasMember|nil
function row:GetUnoccupiedTexture() end

---Creates a related 'UiTextureAtlasMember' row and automatically links 'UnoccupiedTexture'.
---@param data? table
---@return dbc.row.v1215.UiTextureAtlasMember
function row:CreateRelated(data) end

---Table container for VehiclePOIType (Build 12.1.5.69594).
---@class dbc.Table.v1215.VehiclePOIType : DbcTable
---@field [integer] dbc.row.v1215.VehiclePOIType
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.VehiclePOIType
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.VehiclePOIType|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.VehiclePOIType
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.VehiclePOIType>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.VehiclePOIType[]
function tbl:GetByRelation(foreign_id) end

return {}
