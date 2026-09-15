---@meta
-- Generated LuaLS annotations for Exhaustion (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of Exhaustion in build 12.1.5.69594.
---@class dbc.row.v1215.Exhaustion : RowProxy
---@field ID integer
---@field Name_lang string
---@field CombatLogText string
---@field Xp integer
---@field Factor number
---@field OutdoorHours number
---@field InnHours number
---@field Threshold number

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.Exhaustion self
function row:SetID(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.Exhaustion self
function row:SetName_lang(value) end

---Gets the value of field 'CombatLogText'.
---@return string value
function row:GetCombatLogText() end

---Sets the value of field 'CombatLogText'.
---@param value string
---@return dbc.row.v1215.Exhaustion self
function row:SetCombatLogText(value) end

---Gets the value of field 'Xp'.
---@return integer value
function row:GetXp() end

---Sets the value of field 'Xp'.
---@param value integer
---@return dbc.row.v1215.Exhaustion self
function row:SetXp(value) end

---Gets the value of field 'Factor'.
---@return number value
function row:GetFactor() end

---Sets the value of field 'Factor'.
---@param value number
---@return dbc.row.v1215.Exhaustion self
function row:SetFactor(value) end

---Gets the value of field 'OutdoorHours'.
---@return number value
function row:GetOutdoorHours() end

---Sets the value of field 'OutdoorHours'.
---@param value number
---@return dbc.row.v1215.Exhaustion self
function row:SetOutdoorHours(value) end

---Gets the value of field 'InnHours'.
---@return number value
function row:GetInnHours() end

---Sets the value of field 'InnHours'.
---@param value number
---@return dbc.row.v1215.Exhaustion self
function row:SetInnHours(value) end

---Gets the value of field 'Threshold'.
---@return number value
function row:GetThreshold() end

---Sets the value of field 'Threshold'.
---@param value number
---@return dbc.row.v1215.Exhaustion self
function row:SetThreshold(value) end

---Table container for Exhaustion (Build 12.1.5.69594).
---@class dbc.Table.v1215.Exhaustion : DbcTable
---@field [integer] dbc.row.v1215.Exhaustion
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.Exhaustion
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.Exhaustion|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.Exhaustion
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.Exhaustion>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.Exhaustion[]
function tbl:GetByRelation(foreign_id) end

return {}
