---@meta
-- Generated LuaLS annotations for PetitionType (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of PetitionType in build 3.3.5.12340.
---@class dbc.row.v335.PetitionType : RowProxy
---@field ID integer
---@field Name string
---@field Type integer 1 - guild, 3 - arena team

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.PetitionType self
function row:SetID(value) end

---Gets the value of field 'Name'.
---@return string value
function row:GetName() end

---Sets the value of field 'Name'.
---@param value string
---@return dbc.row.v335.PetitionType self
function row:SetName(value) end

---Gets the value of field 'Type'.
---@return integer value
function row:GetType() end

---Sets the value of field 'Type'.
---@param value integer
---@return dbc.row.v335.PetitionType self
function row:SetType(value) end

---Table container for PetitionType (Build 3.3.5.12340).
---@class dbc.Table.v335.PetitionType : DbcTable
---@field [integer] dbc.row.v335.PetitionType
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.PetitionType
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.PetitionType|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.PetitionType
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.PetitionType>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.PetitionType[]
function tbl:GetByRelation(foreign_id) end

return {}
