---@meta
-- Generated LuaLS annotations for ChrClassTitle (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ChrClassTitle in build 12.1.5.69594.
---@class dbc.row.v1215.ChrClassTitle : RowProxy
---@field ID integer
---@field Name_male_lang string
---@field Name_female_lang string
---@field ChrClassID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ChrClassTitle self
function row:SetID(value) end

---Gets the value of field 'Name_male_lang'.
---@return string value
function row:GetName_male_lang() end

---Sets the value of field 'Name_male_lang'.
---@param value string
---@return dbc.row.v1215.ChrClassTitle self
function row:SetName_male_lang(value) end

---Gets the value of field 'Name_female_lang'.
---@return string value
function row:GetName_female_lang() end

---Sets the value of field 'Name_female_lang'.
---@param value string
---@return dbc.row.v1215.ChrClassTitle self
function row:SetName_female_lang(value) end

---Gets the value of field 'ChrClassID'.
---@return integer value
function row:GetChrClassID() end

---Sets the value of field 'ChrClassID'.
---@param value integer
---@return dbc.row.v1215.ChrClassTitle self
function row:SetChrClassID(value) end

---Navigates foreign relationship to 'ChrClasses' via 'ChrClassID'.
---@return dbc.row.v1215.ChrClasses|nil
function row:GetChrClass() end

---Creates a related 'ChrClasses' row and automatically links 'ChrClassID'.
---@param data? table
---@return dbc.row.v1215.ChrClasses
function row:CreateRelated(data) end

---Table container for ChrClassTitle (Build 12.1.5.69594).
---@class dbc.Table.v1215.ChrClassTitle : DbcTable
---@field [integer] dbc.row.v1215.ChrClassTitle
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ChrClassTitle
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ChrClassTitle|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ChrClassTitle
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ChrClassTitle>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ChrClassTitle[]
function tbl:GetByRelation(foreign_id) end

return {}
