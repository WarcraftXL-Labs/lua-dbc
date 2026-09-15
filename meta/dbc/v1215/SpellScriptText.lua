---@meta
-- Generated LuaLS annotations for SpellScriptText (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SpellScriptText in build 12.1.5.69594.
---@class dbc.row.v1215.SpellScriptText : RowProxy
---@field Script string
---@field ID integer
---@field PrevText integer apparently a reference to SpellScriptText::ID as well. Probably prev to find begin. == ID if begin.
---@field NextText integer Concatenate scripts up to 25600 characters.
---@field SpellScriptID integer

local row = {}

---Gets the value of field 'Script'.
---@return string value
function row:GetScript() end

---Sets the value of field 'Script'.
---@param value string
---@return dbc.row.v1215.SpellScriptText self
function row:SetScript(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SpellScriptText self
function row:SetID(value) end

---Gets the value of field 'PrevText'.
---@return integer value
function row:GetPrevText() end

---Sets the value of field 'PrevText'.
---@param value integer
---@return dbc.row.v1215.SpellScriptText self
function row:SetPrevText(value) end

---Navigates foreign relationship to 'SpellScriptText' via 'PrevText'.
---@return dbc.row.v1215.SpellScriptText|nil
function row:GetPrevText() end

---Creates a related 'SpellScriptText' row and automatically links 'PrevText'.
---@param data? table
---@return dbc.row.v1215.SpellScriptText
function row:CreateRelated(data) end

---Gets the value of field 'NextText'.
---@return integer value
function row:GetNextText() end

---Sets the value of field 'NextText'.
---@param value integer
---@return dbc.row.v1215.SpellScriptText self
function row:SetNextText(value) end

---Navigates foreign relationship to 'SpellScriptText' via 'NextText'.
---@return dbc.row.v1215.SpellScriptText|nil
function row:GetNextText() end

---Creates a related 'SpellScriptText' row and automatically links 'NextText'.
---@param data? table
---@return dbc.row.v1215.SpellScriptText
function row:CreateRelated(data) end

---Gets the value of field 'SpellScriptID'.
---@return integer value
function row:GetSpellScriptID() end

---Sets the value of field 'SpellScriptID'.
---@param value integer
---@return dbc.row.v1215.SpellScriptText self
function row:SetSpellScriptID(value) end

---Navigates foreign relationship to 'SpellScript' via 'SpellScriptID'.
---@return dbc.row.v1215.SpellScript|nil
function row:GetSpellScript() end

---Creates a related 'SpellScript' row and automatically links 'SpellScriptID'.
---@param data? table
---@return dbc.row.v1215.SpellScript
function row:CreateRelated(data) end

---Table container for SpellScriptText (Build 12.1.5.69594).
---@class dbc.Table.v1215.SpellScriptText : DbcTable
---@field [integer] dbc.row.v1215.SpellScriptText
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SpellScriptText
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SpellScriptText|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SpellScriptText
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SpellScriptText>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SpellScriptText[]
function tbl:GetByRelation(foreign_id) end

return {}
