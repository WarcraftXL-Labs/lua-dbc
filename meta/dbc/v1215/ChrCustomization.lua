---@meta
-- Generated LuaLS annotations for ChrCustomization (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ChrCustomization in build 12.1.5.69594.
---@class dbc.row.v1215.ChrCustomization : RowProxy
---@field ID integer
---@field Name_lang string
---@field Sex integer
---@field BaseSection integer
---@field UiCustomizationType integer
---@field Flags integer
---@field ComponentSection integer[]
---@field RaceID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ChrCustomization self
function row:SetID(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.ChrCustomization self
function row:SetName_lang(value) end

---Gets the value of field 'Sex'.
---@return integer value
function row:GetSex() end

---Sets the value of field 'Sex'.
---@param value integer
---@return dbc.row.v1215.ChrCustomization self
function row:SetSex(value) end

---Gets the value of field 'BaseSection'.
---@return integer value
function row:GetBaseSection() end

---Sets the value of field 'BaseSection'.
---@param value integer
---@return dbc.row.v1215.ChrCustomization self
function row:SetBaseSection(value) end

---Gets the value of field 'UiCustomizationType'.
---@return integer value
function row:GetUiCustomizationType() end

---Sets the value of field 'UiCustomizationType'.
---@param value integer
---@return dbc.row.v1215.ChrCustomization self
function row:SetUiCustomizationType(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.ChrCustomization self
function row:SetFlags(value) end

---Gets the value of field 'ComponentSection'.
---@return integer[] value
function row:GetComponentSection() end

---Sets the value of field 'ComponentSection'.
---@param value integer[]
---@return dbc.row.v1215.ChrCustomization self
function row:SetComponentSection(value) end

---Gets element at 1-based index in 'ComponentSection'.
---@param index integer
---@return integer value
function row:GetComponentSectionItem(index) end

---Gets the value of field 'RaceID'.
---@return integer value
function row:GetRaceID() end

---Sets the value of field 'RaceID'.
---@param value integer
---@return dbc.row.v1215.ChrCustomization self
function row:SetRaceID(value) end

---Navigates foreign relationship to 'ChrRaces' via 'RaceID'.
---@return dbc.row.v1215.ChrRaces|nil
function row:GetRace() end

---Creates a related 'ChrRaces' row and automatically links 'RaceID'.
---@param data? table
---@return dbc.row.v1215.ChrRaces
function row:CreateRelated(data) end

---Table container for ChrCustomization (Build 12.1.5.69594).
---@class dbc.Table.v1215.ChrCustomization : DbcTable
---@field [integer] dbc.row.v1215.ChrCustomization
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ChrCustomization
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ChrCustomization|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ChrCustomization
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ChrCustomization>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ChrCustomization[]
function tbl:GetByRelation(foreign_id) end

return {}
