---@meta
-- Generated LuaLS annotations for ChrCustomizationConversion (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ChrCustomizationConversion in build 12.1.5.69594.
---@class dbc.row.v1215.ChrCustomizationConversion : RowProxy
---@field ID integer
---@field ChrRacesID integer
---@field Sex integer
---@field OptionID integer 1 = Skin Color, 2 = Face, 3 = Hair Style, 4 = Hair Color, 5 = Features, 6 = CustomDisplayOption1, 7 = CustomDisplayOption2, 8 = CustomDisplayOption3
---@field Data integer
---@field ChrCustomizationChoiceID integer
---@field DependentOptionID integer
---@field DependentData integer
---@field Field_3_4_0_45166_007 integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationConversion self
function row:SetID(value) end

---Gets the value of field 'ChrRacesID'.
---@return integer value
function row:GetChrRacesID() end

---Sets the value of field 'ChrRacesID'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationConversion self
function row:SetChrRacesID(value) end

---Navigates foreign relationship to 'ChrRaces' via 'ChrRacesID'.
---@return dbc.row.v1215.ChrRaces|nil
function row:GetChrRaces() end

---Creates a related 'ChrRaces' row and automatically links 'ChrRacesID'.
---@param data? table
---@return dbc.row.v1215.ChrRaces
function row:CreateRelated(data) end

---Gets the value of field 'Sex'.
---@return integer value
function row:GetSex() end

---Sets the value of field 'Sex'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationConversion self
function row:SetSex(value) end

---Gets the value of field 'OptionID'.
---@return integer value
function row:GetOptionID() end

---Sets the value of field 'OptionID'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationConversion self
function row:SetOptionID(value) end

---Navigates foreign relationship to 'Option' via 'OptionID'.
---@return dbc.row.v1215.Option|nil
function row:GetOption() end

---Creates a related 'Option' row and automatically links 'OptionID'.
---@param data? table
---@return dbc.row.v1215.Option
function row:CreateRelated(data) end

---Gets the value of field 'Data'.
---@return integer value
function row:GetData() end

---Sets the value of field 'Data'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationConversion self
function row:SetData(value) end

---Gets the value of field 'ChrCustomizationChoiceID'.
---@return integer value
function row:GetChrCustomizationChoiceID() end

---Sets the value of field 'ChrCustomizationChoiceID'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationConversion self
function row:SetChrCustomizationChoiceID(value) end

---Navigates foreign relationship to 'ChrCustomizationChoice' via 'ChrCustomizationChoiceID'.
---@return dbc.row.v1215.ChrCustomizationChoice|nil
function row:GetChrCustomizationChoice() end

---Creates a related 'ChrCustomizationChoice' row and automatically links 'ChrCustomizationChoiceID'.
---@param data? table
---@return dbc.row.v1215.ChrCustomizationChoice
function row:CreateRelated(data) end

---Gets the value of field 'DependentOptionID'.
---@return integer value
function row:GetDependentOptionID() end

---Sets the value of field 'DependentOptionID'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationConversion self
function row:SetDependentOptionID(value) end

---Navigates foreign relationship to 'DependentOption' via 'DependentOptionID'.
---@return dbc.row.v1215.DependentOption|nil
function row:GetDependentOption() end

---Creates a related 'DependentOption' row and automatically links 'DependentOptionID'.
---@param data? table
---@return dbc.row.v1215.DependentOption
function row:CreateRelated(data) end

---Gets the value of field 'DependentData'.
---@return integer value
function row:GetDependentData() end

---Sets the value of field 'DependentData'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationConversion self
function row:SetDependentData(value) end

---Gets the value of field 'Field_3_4_0_45166_007'.
---@return integer value
function row:GetField_3_4_0_45166_007() end

---Sets the value of field 'Field_3_4_0_45166_007'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationConversion self
function row:SetField_3_4_0_45166_007(value) end

---Table container for ChrCustomizationConversion (Build 12.1.5.69594).
---@class dbc.Table.v1215.ChrCustomizationConversion : DbcTable
---@field [integer] dbc.row.v1215.ChrCustomizationConversion
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ChrCustomizationConversion
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ChrCustomizationConversion|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ChrCustomizationConversion
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ChrCustomizationConversion>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ChrCustomizationConversion[]
function tbl:GetByRelation(foreign_id) end

return {}
