---@meta
-- Generated LuaLS annotations for GarrFollowerQuality (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GarrFollowerQuality in build 12.1.5.69594.
---@class dbc.row.v1215.GarrFollowerQuality : RowProxy
---@field ID integer
---@field Quality integer GARR_FOLLOWER_QUALITY: 0: None; 1: Common; 2: Uncommon; 3: Rare; 4: Epic; 5: Legendary; 6: Title
---@field XpToNextQuality integer
---@field GarrFollowerTypeID integer
---@field AbilityCount integer
---@field TraitCount integer
---@field ShipmentXP integer
---@field ClassSpecID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GarrFollowerQuality self
function row:SetID(value) end

---Gets the value of field 'Quality'.
---@return integer value
function row:GetQuality() end

---Sets the value of field 'Quality'.
---@param value integer
---@return dbc.row.v1215.GarrFollowerQuality self
function row:SetQuality(value) end

---Gets the value of field 'XpToNextQuality'.
---@return integer value
function row:GetXpToNextQuality() end

---Sets the value of field 'XpToNextQuality'.
---@param value integer
---@return dbc.row.v1215.GarrFollowerQuality self
function row:SetXpToNextQuality(value) end

---Gets the value of field 'GarrFollowerTypeID'.
---@return integer value
function row:GetGarrFollowerTypeID() end

---Sets the value of field 'GarrFollowerTypeID'.
---@param value integer
---@return dbc.row.v1215.GarrFollowerQuality self
function row:SetGarrFollowerTypeID(value) end

---Navigates foreign relationship to 'GarrFollowerType' via 'GarrFollowerTypeID'.
---@return dbc.row.v1215.GarrFollowerType|nil
function row:GetGarrFollowerType() end

---Creates a related 'GarrFollowerType' row and automatically links 'GarrFollowerTypeID'.
---@param data? table
---@return dbc.row.v1215.GarrFollowerType
function row:CreateRelated(data) end

---Gets the value of field 'AbilityCount'.
---@return integer value
function row:GetAbilityCount() end

---Sets the value of field 'AbilityCount'.
---@param value integer
---@return dbc.row.v1215.GarrFollowerQuality self
function row:SetAbilityCount(value) end

---Gets the value of field 'TraitCount'.
---@return integer value
function row:GetTraitCount() end

---Sets the value of field 'TraitCount'.
---@param value integer
---@return dbc.row.v1215.GarrFollowerQuality self
function row:SetTraitCount(value) end

---Gets the value of field 'ShipmentXP'.
---@return integer value
function row:GetShipmentXP() end

---Sets the value of field 'ShipmentXP'.
---@param value integer
---@return dbc.row.v1215.GarrFollowerQuality self
function row:SetShipmentXP(value) end

---Gets the value of field 'ClassSpecID'.
---@return integer value
function row:GetClassSpecID() end

---Sets the value of field 'ClassSpecID'.
---@param value integer
---@return dbc.row.v1215.GarrFollowerQuality self
function row:SetClassSpecID(value) end

---Navigates foreign relationship to 'ClassSpec' via 'ClassSpecID'.
---@return dbc.row.v1215.ClassSpec|nil
function row:GetClassSpec() end

---Creates a related 'ClassSpec' row and automatically links 'ClassSpecID'.
---@param data? table
---@return dbc.row.v1215.ClassSpec
function row:CreateRelated(data) end

---Table container for GarrFollowerQuality (Build 12.1.5.69594).
---@class dbc.Table.v1215.GarrFollowerQuality : DbcTable
---@field [integer] dbc.row.v1215.GarrFollowerQuality
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GarrFollowerQuality
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GarrFollowerQuality|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GarrFollowerQuality
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GarrFollowerQuality>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GarrFollowerQuality[]
function tbl:GetByRelation(foreign_id) end

return {}
