---@meta
-- Generated LuaLS annotations for CharacterLoadout (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CharacterLoadout in build 12.1.5.69594.
---@class dbc.row.v1215.CharacterLoadout : RowProxy
---@field ID integer
---@field ChrClassID integer
---@field Purpose integer
---@field ModID integer
---@field RaceMasks integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CharacterLoadout self
function row:SetID(value) end

---Gets the value of field 'ChrClassID'.
---@return integer value
function row:GetChrClassID() end

---Sets the value of field 'ChrClassID'.
---@param value integer
---@return dbc.row.v1215.CharacterLoadout self
function row:SetChrClassID(value) end

---Navigates foreign relationship to 'ChrClasses' via 'ChrClassID'.
---@return dbc.row.v1215.ChrClasses|nil
function row:GetChrClass() end

---Creates a related 'ChrClasses' row and automatically links 'ChrClassID'.
---@param data? table
---@return dbc.row.v1215.ChrClasses
function row:CreateRelated(data) end

---Gets the value of field 'Purpose'.
---@return integer value
function row:GetPurpose() end

---Sets the value of field 'Purpose'.
---@param value integer
---@return dbc.row.v1215.CharacterLoadout self
function row:SetPurpose(value) end

---Gets the value of field 'ModID'.
---@return integer value
function row:GetModID() end

---Sets the value of field 'ModID'.
---@param value integer
---@return dbc.row.v1215.CharacterLoadout self
function row:SetModID(value) end

---Navigates foreign relationship to 'Mod' via 'ModID'.
---@return dbc.row.v1215.Mod|nil
function row:GetMod() end

---Creates a related 'Mod' row and automatically links 'ModID'.
---@param data? table
---@return dbc.row.v1215.Mod
function row:CreateRelated(data) end

---Gets the value of field 'RaceMasks'.
---@return integer[] value
function row:GetRaceMasks() end

---Sets the value of field 'RaceMasks'.
---@param value integer[]
---@return dbc.row.v1215.CharacterLoadout self
function row:SetRaceMasks(value) end

---Gets element at 1-based index in 'RaceMasks'.
---@param index integer
---@return integer value
function row:GetRaceMasksItem(index) end

---Table container for CharacterLoadout (Build 12.1.5.69594).
---@class dbc.Table.v1215.CharacterLoadout : DbcTable
---@field [integer] dbc.row.v1215.CharacterLoadout
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CharacterLoadout
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CharacterLoadout|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CharacterLoadout
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CharacterLoadout>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CharacterLoadout[]
function tbl:GetByRelation(foreign_id) end

return {}
