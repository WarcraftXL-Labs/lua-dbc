---@meta
-- Generated LuaLS annotations for CommentatorIndirectSpell (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CommentatorIndirectSpell in build 12.1.5.69594.
---@class dbc.row.v1215.CommentatorIndirectSpell : RowProxy
---@field ID integer
---@field TalentSpellID integer
---@field TriggeredAuraSpellID integer
---@field ChrSpecID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CommentatorIndirectSpell self
function row:SetID(value) end

---Gets the value of field 'TalentSpellID'.
---@return integer value
function row:GetTalentSpellID() end

---Sets the value of field 'TalentSpellID'.
---@param value integer
---@return dbc.row.v1215.CommentatorIndirectSpell self
function row:SetTalentSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'TalentSpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetTalentSpell() end

---Creates a related 'Spell' row and automatically links 'TalentSpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'TriggeredAuraSpellID'.
---@return integer value
function row:GetTriggeredAuraSpellID() end

---Sets the value of field 'TriggeredAuraSpellID'.
---@param value integer
---@return dbc.row.v1215.CommentatorIndirectSpell self
function row:SetTriggeredAuraSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'TriggeredAuraSpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetTriggeredAuraSpell() end

---Creates a related 'Spell' row and automatically links 'TriggeredAuraSpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'ChrSpecID'.
---@return integer value
function row:GetChrSpecID() end

---Sets the value of field 'ChrSpecID'.
---@param value integer
---@return dbc.row.v1215.CommentatorIndirectSpell self
function row:SetChrSpecID(value) end

---Navigates foreign relationship to 'ChrSpecialization' via 'ChrSpecID'.
---@return dbc.row.v1215.ChrSpecialization|nil
function row:GetChrSpec() end

---Creates a related 'ChrSpecialization' row and automatically links 'ChrSpecID'.
---@param data? table
---@return dbc.row.v1215.ChrSpecialization
function row:CreateRelated(data) end

---Table container for CommentatorIndirectSpell (Build 12.1.5.69594).
---@class dbc.Table.v1215.CommentatorIndirectSpell : DbcTable
---@field [integer] dbc.row.v1215.CommentatorIndirectSpell
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CommentatorIndirectSpell
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CommentatorIndirectSpell|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CommentatorIndirectSpell
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CommentatorIndirectSpell>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CommentatorIndirectSpell[]
function tbl:GetByRelation(foreign_id) end

return {}
