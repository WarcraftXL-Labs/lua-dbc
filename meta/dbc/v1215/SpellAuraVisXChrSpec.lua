---@meta
-- Generated LuaLS annotations for SpellAuraVisXChrSpec (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SpellAuraVisXChrSpec in build 12.1.5.69594.
---@class dbc.row.v1215.SpellAuraVisXChrSpec : RowProxy
---@field ID integer
---@field ChrSpecializationID integer
---@field SpellAuraVisibilityID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SpellAuraVisXChrSpec self
function row:SetID(value) end

---Gets the value of field 'ChrSpecializationID'.
---@return integer value
function row:GetChrSpecializationID() end

---Sets the value of field 'ChrSpecializationID'.
---@param value integer
---@return dbc.row.v1215.SpellAuraVisXChrSpec self
function row:SetChrSpecializationID(value) end

---Navigates foreign relationship to 'ChrSpecialization' via 'ChrSpecializationID'.
---@return dbc.row.v1215.ChrSpecialization|nil
function row:GetChrSpecialization() end

---Creates a related 'ChrSpecialization' row and automatically links 'ChrSpecializationID'.
---@param data? table
---@return dbc.row.v1215.ChrSpecialization
function row:CreateRelated(data) end

---Gets the value of field 'SpellAuraVisibilityID'.
---@return integer value
function row:GetSpellAuraVisibilityID() end

---Sets the value of field 'SpellAuraVisibilityID'.
---@param value integer
---@return dbc.row.v1215.SpellAuraVisXChrSpec self
function row:SetSpellAuraVisibilityID(value) end

---Navigates foreign relationship to 'SpellAuraVisibility' via 'SpellAuraVisibilityID'.
---@return dbc.row.v1215.SpellAuraVisibility|nil
function row:GetSpellAuraVisibility() end

---Creates a related 'SpellAuraVisibility' row and automatically links 'SpellAuraVisibilityID'.
---@param data? table
---@return dbc.row.v1215.SpellAuraVisibility
function row:CreateRelated(data) end

---Table container for SpellAuraVisXChrSpec (Build 12.1.5.69594).
---@class dbc.Table.v1215.SpellAuraVisXChrSpec : DbcTable
---@field [integer] dbc.row.v1215.SpellAuraVisXChrSpec
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SpellAuraVisXChrSpec
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SpellAuraVisXChrSpec|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SpellAuraVisXChrSpec
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SpellAuraVisXChrSpec>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SpellAuraVisXChrSpec[]
function tbl:GetByRelation(foreign_id) end

return {}
