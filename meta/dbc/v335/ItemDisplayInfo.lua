---@meta
-- Generated LuaLS annotations for ItemDisplayInfo (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of ItemDisplayInfo in build 3.3.5.12340.
---@class dbc.row.v335.ItemDisplayInfo : RowProxy
---@field ID integer
---@field ModelName string[]
---@field ModelTexture string[]
---@field InventoryIcon string[]
---@field GeosetGroup integer[]
---@field Flags integer
---@field SpellVisualID integer
---@field GroupSoundIndex integer
---@field HelmetGeosetVisID integer[]
---@field Texture string[]
---@field ItemVisual integer
---@field ParticleColorID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.ItemDisplayInfo self
function row:SetID(value) end

---Gets the value of field 'ModelName'.
---@return string[] value
function row:GetModelName() end

---Sets the value of field 'ModelName'.
---@param value string[]
---@return dbc.row.v335.ItemDisplayInfo self
function row:SetModelName(value) end

---Gets element at 1-based index in 'ModelName'.
---@param index integer
---@return string value
function row:GetModelNameItem(index) end

---Gets the value of field 'ModelTexture'.
---@return string[] value
function row:GetModelTexture() end

---Sets the value of field 'ModelTexture'.
---@param value string[]
---@return dbc.row.v335.ItemDisplayInfo self
function row:SetModelTexture(value) end

---Gets element at 1-based index in 'ModelTexture'.
---@param index integer
---@return string value
function row:GetModelTextureItem(index) end

---Gets the value of field 'InventoryIcon'.
---@return string[] value
function row:GetInventoryIcon() end

---Sets the value of field 'InventoryIcon'.
---@param value string[]
---@return dbc.row.v335.ItemDisplayInfo self
function row:SetInventoryIcon(value) end

---Gets element at 1-based index in 'InventoryIcon'.
---@param index integer
---@return string value
function row:GetInventoryIconItem(index) end

---Gets the value of field 'GeosetGroup'.
---@return integer[] value
function row:GetGeosetGroup() end

---Sets the value of field 'GeosetGroup'.
---@param value integer[]
---@return dbc.row.v335.ItemDisplayInfo self
function row:SetGeosetGroup(value) end

---Gets element at 1-based index in 'GeosetGroup'.
---@param index integer
---@return integer value
function row:GetGeosetGroupItem(index) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v335.ItemDisplayInfo self
function row:SetFlags(value) end

---Gets the value of field 'SpellVisualID'.
---@return integer value
function row:GetSpellVisualID() end

---Sets the value of field 'SpellVisualID'.
---@param value integer
---@return dbc.row.v335.ItemDisplayInfo self
function row:SetSpellVisualID(value) end

---Navigates foreign relationship to 'SpellVisual' via 'SpellVisualID'.
---@return dbc.row.v335.SpellVisual|nil
function row:GetSpellVisual() end

---Creates a related 'SpellVisual' row and automatically links 'SpellVisualID'.
---@param data? table
---@return dbc.row.v335.SpellVisual
function row:CreateRelated(data) end

---Gets the value of field 'GroupSoundIndex'.
---@return integer value
function row:GetGroupSoundIndex() end

---Sets the value of field 'GroupSoundIndex'.
---@param value integer
---@return dbc.row.v335.ItemDisplayInfo self
function row:SetGroupSoundIndex(value) end

---Gets the value of field 'HelmetGeosetVisID'.
---@return integer[] value
function row:GetHelmetGeosetVisID() end

---Sets the value of field 'HelmetGeosetVisID'.
---@param value integer[]
---@return dbc.row.v335.ItemDisplayInfo self
function row:SetHelmetGeosetVisID(value) end

---Gets element at 1-based index in 'HelmetGeosetVisID'.
---@param index integer
---@return integer value
function row:GetHelmetGeosetVisIDItem(index) end

---Navigates foreign relationship to 'HelmetGeosetVis' via 'HelmetGeosetVisID'.
---@return dbc.row.v335.HelmetGeosetVis|nil
function row:GetHelmetGeosetVis() end

---Creates a related 'HelmetGeosetVis' row and automatically links 'HelmetGeosetVisID'.
---@param data? table
---@return dbc.row.v335.HelmetGeosetVis
function row:CreateRelated(data) end

---Gets the value of field 'Texture'.
---@return string[] value
function row:GetTexture() end

---Sets the value of field 'Texture'.
---@param value string[]
---@return dbc.row.v335.ItemDisplayInfo self
function row:SetTexture(value) end

---Gets element at 1-based index in 'Texture'.
---@param index integer
---@return string value
function row:GetTextureItem(index) end

---Gets the value of field 'ItemVisual'.
---@return integer value
function row:GetItemVisual() end

---Sets the value of field 'ItemVisual'.
---@param value integer
---@return dbc.row.v335.ItemDisplayInfo self
function row:SetItemVisual(value) end

---Gets the value of field 'ParticleColorID'.
---@return integer value
function row:GetParticleColorID() end

---Sets the value of field 'ParticleColorID'.
---@param value integer
---@return dbc.row.v335.ItemDisplayInfo self
function row:SetParticleColorID(value) end

---Navigates foreign relationship to 'ParticleColor' via 'ParticleColorID'.
---@return dbc.row.v335.ParticleColor|nil
function row:GetParticleColor() end

---Creates a related 'ParticleColor' row and automatically links 'ParticleColorID'.
---@param data? table
---@return dbc.row.v335.ParticleColor
function row:CreateRelated(data) end

---Table container for ItemDisplayInfo (Build 3.3.5.12340).
---@class dbc.Table.v335.ItemDisplayInfo : DbcTable
---@field [integer] dbc.row.v335.ItemDisplayInfo
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.ItemDisplayInfo
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.ItemDisplayInfo|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.ItemDisplayInfo
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.ItemDisplayInfo>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.ItemDisplayInfo[]
function tbl:GetByRelation(foreign_id) end

return {}
