---@meta
-- Generated LuaLS annotations for TransmogOutfitEntry (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of TransmogOutfitEntry in build 12.1.5.69594.
---@class dbc.row.v1215.TransmogOutfitEntry : RowProxy
---@field Cost integer
---@field Name_lang string
---@field ID integer
---@field OrderIndex integer
---@field Source integer 0: StampedSource, 1: AutomaticallyAwarded, 2: PlayerPurchased
---@field Flags integer 0x1: AutomaticallyAwardedOnLogin
---@field SetType integer
---@field OverrideCostModifier number
---@field Field_12_0_5_66330_008 integer

local row = {}

---Gets the value of field 'Cost'.
---@return integer value
function row:GetCost() end

---Sets the value of field 'Cost'.
---@param value integer
---@return dbc.row.v1215.TransmogOutfitEntry self
function row:SetCost(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.TransmogOutfitEntry self
function row:SetName_lang(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.TransmogOutfitEntry self
function row:SetID(value) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.TransmogOutfitEntry self
function row:SetOrderIndex(value) end

---Gets the value of field 'Source'.
---@return integer value
function row:GetSource() end

---Sets the value of field 'Source'.
---@param value integer
---@return dbc.row.v1215.TransmogOutfitEntry self
function row:SetSource(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.TransmogOutfitEntry self
function row:SetFlags(value) end

---Gets the value of field 'SetType'.
---@return integer value
function row:GetSetType() end

---Sets the value of field 'SetType'.
---@param value integer
---@return dbc.row.v1215.TransmogOutfitEntry self
function row:SetSetType(value) end

---Gets the value of field 'OverrideCostModifier'.
---@return number value
function row:GetOverrideCostModifier() end

---Sets the value of field 'OverrideCostModifier'.
---@param value number
---@return dbc.row.v1215.TransmogOutfitEntry self
function row:SetOverrideCostModifier(value) end

---Gets the value of field 'Field_12_0_5_66330_008'.
---@return integer value
function row:GetField_12_0_5_66330_008() end

---Sets the value of field 'Field_12_0_5_66330_008'.
---@param value integer
---@return dbc.row.v1215.TransmogOutfitEntry self
function row:SetField_12_0_5_66330_008(value) end

---Table container for TransmogOutfitEntry (Build 12.1.5.69594).
---@class dbc.Table.v1215.TransmogOutfitEntry : DbcTable
---@field [integer] dbc.row.v1215.TransmogOutfitEntry
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.TransmogOutfitEntry
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.TransmogOutfitEntry|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.TransmogOutfitEntry
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.TransmogOutfitEntry>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.TransmogOutfitEntry[]
function tbl:GetByRelation(foreign_id) end

return {}
