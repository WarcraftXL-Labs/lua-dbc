---@meta
-- Generated LuaLS annotations for ProfessionTraitXLabel (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ProfessionTraitXLabel in build 12.1.5.69594.
---@class dbc.row.v1215.ProfessionTraitXLabel : RowProxy
---@field ID integer
---@field ProfessionTraitID integer
---@field LabelID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ProfessionTraitXLabel self
function row:SetID(value) end

---Gets the value of field 'ProfessionTraitID'.
---@return integer value
function row:GetProfessionTraitID() end

---Sets the value of field 'ProfessionTraitID'.
---@param value integer
---@return dbc.row.v1215.ProfessionTraitXLabel self
function row:SetProfessionTraitID(value) end

---Navigates foreign relationship to 'ProfessionTrait' via 'ProfessionTraitID'.
---@return dbc.row.v1215.ProfessionTrait|nil
function row:GetProfessionTrait() end

---Creates a related 'ProfessionTrait' row and automatically links 'ProfessionTraitID'.
---@param data? table
---@return dbc.row.v1215.ProfessionTrait
function row:CreateRelated(data) end

---Gets the value of field 'LabelID'.
---@return integer value
function row:GetLabelID() end

---Sets the value of field 'LabelID'.
---@param value integer
---@return dbc.row.v1215.ProfessionTraitXLabel self
function row:SetLabelID(value) end

---Navigates foreign relationship to 'Label' via 'LabelID'.
---@return dbc.row.v1215.Label|nil
function row:GetLabel() end

---Creates a related 'Label' row and automatically links 'LabelID'.
---@param data? table
---@return dbc.row.v1215.Label
function row:CreateRelated(data) end

---Table container for ProfessionTraitXLabel (Build 12.1.5.69594).
---@class dbc.Table.v1215.ProfessionTraitXLabel : DbcTable
---@field [integer] dbc.row.v1215.ProfessionTraitXLabel
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ProfessionTraitXLabel
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ProfessionTraitXLabel|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ProfessionTraitXLabel
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ProfessionTraitXLabel>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ProfessionTraitXLabel[]
function tbl:GetByRelation(foreign_id) end

return {}
