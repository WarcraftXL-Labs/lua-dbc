---@meta
-- Generated LuaLS annotations for ChrCustomizationDisplayInfo (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ChrCustomizationDisplayInfo in build 12.1.5.69594.
---@class dbc.row.v1215.ChrCustomizationDisplayInfo : RowProxy
---@field ID integer
---@field SpellShapeshiftFormID integer
---@field CreatureDisplayInfoID integer
---@field BarberShopMinCameraDistance number
---@field BarberShopHeightOffset number
---@field BarberShopCameraZoomOffset number

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationDisplayInfo self
function row:SetID(value) end

---Gets the value of field 'SpellShapeshiftFormID'.
---@return integer value
function row:GetSpellShapeshiftFormID() end

---Sets the value of field 'SpellShapeshiftFormID'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationDisplayInfo self
function row:SetSpellShapeshiftFormID(value) end

---Navigates foreign relationship to 'SpellShapeshiftForm' via 'SpellShapeshiftFormID'.
---@return dbc.row.v1215.SpellShapeshiftForm|nil
function row:GetSpellShapeshiftForm() end

---Creates a related 'SpellShapeshiftForm' row and automatically links 'SpellShapeshiftFormID'.
---@param data? table
---@return dbc.row.v1215.SpellShapeshiftForm
function row:CreateRelated(data) end

---Gets the value of field 'CreatureDisplayInfoID'.
---@return integer value
function row:GetCreatureDisplayInfoID() end

---Sets the value of field 'CreatureDisplayInfoID'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationDisplayInfo self
function row:SetCreatureDisplayInfoID(value) end

---Navigates foreign relationship to 'CreatureDisplayInfo' via 'CreatureDisplayInfoID'.
---@return dbc.row.v1215.CreatureDisplayInfo|nil
function row:GetCreatureDisplayInfo() end

---Creates a related 'CreatureDisplayInfo' row and automatically links 'CreatureDisplayInfoID'.
---@param data? table
---@return dbc.row.v1215.CreatureDisplayInfo
function row:CreateRelated(data) end

---Gets the value of field 'BarberShopMinCameraDistance'.
---@return number value
function row:GetBarberShopMinCameraDistance() end

---Sets the value of field 'BarberShopMinCameraDistance'.
---@param value number
---@return dbc.row.v1215.ChrCustomizationDisplayInfo self
function row:SetBarberShopMinCameraDistance(value) end

---Gets the value of field 'BarberShopHeightOffset'.
---@return number value
function row:GetBarberShopHeightOffset() end

---Sets the value of field 'BarberShopHeightOffset'.
---@param value number
---@return dbc.row.v1215.ChrCustomizationDisplayInfo self
function row:SetBarberShopHeightOffset(value) end

---Gets the value of field 'BarberShopCameraZoomOffset'.
---@return number value
function row:GetBarberShopCameraZoomOffset() end

---Sets the value of field 'BarberShopCameraZoomOffset'.
---@param value number
---@return dbc.row.v1215.ChrCustomizationDisplayInfo self
function row:SetBarberShopCameraZoomOffset(value) end

---Table container for ChrCustomizationDisplayInfo (Build 12.1.5.69594).
---@class dbc.Table.v1215.ChrCustomizationDisplayInfo : DbcTable
---@field [integer] dbc.row.v1215.ChrCustomizationDisplayInfo
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ChrCustomizationDisplayInfo
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ChrCustomizationDisplayInfo|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ChrCustomizationDisplayInfo
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ChrCustomizationDisplayInfo>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ChrCustomizationDisplayInfo[]
function tbl:GetByRelation(foreign_id) end

return {}
