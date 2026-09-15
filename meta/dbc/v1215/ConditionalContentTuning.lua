---@meta
-- Generated LuaLS annotations for ConditionalContentTuning (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ConditionalContentTuning in build 12.1.5.69594.
---@class dbc.row.v1215.ConditionalContentTuning : RowProxy
---@field ID integer
---@field OrderIndex integer
---@field RedirectContentTuningID integer
---@field RedirectFlag integer Given a ParentContentTuningID client checks for a given condition flag, first matching record determines RedirectContentTuningID, or fall back to ParentContentTuningID if none exists.
---@field RedirectEnum integer
---@field ParentContentTuningID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ConditionalContentTuning self
function row:SetID(value) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.ConditionalContentTuning self
function row:SetOrderIndex(value) end

---Gets the value of field 'RedirectContentTuningID'.
---@return integer value
function row:GetRedirectContentTuningID() end

---Sets the value of field 'RedirectContentTuningID'.
---@param value integer
---@return dbc.row.v1215.ConditionalContentTuning self
function row:SetRedirectContentTuningID(value) end

---Navigates foreign relationship to 'ContentTuning' via 'RedirectContentTuningID'.
---@return dbc.row.v1215.ContentTuning|nil
function row:GetRedirectContentTuning() end

---Creates a related 'ContentTuning' row and automatically links 'RedirectContentTuningID'.
---@param data? table
---@return dbc.row.v1215.ContentTuning
function row:CreateRelated(data) end

---Gets the value of field 'RedirectFlag'.
---@return integer value
function row:GetRedirectFlag() end

---Sets the value of field 'RedirectFlag'.
---@param value integer
---@return dbc.row.v1215.ConditionalContentTuning self
function row:SetRedirectFlag(value) end

---Gets the value of field 'RedirectEnum'.
---@return integer value
function row:GetRedirectEnum() end

---Sets the value of field 'RedirectEnum'.
---@param value integer
---@return dbc.row.v1215.ConditionalContentTuning self
function row:SetRedirectEnum(value) end

---Gets the value of field 'ParentContentTuningID'.
---@return integer value
function row:GetParentContentTuningID() end

---Sets the value of field 'ParentContentTuningID'.
---@param value integer
---@return dbc.row.v1215.ConditionalContentTuning self
function row:SetParentContentTuningID(value) end

---Navigates foreign relationship to 'ContentTuning' via 'ParentContentTuningID'.
---@return dbc.row.v1215.ContentTuning|nil
function row:GetParentContentTuning() end

---Creates a related 'ContentTuning' row and automatically links 'ParentContentTuningID'.
---@param data? table
---@return dbc.row.v1215.ContentTuning
function row:CreateRelated(data) end

---Table container for ConditionalContentTuning (Build 12.1.5.69594).
---@class dbc.Table.v1215.ConditionalContentTuning : DbcTable
---@field [integer] dbc.row.v1215.ConditionalContentTuning
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ConditionalContentTuning
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ConditionalContentTuning|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ConditionalContentTuning
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ConditionalContentTuning>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ConditionalContentTuning[]
function tbl:GetByRelation(foreign_id) end

return {}
