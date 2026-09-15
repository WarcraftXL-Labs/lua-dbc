---@meta
-- Generated LuaLS annotations for CharShipment (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CharShipment in build 12.1.5.69594.
---@class dbc.row.v1215.CharShipment : RowProxy
---@field ID integer
---@field ContainerID integer
---@field DummyItemID integer
---@field TreasureID integer
---@field SpellID integer
---@field OnCompleteSpellID integer
---@field Duration integer
---@field MaxShipments integer
---@field GarrFollowerID integer
---@field Flags integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CharShipment self
function row:SetID(value) end

---Gets the value of field 'ContainerID'.
---@return integer value
function row:GetContainerID() end

---Sets the value of field 'ContainerID'.
---@param value integer
---@return dbc.row.v1215.CharShipment self
function row:SetContainerID(value) end

---Navigates foreign relationship to 'CharShipmentContainer' via 'ContainerID'.
---@return dbc.row.v1215.CharShipmentContainer|nil
function row:GetContainer() end

---Creates a related 'CharShipmentContainer' row and automatically links 'ContainerID'.
---@param data? table
---@return dbc.row.v1215.CharShipmentContainer
function row:CreateRelated(data) end

---Gets the value of field 'DummyItemID'.
---@return integer value
function row:GetDummyItemID() end

---Sets the value of field 'DummyItemID'.
---@param value integer
---@return dbc.row.v1215.CharShipment self
function row:SetDummyItemID(value) end

---Navigates foreign relationship to 'Item' via 'DummyItemID'.
---@return dbc.row.v1215.Item|nil
function row:GetDummyItem() end

---Creates a related 'Item' row and automatically links 'DummyItemID'.
---@param data? table
---@return dbc.row.v1215.Item
function row:CreateRelated(data) end

---Gets the value of field 'TreasureID'.
---@return integer value
function row:GetTreasureID() end

---Sets the value of field 'TreasureID'.
---@param value integer
---@return dbc.row.v1215.CharShipment self
function row:SetTreasureID(value) end

---Navigates foreign relationship to 'Treasure' via 'TreasureID'.
---@return dbc.row.v1215.Treasure|nil
function row:GetTreasure() end

---Creates a related 'Treasure' row and automatically links 'TreasureID'.
---@param data? table
---@return dbc.row.v1215.Treasure
function row:CreateRelated(data) end

---Gets the value of field 'SpellID'.
---@return integer value
function row:GetSpellID() end

---Sets the value of field 'SpellID'.
---@param value integer
---@return dbc.row.v1215.CharShipment self
function row:SetSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'SpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetSpell() end

---Creates a related 'Spell' row and automatically links 'SpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'OnCompleteSpellID'.
---@return integer value
function row:GetOnCompleteSpellID() end

---Sets the value of field 'OnCompleteSpellID'.
---@param value integer
---@return dbc.row.v1215.CharShipment self
function row:SetOnCompleteSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'OnCompleteSpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetOnCompleteSpell() end

---Creates a related 'Spell' row and automatically links 'OnCompleteSpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'Duration'.
---@return integer value
function row:GetDuration() end

---Sets the value of field 'Duration'.
---@param value integer
---@return dbc.row.v1215.CharShipment self
function row:SetDuration(value) end

---Gets the value of field 'MaxShipments'.
---@return integer value
function row:GetMaxShipments() end

---Sets the value of field 'MaxShipments'.
---@param value integer
---@return dbc.row.v1215.CharShipment self
function row:SetMaxShipments(value) end

---Gets the value of field 'GarrFollowerID'.
---@return integer value
function row:GetGarrFollowerID() end

---Sets the value of field 'GarrFollowerID'.
---@param value integer
---@return dbc.row.v1215.CharShipment self
function row:SetGarrFollowerID(value) end

---Navigates foreign relationship to 'GarrFollower' via 'GarrFollowerID'.
---@return dbc.row.v1215.GarrFollower|nil
function row:GetGarrFollower() end

---Creates a related 'GarrFollower' row and automatically links 'GarrFollowerID'.
---@param data? table
---@return dbc.row.v1215.GarrFollower
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.CharShipment self
function row:SetFlags(value) end

---Table container for CharShipment (Build 12.1.5.69594).
---@class dbc.Table.v1215.CharShipment : DbcTable
---@field [integer] dbc.row.v1215.CharShipment
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CharShipment
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CharShipment|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CharShipment
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CharShipment>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CharShipment[]
function tbl:GetByRelation(foreign_id) end

return {}
