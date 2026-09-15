---@meta
-- Generated LuaLS annotations for ArtifactCategory (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ArtifactCategory in build 12.1.5.69594.
---@class dbc.row.v1215.ArtifactCategory : RowProxy
---@field ID integer
---@field XpMultCurrencyID integer
---@field XpMultCurveID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ArtifactCategory self
function row:SetID(value) end

---Gets the value of field 'XpMultCurrencyID'.
---@return integer value
function row:GetXpMultCurrencyID() end

---Sets the value of field 'XpMultCurrencyID'.
---@param value integer
---@return dbc.row.v1215.ArtifactCategory self
function row:SetXpMultCurrencyID(value) end

---Navigates foreign relationship to 'CurrencyTypes' via 'XpMultCurrencyID'.
---@return dbc.row.v1215.CurrencyTypes|nil
function row:GetXpMultCurrency() end

---Creates a related 'CurrencyTypes' row and automatically links 'XpMultCurrencyID'.
---@param data? table
---@return dbc.row.v1215.CurrencyTypes
function row:CreateRelated(data) end

---Gets the value of field 'XpMultCurveID'.
---@return integer value
function row:GetXpMultCurveID() end

---Sets the value of field 'XpMultCurveID'.
---@param value integer
---@return dbc.row.v1215.ArtifactCategory self
function row:SetXpMultCurveID(value) end

---Navigates foreign relationship to 'Curve' via 'XpMultCurveID'.
---@return dbc.row.v1215.Curve|nil
function row:GetXpMultCurve() end

---Creates a related 'Curve' row and automatically links 'XpMultCurveID'.
---@param data? table
---@return dbc.row.v1215.Curve
function row:CreateRelated(data) end

---Table container for ArtifactCategory (Build 12.1.5.69594).
---@class dbc.Table.v1215.ArtifactCategory : DbcTable
---@field [integer] dbc.row.v1215.ArtifactCategory
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ArtifactCategory
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ArtifactCategory|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ArtifactCategory
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ArtifactCategory>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ArtifactCategory[]
function tbl:GetByRelation(foreign_id) end

return {}
