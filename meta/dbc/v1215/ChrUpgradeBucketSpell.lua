---@meta
-- Generated LuaLS annotations for ChrUpgradeBucketSpell (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ChrUpgradeBucketSpell in build 12.1.5.69594.
---@class dbc.row.v1215.ChrUpgradeBucketSpell : RowProxy
---@field ID integer
---@field SpellID integer
---@field ChrUpgradeBucketID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ChrUpgradeBucketSpell self
function row:SetID(value) end

---Gets the value of field 'SpellID'.
---@return integer value
function row:GetSpellID() end

---Sets the value of field 'SpellID'.
---@param value integer
---@return dbc.row.v1215.ChrUpgradeBucketSpell self
function row:SetSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'SpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetSpell() end

---Creates a related 'Spell' row and automatically links 'SpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'ChrUpgradeBucketID'.
---@return integer value
function row:GetChrUpgradeBucketID() end

---Sets the value of field 'ChrUpgradeBucketID'.
---@param value integer
---@return dbc.row.v1215.ChrUpgradeBucketSpell self
function row:SetChrUpgradeBucketID(value) end

---Navigates foreign relationship to 'ChrUpgradeBucket' via 'ChrUpgradeBucketID'.
---@return dbc.row.v1215.ChrUpgradeBucket|nil
function row:GetChrUpgradeBucket() end

---Creates a related 'ChrUpgradeBucket' row and automatically links 'ChrUpgradeBucketID'.
---@param data? table
---@return dbc.row.v1215.ChrUpgradeBucket
function row:CreateRelated(data) end

---Table container for ChrUpgradeBucketSpell (Build 12.1.5.69594).
---@class dbc.Table.v1215.ChrUpgradeBucketSpell : DbcTable
---@field [integer] dbc.row.v1215.ChrUpgradeBucketSpell
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ChrUpgradeBucketSpell
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ChrUpgradeBucketSpell|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ChrUpgradeBucketSpell
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ChrUpgradeBucketSpell>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ChrUpgradeBucketSpell[]
function tbl:GetByRelation(foreign_id) end

return {}
