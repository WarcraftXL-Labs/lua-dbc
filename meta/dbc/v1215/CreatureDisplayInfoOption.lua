---@meta
-- Generated LuaLS annotations for CreatureDisplayInfoOption (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CreatureDisplayInfoOption in build 12.1.5.69594.
---@class dbc.row.v1215.CreatureDisplayInfoOption : RowProxy
---@field ID integer
---@field ChrCustomizationOptionID integer
---@field ChrCustomizationChoiceID integer
---@field CreatureDisplayInfoExtraID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CreatureDisplayInfoOption self
function row:SetID(value) end

---Gets the value of field 'ChrCustomizationOptionID'.
---@return integer value
function row:GetChrCustomizationOptionID() end

---Sets the value of field 'ChrCustomizationOptionID'.
---@param value integer
---@return dbc.row.v1215.CreatureDisplayInfoOption self
function row:SetChrCustomizationOptionID(value) end

---Navigates foreign relationship to 'ChrCustomizationOption' via 'ChrCustomizationOptionID'.
---@return dbc.row.v1215.ChrCustomizationOption|nil
function row:GetChrCustomizationOption() end

---Creates a related 'ChrCustomizationOption' row and automatically links 'ChrCustomizationOptionID'.
---@param data? table
---@return dbc.row.v1215.ChrCustomizationOption
function row:CreateRelated(data) end

---Gets the value of field 'ChrCustomizationChoiceID'.
---@return integer value
function row:GetChrCustomizationChoiceID() end

---Sets the value of field 'ChrCustomizationChoiceID'.
---@param value integer
---@return dbc.row.v1215.CreatureDisplayInfoOption self
function row:SetChrCustomizationChoiceID(value) end

---Navigates foreign relationship to 'ChrCustomizationChoice' via 'ChrCustomizationChoiceID'.
---@return dbc.row.v1215.ChrCustomizationChoice|nil
function row:GetChrCustomizationChoice() end

---Creates a related 'ChrCustomizationChoice' row and automatically links 'ChrCustomizationChoiceID'.
---@param data? table
---@return dbc.row.v1215.ChrCustomizationChoice
function row:CreateRelated(data) end

---Gets the value of field 'CreatureDisplayInfoExtraID'.
---@return integer value
function row:GetCreatureDisplayInfoExtraID() end

---Sets the value of field 'CreatureDisplayInfoExtraID'.
---@param value integer
---@return dbc.row.v1215.CreatureDisplayInfoOption self
function row:SetCreatureDisplayInfoExtraID(value) end

---Navigates foreign relationship to 'CreatureDisplayInfoExtra' via 'CreatureDisplayInfoExtraID'.
---@return dbc.row.v1215.CreatureDisplayInfoExtra|nil
function row:GetCreatureDisplayInfoExtra() end

---Creates a related 'CreatureDisplayInfoExtra' row and automatically links 'CreatureDisplayInfoExtraID'.
---@param data? table
---@return dbc.row.v1215.CreatureDisplayInfoExtra
function row:CreateRelated(data) end

---Table container for CreatureDisplayInfoOption (Build 12.1.5.69594).
---@class dbc.Table.v1215.CreatureDisplayInfoOption : DbcTable
---@field [integer] dbc.row.v1215.CreatureDisplayInfoOption
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CreatureDisplayInfoOption
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CreatureDisplayInfoOption|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CreatureDisplayInfoOption
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CreatureDisplayInfoOption>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CreatureDisplayInfoOption[]
function tbl:GetByRelation(foreign_id) end

return {}
