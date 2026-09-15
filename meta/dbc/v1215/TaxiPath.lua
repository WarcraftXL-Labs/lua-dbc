---@meta
-- Generated LuaLS annotations for TaxiPath (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of TaxiPath in build 12.1.5.69594.
---@class dbc.row.v1215.TaxiPath : RowProxy
---@field ID integer
---@field FromTaxiNode integer
---@field ToTaxiNode integer
---@field Cost integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.TaxiPath self
function row:SetID(value) end

---Gets the value of field 'FromTaxiNode'.
---@return integer value
function row:GetFromTaxiNode() end

---Sets the value of field 'FromTaxiNode'.
---@param value integer
---@return dbc.row.v1215.TaxiPath self
function row:SetFromTaxiNode(value) end

---Navigates foreign relationship to 'TaxiNodes' via 'FromTaxiNode'.
---@return dbc.row.v1215.TaxiNodes|nil
function row:GetFromTaxiNode() end

---Creates a related 'TaxiNodes' row and automatically links 'FromTaxiNode'.
---@param data? table
---@return dbc.row.v1215.TaxiNodes
function row:CreateRelated(data) end

---Gets the value of field 'ToTaxiNode'.
---@return integer value
function row:GetToTaxiNode() end

---Sets the value of field 'ToTaxiNode'.
---@param value integer
---@return dbc.row.v1215.TaxiPath self
function row:SetToTaxiNode(value) end

---Navigates foreign relationship to 'TaxiNodes' via 'ToTaxiNode'.
---@return dbc.row.v1215.TaxiNodes|nil
function row:GetToTaxiNode() end

---Creates a related 'TaxiNodes' row and automatically links 'ToTaxiNode'.
---@param data? table
---@return dbc.row.v1215.TaxiNodes
function row:CreateRelated(data) end

---Gets the value of field 'Cost'.
---@return integer value
function row:GetCost() end

---Sets the value of field 'Cost'.
---@param value integer
---@return dbc.row.v1215.TaxiPath self
function row:SetCost(value) end

---Table container for TaxiPath (Build 12.1.5.69594).
---@class dbc.Table.v1215.TaxiPath : DbcTable
---@field [integer] dbc.row.v1215.TaxiPath
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.TaxiPath
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.TaxiPath|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.TaxiPath
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.TaxiPath>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.TaxiPath[]
function tbl:GetByRelation(foreign_id) end

return {}
