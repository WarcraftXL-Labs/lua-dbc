---@meta
-- Generated LuaLS annotations for GlyphProperties (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GlyphProperties in build 12.1.5.69594.
---@class dbc.row.v1215.GlyphProperties : RowProxy
---@field ID integer
---@field SpellID integer
---@field GlyphType integer
---@field GlyphExclusiveCategoryID integer
---@field SpellIconFileDataID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GlyphProperties self
function row:SetID(value) end

---Gets the value of field 'SpellID'.
---@return integer value
function row:GetSpellID() end

---Sets the value of field 'SpellID'.
---@param value integer
---@return dbc.row.v1215.GlyphProperties self
function row:SetSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'SpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetSpell() end

---Creates a related 'Spell' row and automatically links 'SpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'GlyphType'.
---@return integer value
function row:GetGlyphType() end

---Sets the value of field 'GlyphType'.
---@param value integer
---@return dbc.row.v1215.GlyphProperties self
function row:SetGlyphType(value) end

---Gets the value of field 'GlyphExclusiveCategoryID'.
---@return integer value
function row:GetGlyphExclusiveCategoryID() end

---Sets the value of field 'GlyphExclusiveCategoryID'.
---@param value integer
---@return dbc.row.v1215.GlyphProperties self
function row:SetGlyphExclusiveCategoryID(value) end

---Navigates foreign relationship to 'GlyphExclusiveCategory' via 'GlyphExclusiveCategoryID'.
---@return dbc.row.v1215.GlyphExclusiveCategory|nil
function row:GetGlyphExclusiveCategory() end

---Creates a related 'GlyphExclusiveCategory' row and automatically links 'GlyphExclusiveCategoryID'.
---@param data? table
---@return dbc.row.v1215.GlyphExclusiveCategory
function row:CreateRelated(data) end

---Gets the value of field 'SpellIconFileDataID'.
---@return integer value
function row:GetSpellIconFileDataID() end

---Sets the value of field 'SpellIconFileDataID'.
---@param value integer
---@return dbc.row.v1215.GlyphProperties self
function row:SetSpellIconFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'SpellIconFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetSpellIconFileData() end

---Creates a related 'FileData' row and automatically links 'SpellIconFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Table container for GlyphProperties (Build 12.1.5.69594).
---@class dbc.Table.v1215.GlyphProperties : DbcTable
---@field [integer] dbc.row.v1215.GlyphProperties
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GlyphProperties
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GlyphProperties|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GlyphProperties
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GlyphProperties>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GlyphProperties[]
function tbl:GetByRelation(foreign_id) end

return {}
