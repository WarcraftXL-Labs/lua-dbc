---@meta
-- Generated LuaLS annotations for PvpRating (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of PvpRating in build 12.1.5.69594.
---@class dbc.row.v1215.PvpRating : RowProxy
---@field ID integer
---@field Field_10_0_0_45454_000 string
---@field BracketSlot integer
---@field SpecializationID integer
---@field Field_10_0_0_45454_003 integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.PvpRating self
function row:SetID(value) end

---Gets the value of field 'Field_10_0_0_45454_000'.
---@return string value
function row:GetField_10_0_0_45454_000() end

---Sets the value of field 'Field_10_0_0_45454_000'.
---@param value string
---@return dbc.row.v1215.PvpRating self
function row:SetField_10_0_0_45454_000(value) end

---Gets the value of field 'BracketSlot'.
---@return integer value
function row:GetBracketSlot() end

---Sets the value of field 'BracketSlot'.
---@param value integer
---@return dbc.row.v1215.PvpRating self
function row:SetBracketSlot(value) end

---Gets the value of field 'SpecializationID'.
---@return integer value
function row:GetSpecializationID() end

---Sets the value of field 'SpecializationID'.
---@param value integer
---@return dbc.row.v1215.PvpRating self
function row:SetSpecializationID(value) end

---Navigates foreign relationship to 'ChrSpecialization' via 'SpecializationID'.
---@return dbc.row.v1215.ChrSpecialization|nil
function row:GetSpecialization() end

---Creates a related 'ChrSpecialization' row and automatically links 'SpecializationID'.
---@param data? table
---@return dbc.row.v1215.ChrSpecialization
function row:CreateRelated(data) end

---Gets the value of field 'Field_10_0_0_45454_003'.
---@return integer value
function row:GetField_10_0_0_45454_003() end

---Sets the value of field 'Field_10_0_0_45454_003'.
---@param value integer
---@return dbc.row.v1215.PvpRating self
function row:SetField_10_0_0_45454_003(value) end

---Table container for PvpRating (Build 12.1.5.69594).
---@class dbc.Table.v1215.PvpRating : DbcTable
---@field [integer] dbc.row.v1215.PvpRating
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.PvpRating
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.PvpRating|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.PvpRating
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.PvpRating>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.PvpRating[]
function tbl:GetByRelation(foreign_id) end

return {}
