---@meta
-- Generated LuaLS annotations for GarrTalentMapPOI (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GarrTalentMapPOI in build 12.1.5.69594.
---@class dbc.row.v1215.GarrTalentMapPOI : RowProxy
---@field ID integer
---@field Position number[]
---@field GarrTalentID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GarrTalentMapPOI self
function row:SetID(value) end

---Gets the value of field 'Position'.
---@return number[] value
function row:GetPosition() end

---Sets the value of field 'Position'.
---@param value number[]
---@return dbc.row.v1215.GarrTalentMapPOI self
function row:SetPosition(value) end

---Gets element at 1-based index in 'Position'.
---@param index integer
---@return number value
function row:GetPositionItem(index) end

---Gets the value of field 'GarrTalentID'.
---@return integer value
function row:GetGarrTalentID() end

---Sets the value of field 'GarrTalentID'.
---@param value integer
---@return dbc.row.v1215.GarrTalentMapPOI self
function row:SetGarrTalentID(value) end

---Navigates foreign relationship to 'GarrTalent' via 'GarrTalentID'.
---@return dbc.row.v1215.GarrTalent|nil
function row:GetGarrTalent() end

---Creates a related 'GarrTalent' row and automatically links 'GarrTalentID'.
---@param data? table
---@return dbc.row.v1215.GarrTalent
function row:CreateRelated(data) end

---Table container for GarrTalentMapPOI (Build 12.1.5.69594).
---@class dbc.Table.v1215.GarrTalentMapPOI : DbcTable
---@field [integer] dbc.row.v1215.GarrTalentMapPOI
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GarrTalentMapPOI
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GarrTalentMapPOI|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GarrTalentMapPOI
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GarrTalentMapPOI>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GarrTalentMapPOI[]
function tbl:GetByRelation(foreign_id) end

return {}
