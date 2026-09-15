---@meta
-- Generated LuaLS annotations for WorldMapOverlay (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of WorldMapOverlay in build 12.1.5.69594.
---@class dbc.row.v1215.WorldMapOverlay : RowProxy
---@field ID integer
---@field UiMapArtID integer
---@field TextureWidth integer
---@field TextureHeight integer
---@field OffsetX integer
---@field OffsetY integer
---@field HitRectTop integer
---@field HitRectBottom integer
---@field HitRectLeft integer
---@field HitRectRight integer
---@field PlayerConditionID integer
---@field Flags integer
---@field AreaID integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.WorldMapOverlay self
function row:SetID(value) end

---Gets the value of field 'UiMapArtID'.
---@return integer value
function row:GetUiMapArtID() end

---Sets the value of field 'UiMapArtID'.
---@param value integer
---@return dbc.row.v1215.WorldMapOverlay self
function row:SetUiMapArtID(value) end

---Navigates foreign relationship to 'UiMapArt' via 'UiMapArtID'.
---@return dbc.row.v1215.UiMapArt|nil
function row:GetUiMapArt() end

---Creates a related 'UiMapArt' row and automatically links 'UiMapArtID'.
---@param data? table
---@return dbc.row.v1215.UiMapArt
function row:CreateRelated(data) end

---Gets the value of field 'TextureWidth'.
---@return integer value
function row:GetTextureWidth() end

---Sets the value of field 'TextureWidth'.
---@param value integer
---@return dbc.row.v1215.WorldMapOverlay self
function row:SetTextureWidth(value) end

---Gets the value of field 'TextureHeight'.
---@return integer value
function row:GetTextureHeight() end

---Sets the value of field 'TextureHeight'.
---@param value integer
---@return dbc.row.v1215.WorldMapOverlay self
function row:SetTextureHeight(value) end

---Gets the value of field 'OffsetX'.
---@return integer value
function row:GetOffsetX() end

---Sets the value of field 'OffsetX'.
---@param value integer
---@return dbc.row.v1215.WorldMapOverlay self
function row:SetOffsetX(value) end

---Gets the value of field 'OffsetY'.
---@return integer value
function row:GetOffsetY() end

---Sets the value of field 'OffsetY'.
---@param value integer
---@return dbc.row.v1215.WorldMapOverlay self
function row:SetOffsetY(value) end

---Gets the value of field 'HitRectTop'.
---@return integer value
function row:GetHitRectTop() end

---Sets the value of field 'HitRectTop'.
---@param value integer
---@return dbc.row.v1215.WorldMapOverlay self
function row:SetHitRectTop(value) end

---Gets the value of field 'HitRectBottom'.
---@return integer value
function row:GetHitRectBottom() end

---Sets the value of field 'HitRectBottom'.
---@param value integer
---@return dbc.row.v1215.WorldMapOverlay self
function row:SetHitRectBottom(value) end

---Gets the value of field 'HitRectLeft'.
---@return integer value
function row:GetHitRectLeft() end

---Sets the value of field 'HitRectLeft'.
---@param value integer
---@return dbc.row.v1215.WorldMapOverlay self
function row:SetHitRectLeft(value) end

---Gets the value of field 'HitRectRight'.
---@return integer value
function row:GetHitRectRight() end

---Sets the value of field 'HitRectRight'.
---@param value integer
---@return dbc.row.v1215.WorldMapOverlay self
function row:SetHitRectRight(value) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.WorldMapOverlay self
function row:SetPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.WorldMapOverlay self
function row:SetFlags(value) end

---Gets the value of field 'AreaID'.
---@return integer[] value
function row:GetAreaID() end

---Sets the value of field 'AreaID'.
---@param value integer[]
---@return dbc.row.v1215.WorldMapOverlay self
function row:SetAreaID(value) end

---Gets element at 1-based index in 'AreaID'.
---@param index integer
---@return integer value
function row:GetAreaIDItem(index) end

---Navigates foreign relationship to 'AreaTable' via 'AreaID'.
---@return dbc.row.v1215.AreaTable|nil
function row:GetArea() end

---Creates a related 'AreaTable' row and automatically links 'AreaID'.
---@param data? table
---@return dbc.row.v1215.AreaTable
function row:CreateRelated(data) end

---Table container for WorldMapOverlay (Build 12.1.5.69594).
---@class dbc.Table.v1215.WorldMapOverlay : DbcTable
---@field [integer] dbc.row.v1215.WorldMapOverlay
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.WorldMapOverlay
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.WorldMapOverlay|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.WorldMapOverlay
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.WorldMapOverlay>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.WorldMapOverlay[]
function tbl:GetByRelation(foreign_id) end

return {}
