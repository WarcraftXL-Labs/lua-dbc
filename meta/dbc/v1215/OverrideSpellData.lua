---@meta
-- Generated LuaLS annotations for OverrideSpellData (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of OverrideSpellData in build 12.1.5.69594.
---@class dbc.row.v1215.OverrideSpellData : RowProxy
---@field ID integer
---@field Spells integer[]
---@field PlayerActionbarFileDataID integer
---@field Flags integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.OverrideSpellData self
function row:SetID(value) end

---Gets the value of field 'Spells'.
---@return integer[] value
function row:GetSpells() end

---Sets the value of field 'Spells'.
---@param value integer[]
---@return dbc.row.v1215.OverrideSpellData self
function row:SetSpells(value) end

---Gets element at 1-based index in 'Spells'.
---@param index integer
---@return integer value
function row:GetSpellsItem(index) end

---Navigates foreign relationship to 'Spell' via 'Spells'.
---@return dbc.row.v1215.Spell|nil
function row:GetSpells() end

---Creates a related 'Spell' row and automatically links 'Spells'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'PlayerActionbarFileDataID'.
---@return integer value
function row:GetPlayerActionbarFileDataID() end

---Sets the value of field 'PlayerActionbarFileDataID'.
---@param value integer
---@return dbc.row.v1215.OverrideSpellData self
function row:SetPlayerActionbarFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'PlayerActionbarFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetPlayerActionbarFileData() end

---Creates a related 'FileData' row and automatically links 'PlayerActionbarFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.OverrideSpellData self
function row:SetFlags(value) end

---Table container for OverrideSpellData (Build 12.1.5.69594).
---@class dbc.Table.v1215.OverrideSpellData : DbcTable
---@field [integer] dbc.row.v1215.OverrideSpellData
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.OverrideSpellData
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.OverrideSpellData|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.OverrideSpellData
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.OverrideSpellData>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.OverrideSpellData[]
function tbl:GetByRelation(foreign_id) end

return {}
