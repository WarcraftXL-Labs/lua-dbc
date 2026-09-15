---@meta
-- Generated LuaLS annotations for ProfessionXRating (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ProfessionXRating in build 12.1.5.69594.
---@class dbc.row.v1215.ProfessionXRating : RowProxy
---@field ID integer
---@field ProfessionID integer
---@field ProfessionRatingID integer
---@field Field_10_0_2_46259_002 number

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ProfessionXRating self
function row:SetID(value) end

---Gets the value of field 'ProfessionID'.
---@return integer value
function row:GetProfessionID() end

---Sets the value of field 'ProfessionID'.
---@param value integer
---@return dbc.row.v1215.ProfessionXRating self
function row:SetProfessionID(value) end

---Navigates foreign relationship to 'Profession' via 'ProfessionID'.
---@return dbc.row.v1215.Profession|nil
function row:GetProfession() end

---Creates a related 'Profession' row and automatically links 'ProfessionID'.
---@param data? table
---@return dbc.row.v1215.Profession
function row:CreateRelated(data) end

---Gets the value of field 'ProfessionRatingID'.
---@return integer value
function row:GetProfessionRatingID() end

---Sets the value of field 'ProfessionRatingID'.
---@param value integer
---@return dbc.row.v1215.ProfessionXRating self
function row:SetProfessionRatingID(value) end

---Navigates foreign relationship to 'ProfessionRating' via 'ProfessionRatingID'.
---@return dbc.row.v1215.ProfessionRating|nil
function row:GetProfessionRating() end

---Creates a related 'ProfessionRating' row and automatically links 'ProfessionRatingID'.
---@param data? table
---@return dbc.row.v1215.ProfessionRating
function row:CreateRelated(data) end

---Gets the value of field 'Field_10_0_2_46259_002'.
---@return number value
function row:GetField_10_0_2_46259_002() end

---Sets the value of field 'Field_10_0_2_46259_002'.
---@param value number
---@return dbc.row.v1215.ProfessionXRating self
function row:SetField_10_0_2_46259_002(value) end

---Table container for ProfessionXRating (Build 12.1.5.69594).
---@class dbc.Table.v1215.ProfessionXRating : DbcTable
---@field [integer] dbc.row.v1215.ProfessionXRating
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ProfessionXRating
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ProfessionXRating|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ProfessionXRating
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ProfessionXRating>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ProfessionXRating[]
function tbl:GetByRelation(foreign_id) end

return {}
