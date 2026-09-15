---@meta
-- Generated LuaLS annotations for PetPersonality (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of PetPersonality in build 3.3.5.12340.
---@class dbc.row.v335.PetPersonality : RowProxy
---@field ID integer
---@field Name_lang string
---@field HappinessThreshold integer[]
---@field HappinessDamage number[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.PetPersonality self
function row:SetID(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v335.PetPersonality self
function row:SetName_lang(value) end

---Gets the value of field 'HappinessThreshold'.
---@return integer[] value
function row:GetHappinessThreshold() end

---Sets the value of field 'HappinessThreshold'.
---@param value integer[]
---@return dbc.row.v335.PetPersonality self
function row:SetHappinessThreshold(value) end

---Gets element at 1-based index in 'HappinessThreshold'.
---@param index integer
---@return integer value
function row:GetHappinessThresholdItem(index) end

---Gets the value of field 'HappinessDamage'.
---@return number[] value
function row:GetHappinessDamage() end

---Sets the value of field 'HappinessDamage'.
---@param value number[]
---@return dbc.row.v335.PetPersonality self
function row:SetHappinessDamage(value) end

---Gets element at 1-based index in 'HappinessDamage'.
---@param index integer
---@return number value
function row:GetHappinessDamageItem(index) end

---Table container for PetPersonality (Build 3.3.5.12340).
---@class dbc.Table.v335.PetPersonality : DbcTable
---@field [integer] dbc.row.v335.PetPersonality
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.PetPersonality
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.PetPersonality|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.PetPersonality
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.PetPersonality>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.PetPersonality[]
function tbl:GetByRelation(foreign_id) end

return {}
