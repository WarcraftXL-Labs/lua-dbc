---@meta
-- Generated LuaLS annotations for ContributionStyleContainer (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ContributionStyleContainer in build 12.1.5.69594.
---@class dbc.row.v1215.ContributionStyleContainer : RowProxy
---@field ID integer
---@field ContributionStyleID integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ContributionStyleContainer self
function row:SetID(value) end

---Gets the value of field 'ContributionStyleID'.
---@return integer[] value
function row:GetContributionStyleID() end

---Sets the value of field 'ContributionStyleID'.
---@param value integer[]
---@return dbc.row.v1215.ContributionStyleContainer self
function row:SetContributionStyleID(value) end

---Gets element at 1-based index in 'ContributionStyleID'.
---@param index integer
---@return integer value
function row:GetContributionStyleIDItem(index) end

---Navigates foreign relationship to 'ContributionStyle' via 'ContributionStyleID'.
---@return dbc.row.v1215.ContributionStyle|nil
function row:GetContributionStyle() end

---Creates a related 'ContributionStyle' row and automatically links 'ContributionStyleID'.
---@param data? table
---@return dbc.row.v1215.ContributionStyle
function row:CreateRelated(data) end

---Table container for ContributionStyleContainer (Build 12.1.5.69594).
---@class dbc.Table.v1215.ContributionStyleContainer : DbcTable
---@field [integer] dbc.row.v1215.ContributionStyleContainer
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ContributionStyleContainer
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ContributionStyleContainer|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ContributionStyleContainer
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ContributionStyleContainer>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ContributionStyleContainer[]
function tbl:GetByRelation(foreign_id) end

return {}
