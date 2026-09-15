---@meta
-- Generated LuaLS annotations for SpellDiminish (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SpellDiminish in build 12.1.5.69594.
---@class dbc.row.v1215.SpellDiminish : RowProxy
---@field ID integer
---@field Name_lang string
---@field Duration integer
---@field Multiplier number
---@field Field_12_0_0_63854_003 integer
---@field ImmunityStacks integer Players and some NPCs become immune after this many applications
---@field MaxStacks integer If nonzero, then Multiplier can only apply this many times
---@field IconFileDataID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SpellDiminish self
function row:SetID(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.SpellDiminish self
function row:SetName_lang(value) end

---Gets the value of field 'Duration'.
---@return integer value
function row:GetDuration() end

---Sets the value of field 'Duration'.
---@param value integer
---@return dbc.row.v1215.SpellDiminish self
function row:SetDuration(value) end

---Gets the value of field 'Multiplier'.
---@return number value
function row:GetMultiplier() end

---Sets the value of field 'Multiplier'.
---@param value number
---@return dbc.row.v1215.SpellDiminish self
function row:SetMultiplier(value) end

---Gets the value of field 'Field_12_0_0_63854_003'.
---@return integer value
function row:GetField_12_0_0_63854_003() end

---Sets the value of field 'Field_12_0_0_63854_003'.
---@param value integer
---@return dbc.row.v1215.SpellDiminish self
function row:SetField_12_0_0_63854_003(value) end

---Gets the value of field 'ImmunityStacks'.
---@return integer value
function row:GetImmunityStacks() end

---Sets the value of field 'ImmunityStacks'.
---@param value integer
---@return dbc.row.v1215.SpellDiminish self
function row:SetImmunityStacks(value) end

---Gets the value of field 'MaxStacks'.
---@return integer value
function row:GetMaxStacks() end

---Sets the value of field 'MaxStacks'.
---@param value integer
---@return dbc.row.v1215.SpellDiminish self
function row:SetMaxStacks(value) end

---Gets the value of field 'IconFileDataID'.
---@return integer value
function row:GetIconFileDataID() end

---Sets the value of field 'IconFileDataID'.
---@param value integer
---@return dbc.row.v1215.SpellDiminish self
function row:SetIconFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'IconFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetIconFileData() end

---Creates a related 'FileData' row and automatically links 'IconFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Table container for SpellDiminish (Build 12.1.5.69594).
---@class dbc.Table.v1215.SpellDiminish : DbcTable
---@field [integer] dbc.row.v1215.SpellDiminish
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SpellDiminish
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SpellDiminish|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SpellDiminish
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SpellDiminish>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SpellDiminish[]
function tbl:GetByRelation(foreign_id) end

return {}
