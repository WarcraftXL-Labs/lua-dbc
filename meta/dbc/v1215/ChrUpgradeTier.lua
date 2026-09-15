---@meta
-- Generated LuaLS annotations for ChrUpgradeTier (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ChrUpgradeTier in build 12.1.5.69594.
---@class dbc.row.v1215.ChrUpgradeTier : RowProxy
---@field DisplayName_lang string
---@field ID integer
---@field OrderIndex integer
---@field NumTalents integer

local row = {}

---Gets the value of field 'DisplayName_lang'.
---@return string value
function row:GetDisplayName_lang() end

---Sets the value of field 'DisplayName_lang'.
---@param value string
---@return dbc.row.v1215.ChrUpgradeTier self
function row:SetDisplayName_lang(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ChrUpgradeTier self
function row:SetID(value) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.ChrUpgradeTier self
function row:SetOrderIndex(value) end

---Gets the value of field 'NumTalents'.
---@return integer value
function row:GetNumTalents() end

---Sets the value of field 'NumTalents'.
---@param value integer
---@return dbc.row.v1215.ChrUpgradeTier self
function row:SetNumTalents(value) end

---Table container for ChrUpgradeTier (Build 12.1.5.69594).
---@class dbc.Table.v1215.ChrUpgradeTier : DbcTable
---@field [integer] dbc.row.v1215.ChrUpgradeTier
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ChrUpgradeTier
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ChrUpgradeTier|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ChrUpgradeTier
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ChrUpgradeTier>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ChrUpgradeTier[]
function tbl:GetByRelation(foreign_id) end

return {}
