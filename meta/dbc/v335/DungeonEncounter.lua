---@meta
-- Generated LuaLS annotations for DungeonEncounter (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of DungeonEncounter in build 3.3.5.12340.
---@class dbc.row.v335.DungeonEncounter : RowProxy
---@field ID integer
---@field MapID integer
---@field Difficulty integer
---@field OrderIndex integer
---@field Bit integer
---@field Name_lang string
---@field SpellIconID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.DungeonEncounter self
function row:SetID(value) end

---Gets the value of field 'MapID'.
---@return integer value
function row:GetMapID() end

---Sets the value of field 'MapID'.
---@param value integer
---@return dbc.row.v335.DungeonEncounter self
function row:SetMapID(value) end

---Navigates foreign relationship to 'Map' via 'MapID'.
---@return dbc.row.v335.Map|nil
function row:GetMap() end

---Creates a related 'Map' row and automatically links 'MapID'.
---@param data? table
---@return dbc.row.v335.Map
function row:CreateRelated(data) end

---Gets the value of field 'Difficulty'.
---@return integer value
function row:GetDifficulty() end

---Sets the value of field 'Difficulty'.
---@param value integer
---@return dbc.row.v335.DungeonEncounter self
function row:SetDifficulty(value) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v335.DungeonEncounter self
function row:SetOrderIndex(value) end

---Gets the value of field 'Bit'.
---@return integer value
function row:GetBit() end

---Sets the value of field 'Bit'.
---@param value integer
---@return dbc.row.v335.DungeonEncounter self
function row:SetBit(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v335.DungeonEncounter self
function row:SetName_lang(value) end

---Gets the value of field 'SpellIconID'.
---@return integer value
function row:GetSpellIconID() end

---Sets the value of field 'SpellIconID'.
---@param value integer
---@return dbc.row.v335.DungeonEncounter self
function row:SetSpellIconID(value) end

---Navigates foreign relationship to 'SpellIcon' via 'SpellIconID'.
---@return dbc.row.v335.SpellIcon|nil
function row:GetSpellIcon() end

---Creates a related 'SpellIcon' row and automatically links 'SpellIconID'.
---@param data? table
---@return dbc.row.v335.SpellIcon
function row:CreateRelated(data) end

---Table container for DungeonEncounter (Build 3.3.5.12340).
---@class dbc.Table.v335.DungeonEncounter : DbcTable
---@field [integer] dbc.row.v335.DungeonEncounter
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.DungeonEncounter
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.DungeonEncounter|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.DungeonEncounter
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.DungeonEncounter>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.DungeonEncounter[]
function tbl:GetByRelation(foreign_id) end

return {}
