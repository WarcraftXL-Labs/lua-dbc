---@meta
-- Generated LuaLS annotations for Resistances (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of Resistances in build 12.1.5.69594.
---@class dbc.row.v1215.Resistances : RowProxy
---@field ID integer
---@field Name_lang string
---@field Flags integer
---@field FizzleSoundID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.Resistances self
function row:SetID(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.Resistances self
function row:SetName_lang(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.Resistances self
function row:SetFlags(value) end

---Gets the value of field 'FizzleSoundID'.
---@return integer value
function row:GetFizzleSoundID() end

---Sets the value of field 'FizzleSoundID'.
---@param value integer
---@return dbc.row.v1215.Resistances self
function row:SetFizzleSoundID(value) end

---Navigates foreign relationship to 'SoundKit' via 'FizzleSoundID'.
---@return dbc.row.v1215.SoundKit|nil
function row:GetFizzleSound() end

---Creates a related 'SoundKit' row and automatically links 'FizzleSoundID'.
---@param data? table
---@return dbc.row.v1215.SoundKit
function row:CreateRelated(data) end

---Table container for Resistances (Build 12.1.5.69594).
---@class dbc.Table.v1215.Resistances : DbcTable
---@field [integer] dbc.row.v1215.Resistances
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.Resistances
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.Resistances|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.Resistances
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.Resistances>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.Resistances[]
function tbl:GetByRelation(foreign_id) end

return {}
