---@meta
-- Generated LuaLS annotations for ChrRacesPing (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ChrRacesPing in build 12.1.5.69594.
---@class dbc.row.v1215.ChrRacesPing : RowProxy
---@field ID integer
---@field Field_10_1_7_50442_000 integer
---@field Field_10_1_7_50442_001 integer
---@field Field_10_1_7_50442_002 integer
---@field Field_10_1_7_50442_003 integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ChrRacesPing self
function row:SetID(value) end

---Gets the value of field 'Field_10_1_7_50442_000'.
---@return integer value
function row:GetField_10_1_7_50442_000() end

---Sets the value of field 'Field_10_1_7_50442_000'.
---@param value integer
---@return dbc.row.v1215.ChrRacesPing self
function row:SetField_10_1_7_50442_000(value) end

---Gets the value of field 'Field_10_1_7_50442_001'.
---@return integer value
function row:GetField_10_1_7_50442_001() end

---Sets the value of field 'Field_10_1_7_50442_001'.
---@param value integer
---@return dbc.row.v1215.ChrRacesPing self
function row:SetField_10_1_7_50442_001(value) end

---Gets the value of field 'Field_10_1_7_50442_002'.
---@return integer value
function row:GetField_10_1_7_50442_002() end

---Sets the value of field 'Field_10_1_7_50442_002'.
---@param value integer
---@return dbc.row.v1215.ChrRacesPing self
function row:SetField_10_1_7_50442_002(value) end

---Gets the value of field 'Field_10_1_7_50442_003'.
---@return integer value
function row:GetField_10_1_7_50442_003() end

---Sets the value of field 'Field_10_1_7_50442_003'.
---@param value integer
---@return dbc.row.v1215.ChrRacesPing self
function row:SetField_10_1_7_50442_003(value) end

---Table container for ChrRacesPing (Build 12.1.5.69594).
---@class dbc.Table.v1215.ChrRacesPing : DbcTable
---@field [integer] dbc.row.v1215.ChrRacesPing
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ChrRacesPing
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ChrRacesPing|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ChrRacesPing
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ChrRacesPing>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ChrRacesPing[]
function tbl:GetByRelation(foreign_id) end

return {}
