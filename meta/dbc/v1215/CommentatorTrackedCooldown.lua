---@meta
-- Generated LuaLS annotations for CommentatorTrackedCooldown (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CommentatorTrackedCooldown in build 12.1.5.69594.
---@class dbc.row.v1215.CommentatorTrackedCooldown : RowProxy
---@field ID integer
---@field SpellID integer
---@field Priority integer
---@field Flags integer
---@field ClassID integer
---@field RaceID integer
---@field ChrSpecID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CommentatorTrackedCooldown self
function row:SetID(value) end

---Gets the value of field 'SpellID'.
---@return integer value
function row:GetSpellID() end

---Sets the value of field 'SpellID'.
---@param value integer
---@return dbc.row.v1215.CommentatorTrackedCooldown self
function row:SetSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'SpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetSpell() end

---Creates a related 'Spell' row and automatically links 'SpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'Priority'.
---@return integer value
function row:GetPriority() end

---Sets the value of field 'Priority'.
---@param value integer
---@return dbc.row.v1215.CommentatorTrackedCooldown self
function row:SetPriority(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.CommentatorTrackedCooldown self
function row:SetFlags(value) end

---Gets the value of field 'ClassID'.
---@return integer value
function row:GetClassID() end

---Sets the value of field 'ClassID'.
---@param value integer
---@return dbc.row.v1215.CommentatorTrackedCooldown self
function row:SetClassID(value) end

---Navigates foreign relationship to 'ChrClasses' via 'ClassID'.
---@return dbc.row.v1215.ChrClasses|nil
function row:GetClass() end

---Creates a related 'ChrClasses' row and automatically links 'ClassID'.
---@param data? table
---@return dbc.row.v1215.ChrClasses
function row:CreateRelated(data) end

---Gets the value of field 'RaceID'.
---@return integer value
function row:GetRaceID() end

---Sets the value of field 'RaceID'.
---@param value integer
---@return dbc.row.v1215.CommentatorTrackedCooldown self
function row:SetRaceID(value) end

---Navigates foreign relationship to 'ChrRaces' via 'RaceID'.
---@return dbc.row.v1215.ChrRaces|nil
function row:GetRace() end

---Creates a related 'ChrRaces' row and automatically links 'RaceID'.
---@param data? table
---@return dbc.row.v1215.ChrRaces
function row:CreateRelated(data) end

---Gets the value of field 'ChrSpecID'.
---@return integer value
function row:GetChrSpecID() end

---Sets the value of field 'ChrSpecID'.
---@param value integer
---@return dbc.row.v1215.CommentatorTrackedCooldown self
function row:SetChrSpecID(value) end

---Navigates foreign relationship to 'ChrSpecialization' via 'ChrSpecID'.
---@return dbc.row.v1215.ChrSpecialization|nil
function row:GetChrSpec() end

---Creates a related 'ChrSpecialization' row and automatically links 'ChrSpecID'.
---@param data? table
---@return dbc.row.v1215.ChrSpecialization
function row:CreateRelated(data) end

---Table container for CommentatorTrackedCooldown (Build 12.1.5.69594).
---@class dbc.Table.v1215.CommentatorTrackedCooldown : DbcTable
---@field [integer] dbc.row.v1215.CommentatorTrackedCooldown
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CommentatorTrackedCooldown
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CommentatorTrackedCooldown|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CommentatorTrackedCooldown
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CommentatorTrackedCooldown>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CommentatorTrackedCooldown[]
function tbl:GetByRelation(foreign_id) end

return {}
