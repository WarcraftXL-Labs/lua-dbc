---@meta
-- Generated LuaLS annotations for EnvironmentalDamage (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of EnvironmentalDamage in build 12.1.5.69594.
---@class dbc.row.v1215.EnvironmentalDamage : RowProxy
---@field ID integer
---@field EnumID integer
---@field VisualkitID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.EnvironmentalDamage self
function row:SetID(value) end

---Gets the value of field 'EnumID'.
---@return integer value
function row:GetEnumID() end

---Sets the value of field 'EnumID'.
---@param value integer
---@return dbc.row.v1215.EnvironmentalDamage self
function row:SetEnumID(value) end

---Navigates foreign relationship to 'Enum' via 'EnumID'.
---@return dbc.row.v1215.Enum|nil
function row:GetEnum() end

---Creates a related 'Enum' row and automatically links 'EnumID'.
---@param data? table
---@return dbc.row.v1215.Enum
function row:CreateRelated(data) end

---Gets the value of field 'VisualkitID'.
---@return integer value
function row:GetVisualkitID() end

---Sets the value of field 'VisualkitID'.
---@param value integer
---@return dbc.row.v1215.EnvironmentalDamage self
function row:SetVisualkitID(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'VisualkitID'.
---@return dbc.row.v1215.SpellVisualKit|nil
function row:GetVisualkit() end

---Creates a related 'SpellVisualKit' row and automatically links 'VisualkitID'.
---@param data? table
---@return dbc.row.v1215.SpellVisualKit
function row:CreateRelated(data) end

---Table container for EnvironmentalDamage (Build 12.1.5.69594).
---@class dbc.Table.v1215.EnvironmentalDamage : DbcTable
---@field [integer] dbc.row.v1215.EnvironmentalDamage
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.EnvironmentalDamage
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.EnvironmentalDamage|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.EnvironmentalDamage
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.EnvironmentalDamage>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.EnvironmentalDamage[]
function tbl:GetByRelation(foreign_id) end

return {}
