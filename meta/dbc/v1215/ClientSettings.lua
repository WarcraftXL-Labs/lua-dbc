---@meta
-- Generated LuaLS annotations for ClientSettings (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ClientSettings in build 12.1.5.69594.
---@class dbc.row.v1215.ClientSettings : RowProxy
---@field Field_11_0_0_54464_000 string
---@field ID integer
---@field Field_11_0_0_54464_002 integer
---@field Field_11_0_0_54464_003 integer
---@field Field_11_0_0_54464_004 integer

local row = {}

---Gets the value of field 'Field_11_0_0_54464_000'.
---@return string value
function row:GetField_11_0_0_54464_000() end

---Sets the value of field 'Field_11_0_0_54464_000'.
---@param value string
---@return dbc.row.v1215.ClientSettings self
function row:SetField_11_0_0_54464_000(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ClientSettings self
function row:SetID(value) end

---Gets the value of field 'Field_11_0_0_54464_002'.
---@return integer value
function row:GetField_11_0_0_54464_002() end

---Sets the value of field 'Field_11_0_0_54464_002'.
---@param value integer
---@return dbc.row.v1215.ClientSettings self
function row:SetField_11_0_0_54464_002(value) end

---Gets the value of field 'Field_11_0_0_54464_003'.
---@return integer value
function row:GetField_11_0_0_54464_003() end

---Sets the value of field 'Field_11_0_0_54464_003'.
---@param value integer
---@return dbc.row.v1215.ClientSettings self
function row:SetField_11_0_0_54464_003(value) end

---Gets the value of field 'Field_11_0_0_54464_004'.
---@return integer value
function row:GetField_11_0_0_54464_004() end

---Sets the value of field 'Field_11_0_0_54464_004'.
---@param value integer
---@return dbc.row.v1215.ClientSettings self
function row:SetField_11_0_0_54464_004(value) end

---Table container for ClientSettings (Build 12.1.5.69594).
---@class dbc.Table.v1215.ClientSettings : DbcTable
---@field [integer] dbc.row.v1215.ClientSettings
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ClientSettings
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ClientSettings|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ClientSettings
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ClientSettings>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ClientSettings[]
function tbl:GetByRelation(foreign_id) end

return {}
