---@meta
-- Generated LuaLS annotations for NeighborhoodInitiative (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of NeighborhoodInitiative in build 12.1.5.69594.
---@class dbc.row.v1215.NeighborhoodInitiative : RowProxy
---@field Name_lang string
---@field Description_lang string
---@field ID integer
---@field Flags integer
---@field Field_12_0_0_63534_004 integer
---@field Field_12_0_0_63534_005 integer
---@field Field_12_0_0_63534_006 integer

local row = {}

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.NeighborhoodInitiative self
function row:SetName_lang(value) end

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v1215.NeighborhoodInitiative self
function row:SetDescription_lang(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.NeighborhoodInitiative self
function row:SetID(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.NeighborhoodInitiative self
function row:SetFlags(value) end

---Gets the value of field 'Field_12_0_0_63534_004'.
---@return integer value
function row:GetField_12_0_0_63534_004() end

---Sets the value of field 'Field_12_0_0_63534_004'.
---@param value integer
---@return dbc.row.v1215.NeighborhoodInitiative self
function row:SetField_12_0_0_63534_004(value) end

---Gets the value of field 'Field_12_0_0_63534_005'.
---@return integer value
function row:GetField_12_0_0_63534_005() end

---Sets the value of field 'Field_12_0_0_63534_005'.
---@param value integer
---@return dbc.row.v1215.NeighborhoodInitiative self
function row:SetField_12_0_0_63534_005(value) end

---Gets the value of field 'Field_12_0_0_63534_006'.
---@return integer value
function row:GetField_12_0_0_63534_006() end

---Sets the value of field 'Field_12_0_0_63534_006'.
---@param value integer
---@return dbc.row.v1215.NeighborhoodInitiative self
function row:SetField_12_0_0_63534_006(value) end

---Table container for NeighborhoodInitiative (Build 12.1.5.69594).
---@class dbc.Table.v1215.NeighborhoodInitiative : DbcTable
---@field [integer] dbc.row.v1215.NeighborhoodInitiative
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.NeighborhoodInitiative
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.NeighborhoodInitiative|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.NeighborhoodInitiative
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.NeighborhoodInitiative>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.NeighborhoodInitiative[]
function tbl:GetByRelation(foreign_id) end

return {}
