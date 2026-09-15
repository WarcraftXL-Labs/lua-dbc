---@meta
-- Generated LuaLS annotations for GameTips (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GameTips in build 12.1.5.69594.
---@class dbc.row.v1215.GameTips : RowProxy
---@field ID integer
---@field Text_lang string
---@field SortIndex integer
---@field Min_level integer
---@field Max_level integer
---@field ContentTuningID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GameTips self
function row:SetID(value) end

---Gets the value of field 'Text_lang'.
---@return string value
function row:GetText_lang() end

---Sets the value of field 'Text_lang'.
---@param value string
---@return dbc.row.v1215.GameTips self
function row:SetText_lang(value) end

---Gets the value of field 'SortIndex'.
---@return integer value
function row:GetSortIndex() end

---Sets the value of field 'SortIndex'.
---@param value integer
---@return dbc.row.v1215.GameTips self
function row:SetSortIndex(value) end

---Gets the value of field 'Min_level'.
---@return integer value
function row:GetMin_level() end

---Sets the value of field 'Min_level'.
---@param value integer
---@return dbc.row.v1215.GameTips self
function row:SetMin_level(value) end

---Gets the value of field 'Max_level'.
---@return integer value
function row:GetMax_level() end

---Sets the value of field 'Max_level'.
---@param value integer
---@return dbc.row.v1215.GameTips self
function row:SetMax_level(value) end

---Gets the value of field 'ContentTuningID'.
---@return integer value
function row:GetContentTuningID() end

---Sets the value of field 'ContentTuningID'.
---@param value integer
---@return dbc.row.v1215.GameTips self
function row:SetContentTuningID(value) end

---Navigates foreign relationship to 'ContentTuning' via 'ContentTuningID'.
---@return dbc.row.v1215.ContentTuning|nil
function row:GetContentTuning() end

---Creates a related 'ContentTuning' row and automatically links 'ContentTuningID'.
---@param data? table
---@return dbc.row.v1215.ContentTuning
function row:CreateRelated(data) end

---Table container for GameTips (Build 12.1.5.69594).
---@class dbc.Table.v1215.GameTips : DbcTable
---@field [integer] dbc.row.v1215.GameTips
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GameTips
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GameTips|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GameTips
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GameTips>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GameTips[]
function tbl:GetByRelation(foreign_id) end

return {}
