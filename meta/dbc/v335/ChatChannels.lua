---@meta
-- Generated LuaLS annotations for ChatChannels (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of ChatChannels in build 3.3.5.12340.
---@class dbc.row.v335.ChatChannels : RowProxy
---@field ID integer
---@field Flags integer
---@field FactionGroup integer
---@field Name_lang string
---@field Shortcut_lang string

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.ChatChannels self
function row:SetID(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v335.ChatChannels self
function row:SetFlags(value) end

---Gets the value of field 'FactionGroup'.
---@return integer value
function row:GetFactionGroup() end

---Sets the value of field 'FactionGroup'.
---@param value integer
---@return dbc.row.v335.ChatChannels self
function row:SetFactionGroup(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v335.ChatChannels self
function row:SetName_lang(value) end

---Gets the value of field 'Shortcut_lang'.
---@return string value
function row:GetShortcut_lang() end

---Sets the value of field 'Shortcut_lang'.
---@param value string
---@return dbc.row.v335.ChatChannels self
function row:SetShortcut_lang(value) end

---Table container for ChatChannels (Build 3.3.5.12340).
---@class dbc.Table.v335.ChatChannels : DbcTable
---@field [integer] dbc.row.v335.ChatChannels
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.ChatChannels
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.ChatChannels|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.ChatChannels
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.ChatChannels>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.ChatChannels[]
function tbl:GetByRelation(foreign_id) end

return {}
