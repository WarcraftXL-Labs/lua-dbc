---@meta
-- Generated LuaLS annotations for GarrAutoSpell (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GarrAutoSpell in build 12.1.5.69594.
---@class dbc.row.v1215.GarrAutoSpell : RowProxy
---@field ID integer
---@field Name_lang string
---@field Description_lang string
---@field Cooldown integer
---@field Duration integer
---@field Flags integer &1: ???
---@field SchoolMask integer 1: Physical, 2: Holy, 4: Fire, 8: Nature, 16: Frost, 32: Shadow, 64: Arcane
---@field IconFileDataID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GarrAutoSpell self
function row:SetID(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.GarrAutoSpell self
function row:SetName_lang(value) end

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v1215.GarrAutoSpell self
function row:SetDescription_lang(value) end

---Gets the value of field 'Cooldown'.
---@return integer value
function row:GetCooldown() end

---Sets the value of field 'Cooldown'.
---@param value integer
---@return dbc.row.v1215.GarrAutoSpell self
function row:SetCooldown(value) end

---Gets the value of field 'Duration'.
---@return integer value
function row:GetDuration() end

---Sets the value of field 'Duration'.
---@param value integer
---@return dbc.row.v1215.GarrAutoSpell self
function row:SetDuration(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.GarrAutoSpell self
function row:SetFlags(value) end

---Gets the value of field 'SchoolMask'.
---@return integer value
function row:GetSchoolMask() end

---Sets the value of field 'SchoolMask'.
---@param value integer
---@return dbc.row.v1215.GarrAutoSpell self
function row:SetSchoolMask(value) end

---Gets the value of field 'IconFileDataID'.
---@return integer value
function row:GetIconFileDataID() end

---Sets the value of field 'IconFileDataID'.
---@param value integer
---@return dbc.row.v1215.GarrAutoSpell self
function row:SetIconFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'IconFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetIconFileData() end

---Creates a related 'FileData' row and automatically links 'IconFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Table container for GarrAutoSpell (Build 12.1.5.69594).
---@class dbc.Table.v1215.GarrAutoSpell : DbcTable
---@field [integer] dbc.row.v1215.GarrAutoSpell
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GarrAutoSpell
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GarrAutoSpell|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GarrAutoSpell
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GarrAutoSpell>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GarrAutoSpell[]
function tbl:GetByRelation(foreign_id) end

return {}
