---@meta
-- Generated LuaLS annotations for AzeriteEssencePower (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of AzeriteEssencePower in build 12.1.5.69594.
---@class dbc.row.v1215.AzeriteEssencePower : RowProxy
---@field ID integer
---@field SourceAlliance_lang string
---@field SourceHorde_lang string if null, fall back to SourceAlliance_lang
---@field AzeriteEssenceID integer
---@field Tier integer
---@field MajorPowerDescription integer spell description is only difference to last rank
---@field MinorPowerDescription integer
---@field MajorPowerActual integer the actual spell being used
---@field MinorPowerActual integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.AzeriteEssencePower self
function row:SetID(value) end

---Gets the value of field 'SourceAlliance_lang'.
---@return string value
function row:GetSourceAlliance_lang() end

---Sets the value of field 'SourceAlliance_lang'.
---@param value string
---@return dbc.row.v1215.AzeriteEssencePower self
function row:SetSourceAlliance_lang(value) end

---Gets the value of field 'SourceHorde_lang'.
---@return string value
function row:GetSourceHorde_lang() end

---Sets the value of field 'SourceHorde_lang'.
---@param value string
---@return dbc.row.v1215.AzeriteEssencePower self
function row:SetSourceHorde_lang(value) end

---Gets the value of field 'AzeriteEssenceID'.
---@return integer value
function row:GetAzeriteEssenceID() end

---Sets the value of field 'AzeriteEssenceID'.
---@param value integer
---@return dbc.row.v1215.AzeriteEssencePower self
function row:SetAzeriteEssenceID(value) end

---Navigates foreign relationship to 'AzeriteEssence' via 'AzeriteEssenceID'.
---@return dbc.row.v1215.AzeriteEssence|nil
function row:GetAzeriteEssence() end

---Creates a related 'AzeriteEssence' row and automatically links 'AzeriteEssenceID'.
---@param data? table
---@return dbc.row.v1215.AzeriteEssence
function row:CreateRelated(data) end

---Gets the value of field 'Tier'.
---@return integer value
function row:GetTier() end

---Sets the value of field 'Tier'.
---@param value integer
---@return dbc.row.v1215.AzeriteEssencePower self
function row:SetTier(value) end

---Gets the value of field 'MajorPowerDescription'.
---@return integer value
function row:GetMajorPowerDescription() end

---Sets the value of field 'MajorPowerDescription'.
---@param value integer
---@return dbc.row.v1215.AzeriteEssencePower self
function row:SetMajorPowerDescription(value) end

---Navigates foreign relationship to 'Spell' via 'MajorPowerDescription'.
---@return dbc.row.v1215.Spell|nil
function row:GetMajorPowerDescription() end

---Creates a related 'Spell' row and automatically links 'MajorPowerDescription'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'MinorPowerDescription'.
---@return integer value
function row:GetMinorPowerDescription() end

---Sets the value of field 'MinorPowerDescription'.
---@param value integer
---@return dbc.row.v1215.AzeriteEssencePower self
function row:SetMinorPowerDescription(value) end

---Navigates foreign relationship to 'Spell' via 'MinorPowerDescription'.
---@return dbc.row.v1215.Spell|nil
function row:GetMinorPowerDescription() end

---Creates a related 'Spell' row and automatically links 'MinorPowerDescription'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'MajorPowerActual'.
---@return integer value
function row:GetMajorPowerActual() end

---Sets the value of field 'MajorPowerActual'.
---@param value integer
---@return dbc.row.v1215.AzeriteEssencePower self
function row:SetMajorPowerActual(value) end

---Navigates foreign relationship to 'Spell' via 'MajorPowerActual'.
---@return dbc.row.v1215.Spell|nil
function row:GetMajorPowerActual() end

---Creates a related 'Spell' row and automatically links 'MajorPowerActual'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'MinorPowerActual'.
---@return integer value
function row:GetMinorPowerActual() end

---Sets the value of field 'MinorPowerActual'.
---@param value integer
---@return dbc.row.v1215.AzeriteEssencePower self
function row:SetMinorPowerActual(value) end

---Navigates foreign relationship to 'Spell' via 'MinorPowerActual'.
---@return dbc.row.v1215.Spell|nil
function row:GetMinorPowerActual() end

---Creates a related 'Spell' row and automatically links 'MinorPowerActual'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Table container for AzeriteEssencePower (Build 12.1.5.69594).
---@class dbc.Table.v1215.AzeriteEssencePower : DbcTable
---@field [integer] dbc.row.v1215.AzeriteEssencePower
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.AzeriteEssencePower
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.AzeriteEssencePower|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.AzeriteEssencePower
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.AzeriteEssencePower>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.AzeriteEssencePower[]
function tbl:GetByRelation(foreign_id) end

return {}
