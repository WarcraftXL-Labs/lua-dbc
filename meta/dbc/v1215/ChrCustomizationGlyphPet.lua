---@meta
-- Generated LuaLS annotations for ChrCustomizationGlyphPet (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ChrCustomizationGlyphPet in build 12.1.5.69594.
---@class dbc.row.v1215.ChrCustomizationGlyphPet : RowProxy
---@field ID integer
---@field ChrCustomizationChoiceID integer
---@field ChrCustomizationOptionID integer
---@field CreatureID integer
---@field CreatureID2 integer
---@field CreatureDisplayInfoID integer
---@field CreatureDisplayInfoID2 integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationGlyphPet self
function row:SetID(value) end

---Gets the value of field 'ChrCustomizationChoiceID'.
---@return integer value
function row:GetChrCustomizationChoiceID() end

---Sets the value of field 'ChrCustomizationChoiceID'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationGlyphPet self
function row:SetChrCustomizationChoiceID(value) end

---Navigates foreign relationship to 'ChrCustomizationChoice' via 'ChrCustomizationChoiceID'.
---@return dbc.row.v1215.ChrCustomizationChoice|nil
function row:GetChrCustomizationChoice() end

---Creates a related 'ChrCustomizationChoice' row and automatically links 'ChrCustomizationChoiceID'.
---@param data? table
---@return dbc.row.v1215.ChrCustomizationChoice
function row:CreateRelated(data) end

---Gets the value of field 'ChrCustomizationOptionID'.
---@return integer value
function row:GetChrCustomizationOptionID() end

---Sets the value of field 'ChrCustomizationOptionID'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationGlyphPet self
function row:SetChrCustomizationOptionID(value) end

---Navigates foreign relationship to 'ChrCustomizationOption' via 'ChrCustomizationOptionID'.
---@return dbc.row.v1215.ChrCustomizationOption|nil
function row:GetChrCustomizationOption() end

---Creates a related 'ChrCustomizationOption' row and automatically links 'ChrCustomizationOptionID'.
---@param data? table
---@return dbc.row.v1215.ChrCustomizationOption
function row:CreateRelated(data) end

---Gets the value of field 'CreatureID'.
---@return integer value
function row:GetCreatureID() end

---Sets the value of field 'CreatureID'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationGlyphPet self
function row:SetCreatureID(value) end

---Navigates foreign relationship to 'Creature' via 'CreatureID'.
---@return dbc.row.v1215.Creature|nil
function row:GetCreature() end

---Creates a related 'Creature' row and automatically links 'CreatureID'.
---@param data? table
---@return dbc.row.v1215.Creature
function row:CreateRelated(data) end

---Gets the value of field 'CreatureID2'.
---@return integer value
function row:GetCreatureID2() end

---Sets the value of field 'CreatureID2'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationGlyphPet self
function row:SetCreatureID2(value) end

---Navigates foreign relationship to 'Creature' via 'CreatureID2'.
---@return dbc.row.v1215.Creature|nil
function row:GetCreatureID2() end

---Creates a related 'Creature' row and automatically links 'CreatureID2'.
---@param data? table
---@return dbc.row.v1215.Creature
function row:CreateRelated(data) end

---Gets the value of field 'CreatureDisplayInfoID'.
---@return integer value
function row:GetCreatureDisplayInfoID() end

---Sets the value of field 'CreatureDisplayInfoID'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationGlyphPet self
function row:SetCreatureDisplayInfoID(value) end

---Navigates foreign relationship to 'CreatureDisplayInfo' via 'CreatureDisplayInfoID'.
---@return dbc.row.v1215.CreatureDisplayInfo|nil
function row:GetCreatureDisplayInfo() end

---Creates a related 'CreatureDisplayInfo' row and automatically links 'CreatureDisplayInfoID'.
---@param data? table
---@return dbc.row.v1215.CreatureDisplayInfo
function row:CreateRelated(data) end

---Gets the value of field 'CreatureDisplayInfoID2'.
---@return integer value
function row:GetCreatureDisplayInfoID2() end

---Sets the value of field 'CreatureDisplayInfoID2'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationGlyphPet self
function row:SetCreatureDisplayInfoID2(value) end

---Navigates foreign relationship to 'CreatureDisplayInfo' via 'CreatureDisplayInfoID2'.
---@return dbc.row.v1215.CreatureDisplayInfo|nil
function row:GetCreatureDisplayInfoID2() end

---Creates a related 'CreatureDisplayInfo' row and automatically links 'CreatureDisplayInfoID2'.
---@param data? table
---@return dbc.row.v1215.CreatureDisplayInfo
function row:CreateRelated(data) end

---Table container for ChrCustomizationGlyphPet (Build 12.1.5.69594).
---@class dbc.Table.v1215.ChrCustomizationGlyphPet : DbcTable
---@field [integer] dbc.row.v1215.ChrCustomizationGlyphPet
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ChrCustomizationGlyphPet
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ChrCustomizationGlyphPet|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ChrCustomizationGlyphPet
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ChrCustomizationGlyphPet>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ChrCustomizationGlyphPet[]
function tbl:GetByRelation(foreign_id) end

return {}
