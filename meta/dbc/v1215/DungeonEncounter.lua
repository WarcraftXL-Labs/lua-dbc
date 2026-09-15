---@meta
-- Generated LuaLS annotations for DungeonEncounter (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of DungeonEncounter in build 12.1.5.69594.
---@class dbc.row.v1215.DungeonEncounter : RowProxy
---@field Name_lang string
---@field ID integer
---@field MapID integer
---@field DifficultyID integer
---@field OrderIndex integer
---@field CompleteWorldStateID integer
---@field Bit integer
---@field Flags integer
---@field SpellIconFileID integer
---@field Faction integer -1: any, 0: Horde, 1: Alliance
---@field ItemSequenceLevel integer

local row = {}

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.DungeonEncounter self
function row:SetName_lang(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.DungeonEncounter self
function row:SetID(value) end

---Gets the value of field 'MapID'.
---@return integer value
function row:GetMapID() end

---Sets the value of field 'MapID'.
---@param value integer
---@return dbc.row.v1215.DungeonEncounter self
function row:SetMapID(value) end

---Navigates foreign relationship to 'Map' via 'MapID'.
---@return dbc.row.v1215.Map|nil
function row:GetMap() end

---Creates a related 'Map' row and automatically links 'MapID'.
---@param data? table
---@return dbc.row.v1215.Map
function row:CreateRelated(data) end

---Gets the value of field 'DifficultyID'.
---@return integer value
function row:GetDifficultyID() end

---Sets the value of field 'DifficultyID'.
---@param value integer
---@return dbc.row.v1215.DungeonEncounter self
function row:SetDifficultyID(value) end

---Navigates foreign relationship to 'Difficulty' via 'DifficultyID'.
---@return dbc.row.v1215.Difficulty|nil
function row:GetDifficulty() end

---Creates a related 'Difficulty' row and automatically links 'DifficultyID'.
---@param data? table
---@return dbc.row.v1215.Difficulty
function row:CreateRelated(data) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.DungeonEncounter self
function row:SetOrderIndex(value) end

---Gets the value of field 'CompleteWorldStateID'.
---@return integer value
function row:GetCompleteWorldStateID() end

---Sets the value of field 'CompleteWorldStateID'.
---@param value integer
---@return dbc.row.v1215.DungeonEncounter self
function row:SetCompleteWorldStateID(value) end

---Navigates foreign relationship to 'WorldState' via 'CompleteWorldStateID'.
---@return dbc.row.v1215.WorldState|nil
function row:GetCompleteWorldState() end

---Creates a related 'WorldState' row and automatically links 'CompleteWorldStateID'.
---@param data? table
---@return dbc.row.v1215.WorldState
function row:CreateRelated(data) end

---Gets the value of field 'Bit'.
---@return integer value
function row:GetBit() end

---Sets the value of field 'Bit'.
---@param value integer
---@return dbc.row.v1215.DungeonEncounter self
function row:SetBit(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.DungeonEncounter self
function row:SetFlags(value) end

---Gets the value of field 'SpellIconFileID'.
---@return integer value
function row:GetSpellIconFileID() end

---Sets the value of field 'SpellIconFileID'.
---@param value integer
---@return dbc.row.v1215.DungeonEncounter self
function row:SetSpellIconFileID(value) end

---Navigates foreign relationship to 'FileData' via 'SpellIconFileID'.
---@return dbc.row.v1215.FileData|nil
function row:GetSpellIconFile() end

---Creates a related 'FileData' row and automatically links 'SpellIconFileID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'Faction'.
---@return integer value
function row:GetFaction() end

---Sets the value of field 'Faction'.
---@param value integer
---@return dbc.row.v1215.DungeonEncounter self
function row:SetFaction(value) end

---Gets the value of field 'ItemSequenceLevel'.
---@return integer value
function row:GetItemSequenceLevel() end

---Sets the value of field 'ItemSequenceLevel'.
---@param value integer
---@return dbc.row.v1215.DungeonEncounter self
function row:SetItemSequenceLevel(value) end

---Table container for DungeonEncounter (Build 12.1.5.69594).
---@class dbc.Table.v1215.DungeonEncounter : DbcTable
---@field [integer] dbc.row.v1215.DungeonEncounter
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.DungeonEncounter
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.DungeonEncounter|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.DungeonEncounter
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.DungeonEncounter>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.DungeonEncounter[]
function tbl:GetByRelation(foreign_id) end

return {}
