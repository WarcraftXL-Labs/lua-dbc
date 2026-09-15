---@meta
-- Generated LuaLS annotations for PVPScoreboardColumnHeader (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of PVPScoreboardColumnHeader in build 12.1.5.69594.
---@class dbc.row.v1215.PVPScoreboardColumnHeader : RowProxy
---@field ID integer
---@field Name_lang string
---@field Tooltip_lang string
---@field Field_10_1_0_48776_002_lang string
---@field Field_8_2_0_30430_003 integer 8.2.0.30430: all 0

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.PVPScoreboardColumnHeader self
function row:SetID(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.PVPScoreboardColumnHeader self
function row:SetName_lang(value) end

---Gets the value of field 'Tooltip_lang'.
---@return string value
function row:GetTooltip_lang() end

---Sets the value of field 'Tooltip_lang'.
---@param value string
---@return dbc.row.v1215.PVPScoreboardColumnHeader self
function row:SetTooltip_lang(value) end

---Gets the value of field 'Field_10_1_0_48776_002_lang'.
---@return string value
function row:GetField_10_1_0_48776_002_lang() end

---Sets the value of field 'Field_10_1_0_48776_002_lang'.
---@param value string
---@return dbc.row.v1215.PVPScoreboardColumnHeader self
function row:SetField_10_1_0_48776_002_lang(value) end

---Gets the value of field 'Field_8_2_0_30430_003'.
---@return integer value
function row:GetField_8_2_0_30430_003() end

---Sets the value of field 'Field_8_2_0_30430_003'.
---@param value integer
---@return dbc.row.v1215.PVPScoreboardColumnHeader self
function row:SetField_8_2_0_30430_003(value) end

---Table container for PVPScoreboardColumnHeader (Build 12.1.5.69594).
---@class dbc.Table.v1215.PVPScoreboardColumnHeader : DbcTable
---@field [integer] dbc.row.v1215.PVPScoreboardColumnHeader
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.PVPScoreboardColumnHeader
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.PVPScoreboardColumnHeader|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.PVPScoreboardColumnHeader
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.PVPScoreboardColumnHeader>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.PVPScoreboardColumnHeader[]
function tbl:GetByRelation(foreign_id) end

return {}
