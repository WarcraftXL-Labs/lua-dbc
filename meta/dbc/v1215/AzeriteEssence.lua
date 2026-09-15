---@meta
-- Generated LuaLS annotations for AzeriteEssence (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of AzeriteEssence in build 12.1.5.69594.
---@class dbc.row.v1215.AzeriteEssence : RowProxy
---@field ID integer
---@field Name_lang string
---@field Description_lang string
---@field SpecSetID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.AzeriteEssence self
function row:SetID(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.AzeriteEssence self
function row:SetName_lang(value) end

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v1215.AzeriteEssence self
function row:SetDescription_lang(value) end

---Gets the value of field 'SpecSetID'.
---@return integer value
function row:GetSpecSetID() end

---Sets the value of field 'SpecSetID'.
---@param value integer
---@return dbc.row.v1215.AzeriteEssence self
function row:SetSpecSetID(value) end

---Navigates foreign relationship to 'SpecSetMember' via 'SpecSetID'.
---@return dbc.row.v1215.SpecSetMember|nil
function row:GetSpecSet() end

---Creates a related 'SpecSetMember' row and automatically links 'SpecSetID'.
---@param data? table
---@return dbc.row.v1215.SpecSetMember
function row:CreateRelated(data) end

---Table container for AzeriteEssence (Build 12.1.5.69594).
---@class dbc.Table.v1215.AzeriteEssence : DbcTable
---@field [integer] dbc.row.v1215.AzeriteEssence
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.AzeriteEssence
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.AzeriteEssence|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.AzeriteEssence
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.AzeriteEssence>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.AzeriteEssence[]
function tbl:GetByRelation(foreign_id) end

return {}
