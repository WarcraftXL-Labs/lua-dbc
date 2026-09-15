---@meta
-- Generated LuaLS annotations for WorldMapOverlay (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of WorldMapOverlay in build 3.3.5.12340.
---@class dbc.row.v335.WorldMapOverlay : RowProxy
---@field ID integer
---@field MapAreaID integer
---@field AreaID integer[]
---@field MapPointX integer
---@field MapPointY integer
---@field TextureName string
---@field TextureWidth integer
---@field TextureHeight integer
---@field OffsetX integer
---@field OffsetY integer
---@field HitRectTop integer
---@field HitRectLeft integer
---@field HitRectBottom integer
---@field HitRectRight integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.WorldMapOverlay self
function row:SetID(value) end

---Gets the value of field 'MapAreaID'.
---@return integer value
function row:GetMapAreaID() end

---Sets the value of field 'MapAreaID'.
---@param value integer
---@return dbc.row.v335.WorldMapOverlay self
function row:SetMapAreaID(value) end

---Navigates foreign relationship to 'WorldMapArea' via 'MapAreaID'.
---@return dbc.row.v335.WorldMapArea|nil
function row:GetMapArea() end

---Creates a related 'WorldMapArea' row and automatically links 'MapAreaID'.
---@param data? table
---@return dbc.row.v335.WorldMapArea
function row:CreateRelated(data) end

---Gets the value of field 'AreaID'.
---@return integer[] value
function row:GetAreaID() end

---Sets the value of field 'AreaID'.
---@param value integer[]
---@return dbc.row.v335.WorldMapOverlay self
function row:SetAreaID(value) end

---Gets element at 1-based index in 'AreaID'.
---@param index integer
---@return integer value
function row:GetAreaIDItem(index) end

---Navigates foreign relationship to 'AreaTable' via 'AreaID'.
---@return dbc.row.v335.AreaTable|nil
function row:GetArea() end

---Creates a related 'AreaTable' row and automatically links 'AreaID'.
---@param data? table
---@return dbc.row.v335.AreaTable
function row:CreateRelated(data) end

---Gets the value of field 'MapPointX'.
---@return integer value
function row:GetMapPointX() end

---Sets the value of field 'MapPointX'.
---@param value integer
---@return dbc.row.v335.WorldMapOverlay self
function row:SetMapPointX(value) end

---Gets the value of field 'MapPointY'.
---@return integer value
function row:GetMapPointY() end

---Sets the value of field 'MapPointY'.
---@param value integer
---@return dbc.row.v335.WorldMapOverlay self
function row:SetMapPointY(value) end

---Gets the value of field 'TextureName'.
---@return string value
function row:GetTextureName() end

---Sets the value of field 'TextureName'.
---@param value string
---@return dbc.row.v335.WorldMapOverlay self
function row:SetTextureName(value) end

---Gets the value of field 'TextureWidth'.
---@return integer value
function row:GetTextureWidth() end

---Sets the value of field 'TextureWidth'.
---@param value integer
---@return dbc.row.v335.WorldMapOverlay self
function row:SetTextureWidth(value) end

---Gets the value of field 'TextureHeight'.
---@return integer value
function row:GetTextureHeight() end

---Sets the value of field 'TextureHeight'.
---@param value integer
---@return dbc.row.v335.WorldMapOverlay self
function row:SetTextureHeight(value) end

---Gets the value of field 'OffsetX'.
---@return integer value
function row:GetOffsetX() end

---Sets the value of field 'OffsetX'.
---@param value integer
---@return dbc.row.v335.WorldMapOverlay self
function row:SetOffsetX(value) end

---Gets the value of field 'OffsetY'.
---@return integer value
function row:GetOffsetY() end

---Sets the value of field 'OffsetY'.
---@param value integer
---@return dbc.row.v335.WorldMapOverlay self
function row:SetOffsetY(value) end

---Gets the value of field 'HitRectTop'.
---@return integer value
function row:GetHitRectTop() end

---Sets the value of field 'HitRectTop'.
---@param value integer
---@return dbc.row.v335.WorldMapOverlay self
function row:SetHitRectTop(value) end

---Gets the value of field 'HitRectLeft'.
---@return integer value
function row:GetHitRectLeft() end

---Sets the value of field 'HitRectLeft'.
---@param value integer
---@return dbc.row.v335.WorldMapOverlay self
function row:SetHitRectLeft(value) end

---Gets the value of field 'HitRectBottom'.
---@return integer value
function row:GetHitRectBottom() end

---Sets the value of field 'HitRectBottom'.
---@param value integer
---@return dbc.row.v335.WorldMapOverlay self
function row:SetHitRectBottom(value) end

---Gets the value of field 'HitRectRight'.
---@return integer value
function row:GetHitRectRight() end

---Sets the value of field 'HitRectRight'.
---@param value integer
---@return dbc.row.v335.WorldMapOverlay self
function row:SetHitRectRight(value) end

---Table container for WorldMapOverlay (Build 3.3.5.12340).
---@class dbc.Table.v335.WorldMapOverlay : DbcTable
---@field [integer] dbc.row.v335.WorldMapOverlay
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.WorldMapOverlay
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.WorldMapOverlay|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.WorldMapOverlay
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.WorldMapOverlay>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.WorldMapOverlay[]
function tbl:GetByRelation(foreign_id) end

return {}
