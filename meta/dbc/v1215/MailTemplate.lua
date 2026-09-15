---@meta
-- Generated LuaLS annotations for MailTemplate (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of MailTemplate in build 12.1.5.69594.
---@class dbc.row.v1215.MailTemplate : RowProxy
---@field ID integer
---@field Body_lang string

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.MailTemplate self
function row:SetID(value) end

---Gets the value of field 'Body_lang'.
---@return string value
function row:GetBody_lang() end

---Sets the value of field 'Body_lang'.
---@param value string
---@return dbc.row.v1215.MailTemplate self
function row:SetBody_lang(value) end

---Table container for MailTemplate (Build 12.1.5.69594).
---@class dbc.Table.v1215.MailTemplate : DbcTable
---@field [integer] dbc.row.v1215.MailTemplate
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.MailTemplate
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.MailTemplate|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.MailTemplate
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.MailTemplate>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.MailTemplate[]
function tbl:GetByRelation(foreign_id) end

return {}
