---@meta
-- Generated LuaLS annotations for CreatureXDisplayInfo (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CreatureXDisplayInfo in build 12.1.5.69594.
---@class dbc.row.v1215.CreatureXDisplayInfo : RowProxy
---@field ID integer
---@field CreatureDisplayInfoID integer
---@field Probability number
---@field Scale number
---@field OrderIndex integer
---@field Field_11_0_0_54210_004 integer
---@field CreatureID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CreatureXDisplayInfo self
function row:SetID(value) end

---Gets the value of field 'CreatureDisplayInfoID'.
---@return integer value
function row:GetCreatureDisplayInfoID() end

---Sets the value of field 'CreatureDisplayInfoID'.
---@param value integer
---@return dbc.row.v1215.CreatureXDisplayInfo self
function row:SetCreatureDisplayInfoID(value) end

---Navigates foreign relationship to 'CreatureDisplayInfo' via 'CreatureDisplayInfoID'.
---@return dbc.row.v1215.CreatureDisplayInfo|nil
function row:GetCreatureDisplayInfo() end

---Creates a related 'CreatureDisplayInfo' row and automatically links 'CreatureDisplayInfoID'.
---@param data? table
---@return dbc.row.v1215.CreatureDisplayInfo
function row:CreateRelated(data) end

---Gets the value of field 'Probability'.
---@return number value
function row:GetProbability() end

---Sets the value of field 'Probability'.
---@param value number
---@return dbc.row.v1215.CreatureXDisplayInfo self
function row:SetProbability(value) end

---Gets the value of field 'Scale'.
---@return number value
function row:GetScale() end

---Sets the value of field 'Scale'.
---@param value number
---@return dbc.row.v1215.CreatureXDisplayInfo self
function row:SetScale(value) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.CreatureXDisplayInfo self
function row:SetOrderIndex(value) end

---Gets the value of field 'Field_11_0_0_54210_004'.
---@return integer value
function row:GetField_11_0_0_54210_004() end

---Sets the value of field 'Field_11_0_0_54210_004'.
---@param value integer
---@return dbc.row.v1215.CreatureXDisplayInfo self
function row:SetField_11_0_0_54210_004(value) end

---Gets the value of field 'CreatureID'.
---@return integer value
function row:GetCreatureID() end

---Sets the value of field 'CreatureID'.
---@param value integer
---@return dbc.row.v1215.CreatureXDisplayInfo self
function row:SetCreatureID(value) end

---Navigates foreign relationship to 'Creature' via 'CreatureID'.
---@return dbc.row.v1215.Creature|nil
function row:GetCreature() end

---Creates a related 'Creature' row and automatically links 'CreatureID'.
---@param data? table
---@return dbc.row.v1215.Creature
function row:CreateRelated(data) end

---Table container for CreatureXDisplayInfo (Build 12.1.5.69594).
---@class dbc.Table.v1215.CreatureXDisplayInfo : DbcTable
---@field [integer] dbc.row.v1215.CreatureXDisplayInfo
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CreatureXDisplayInfo
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CreatureXDisplayInfo|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CreatureXDisplayInfo
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CreatureXDisplayInfo>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CreatureXDisplayInfo[]
function tbl:GetByRelation(foreign_id) end

return {}
