---@meta
-- Generated LuaLS annotations for VoiceOverPriority (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of VoiceOverPriority in build 12.1.5.69594.
---@class dbc.row.v1215.VoiceOverPriority : RowProxy
---@field ID integer
---@field Description string
---@field Priority integer
---@field Field_1_14_1_40487_002 integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.VoiceOverPriority self
function row:SetID(value) end

---Gets the value of field 'Description'.
---@return string value
function row:GetDescription() end

---Sets the value of field 'Description'.
---@param value string
---@return dbc.row.v1215.VoiceOverPriority self
function row:SetDescription(value) end

---Gets the value of field 'Priority'.
---@return integer value
function row:GetPriority() end

---Sets the value of field 'Priority'.
---@param value integer
---@return dbc.row.v1215.VoiceOverPriority self
function row:SetPriority(value) end

---Gets the value of field 'Field_1_14_1_40487_002'.
---@return integer value
function row:GetField_1_14_1_40487_002() end

---Sets the value of field 'Field_1_14_1_40487_002'.
---@param value integer
---@return dbc.row.v1215.VoiceOverPriority self
function row:SetField_1_14_1_40487_002(value) end

---Table container for VoiceOverPriority (Build 12.1.5.69594).
---@class dbc.Table.v1215.VoiceOverPriority : DbcTable
---@field [integer] dbc.row.v1215.VoiceOverPriority
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.VoiceOverPriority
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.VoiceOverPriority|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.VoiceOverPriority
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.VoiceOverPriority>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.VoiceOverPriority[]
function tbl:GetByRelation(foreign_id) end

return {}
