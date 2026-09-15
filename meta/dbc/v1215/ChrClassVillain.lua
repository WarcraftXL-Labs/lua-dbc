---@meta
-- Generated LuaLS annotations for ChrClassVillain (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ChrClassVillain in build 12.1.5.69594.
---@class dbc.row.v1215.ChrClassVillain : RowProxy
---@field ID integer
---@field Name_lang string
---@field ChrClassID integer
---@field Gender integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ChrClassVillain self
function row:SetID(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.ChrClassVillain self
function row:SetName_lang(value) end

---Gets the value of field 'ChrClassID'.
---@return integer value
function row:GetChrClassID() end

---Sets the value of field 'ChrClassID'.
---@param value integer
---@return dbc.row.v1215.ChrClassVillain self
function row:SetChrClassID(value) end

---Navigates foreign relationship to 'ChrClasses' via 'ChrClassID'.
---@return dbc.row.v1215.ChrClasses|nil
function row:GetChrClass() end

---Creates a related 'ChrClasses' row and automatically links 'ChrClassID'.
---@param data? table
---@return dbc.row.v1215.ChrClasses
function row:CreateRelated(data) end

---Gets the value of field 'Gender'.
---@return integer value
function row:GetGender() end

---Sets the value of field 'Gender'.
---@param value integer
---@return dbc.row.v1215.ChrClassVillain self
function row:SetGender(value) end

---Table container for ChrClassVillain (Build 12.1.5.69594).
---@class dbc.Table.v1215.ChrClassVillain : DbcTable
---@field [integer] dbc.row.v1215.ChrClassVillain
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ChrClassVillain
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ChrClassVillain|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ChrClassVillain
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ChrClassVillain>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ChrClassVillain[]
function tbl:GetByRelation(foreign_id) end

return {}
