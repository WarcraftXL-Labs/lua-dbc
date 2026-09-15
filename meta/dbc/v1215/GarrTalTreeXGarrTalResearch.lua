---@meta
-- Generated LuaLS annotations for GarrTalTreeXGarrTalResearch (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GarrTalTreeXGarrTalResearch in build 12.1.5.69594.
---@class dbc.row.v1215.GarrTalTreeXGarrTalResearch : RowProxy
---@field ID integer
---@field GarrTalentTreeID integer
---@field GarrTalentResearchID integer
---@field OrderIndex integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GarrTalTreeXGarrTalResearch self
function row:SetID(value) end

---Gets the value of field 'GarrTalentTreeID'.
---@return integer value
function row:GetGarrTalentTreeID() end

---Sets the value of field 'GarrTalentTreeID'.
---@param value integer
---@return dbc.row.v1215.GarrTalTreeXGarrTalResearch self
function row:SetGarrTalentTreeID(value) end

---Navigates foreign relationship to 'GarrTalentTree' via 'GarrTalentTreeID'.
---@return dbc.row.v1215.GarrTalentTree|nil
function row:GetGarrTalentTree() end

---Creates a related 'GarrTalentTree' row and automatically links 'GarrTalentTreeID'.
---@param data? table
---@return dbc.row.v1215.GarrTalentTree
function row:CreateRelated(data) end

---Gets the value of field 'GarrTalentResearchID'.
---@return integer value
function row:GetGarrTalentResearchID() end

---Sets the value of field 'GarrTalentResearchID'.
---@param value integer
---@return dbc.row.v1215.GarrTalTreeXGarrTalResearch self
function row:SetGarrTalentResearchID(value) end

---Navigates foreign relationship to 'GarrTalentResearch' via 'GarrTalentResearchID'.
---@return dbc.row.v1215.GarrTalentResearch|nil
function row:GetGarrTalentResearch() end

---Creates a related 'GarrTalentResearch' row and automatically links 'GarrTalentResearchID'.
---@param data? table
---@return dbc.row.v1215.GarrTalentResearch
function row:CreateRelated(data) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.GarrTalTreeXGarrTalResearch self
function row:SetOrderIndex(value) end

---Table container for GarrTalTreeXGarrTalResearch (Build 12.1.5.69594).
---@class dbc.Table.v1215.GarrTalTreeXGarrTalResearch : DbcTable
---@field [integer] dbc.row.v1215.GarrTalTreeXGarrTalResearch
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GarrTalTreeXGarrTalResearch
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GarrTalTreeXGarrTalResearch|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GarrTalTreeXGarrTalResearch
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GarrTalTreeXGarrTalResearch>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GarrTalTreeXGarrTalResearch[]
function tbl:GetByRelation(foreign_id) end

return {}
