---@meta
-- Generated LuaLS annotations for DamageMeterOverride (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of DamageMeterOverride in build 12.1.5.69594.
---@class dbc.row.v1215.DamageMeterOverride : RowProxy
---@field ID integer
---@field Field_12_0_0_64741_000 integer
---@field Field_12_0_0_64741_001 integer
---@field Flags integer
---@field Type integer 0: Ignore, 1: RedirectSource, 2: AllowFriendlyFire
---@field Field_12_0_0_64975_004 integer
---@field Field_12_0_0_64975_005 integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.DamageMeterOverride self
function row:SetID(value) end

---Gets the value of field 'Field_12_0_0_64741_000'.
---@return integer value
function row:GetField_12_0_0_64741_000() end

---Sets the value of field 'Field_12_0_0_64741_000'.
---@param value integer
---@return dbc.row.v1215.DamageMeterOverride self
function row:SetField_12_0_0_64741_000(value) end

---Navigates foreign relationship to 'Spell' via 'Field_12_0_0_64741_000'.
---@return dbc.row.v1215.Spell|nil
function row:GetField_12_0_0_64741_000() end

---Creates a related 'Spell' row and automatically links 'Field_12_0_0_64741_000'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'Field_12_0_0_64741_001'.
---@return integer value
function row:GetField_12_0_0_64741_001() end

---Sets the value of field 'Field_12_0_0_64741_001'.
---@param value integer
---@return dbc.row.v1215.DamageMeterOverride self
function row:SetField_12_0_0_64741_001(value) end

---Navigates foreign relationship to 'Spell' via 'Field_12_0_0_64741_001'.
---@return dbc.row.v1215.Spell|nil
function row:GetField_12_0_0_64741_001() end

---Creates a related 'Spell' row and automatically links 'Field_12_0_0_64741_001'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.DamageMeterOverride self
function row:SetFlags(value) end

---Gets the value of field 'Type'.
---@return integer value
function row:GetType() end

---Sets the value of field 'Type'.
---@param value integer
---@return dbc.row.v1215.DamageMeterOverride self
function row:SetType(value) end

---Gets the value of field 'Field_12_0_0_64975_004'.
---@return integer value
function row:GetField_12_0_0_64975_004() end

---Sets the value of field 'Field_12_0_0_64975_004'.
---@param value integer
---@return dbc.row.v1215.DamageMeterOverride self
function row:SetField_12_0_0_64975_004(value) end

---Navigates foreign relationship to 'Spell' via 'Field_12_0_0_64975_004'.
---@return dbc.row.v1215.Spell|nil
function row:GetField_12_0_0_64975_004() end

---Creates a related 'Spell' row and automatically links 'Field_12_0_0_64975_004'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'Field_12_0_0_64975_005'.
---@return integer value
function row:GetField_12_0_0_64975_005() end

---Sets the value of field 'Field_12_0_0_64975_005'.
---@param value integer
---@return dbc.row.v1215.DamageMeterOverride self
function row:SetField_12_0_0_64975_005(value) end

---Table container for DamageMeterOverride (Build 12.1.5.69594).
---@class dbc.Table.v1215.DamageMeterOverride : DbcTable
---@field [integer] dbc.row.v1215.DamageMeterOverride
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.DamageMeterOverride
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.DamageMeterOverride|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.DamageMeterOverride
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.DamageMeterOverride>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.DamageMeterOverride[]
function tbl:GetByRelation(foreign_id) end

return {}
