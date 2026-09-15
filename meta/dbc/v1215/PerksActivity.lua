---@meta
-- Generated LuaLS annotations for PerksActivity (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of PerksActivity in build 12.1.5.69594.
---@class dbc.row.v1215.PerksActivity : RowProxy
---@field ActivityName_lang string
---@field Description_lang string
---@field ID integer
---@field CriteriaTreeID integer
---@field ThresholdContributionAmount integer
---@field Supersedes integer
---@field Priority integer

local row = {}

---Gets the value of field 'ActivityName_lang'.
---@return string value
function row:GetActivityName_lang() end

---Sets the value of field 'ActivityName_lang'.
---@param value string
---@return dbc.row.v1215.PerksActivity self
function row:SetActivityName_lang(value) end

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v1215.PerksActivity self
function row:SetDescription_lang(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.PerksActivity self
function row:SetID(value) end

---Gets the value of field 'CriteriaTreeID'.
---@return integer value
function row:GetCriteriaTreeID() end

---Sets the value of field 'CriteriaTreeID'.
---@param value integer
---@return dbc.row.v1215.PerksActivity self
function row:SetCriteriaTreeID(value) end

---Navigates foreign relationship to 'CriteriaTree' via 'CriteriaTreeID'.
---@return dbc.row.v1215.CriteriaTree|nil
function row:GetCriteriaTree() end

---Creates a related 'CriteriaTree' row and automatically links 'CriteriaTreeID'.
---@param data? table
---@return dbc.row.v1215.CriteriaTree
function row:CreateRelated(data) end

---Gets the value of field 'ThresholdContributionAmount'.
---@return integer value
function row:GetThresholdContributionAmount() end

---Sets the value of field 'ThresholdContributionAmount'.
---@param value integer
---@return dbc.row.v1215.PerksActivity self
function row:SetThresholdContributionAmount(value) end

---Gets the value of field 'Supersedes'.
---@return integer value
function row:GetSupersedes() end

---Sets the value of field 'Supersedes'.
---@param value integer
---@return dbc.row.v1215.PerksActivity self
function row:SetSupersedes(value) end

---Gets the value of field 'Priority'.
---@return integer value
function row:GetPriority() end

---Sets the value of field 'Priority'.
---@param value integer
---@return dbc.row.v1215.PerksActivity self
function row:SetPriority(value) end

---Table container for PerksActivity (Build 12.1.5.69594).
---@class dbc.Table.v1215.PerksActivity : DbcTable
---@field [integer] dbc.row.v1215.PerksActivity
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.PerksActivity
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.PerksActivity|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.PerksActivity
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.PerksActivity>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.PerksActivity[]
function tbl:GetByRelation(foreign_id) end

return {}
