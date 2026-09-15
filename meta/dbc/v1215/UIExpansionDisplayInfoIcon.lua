---@meta
-- Generated LuaLS annotations for UIExpansionDisplayInfoIcon (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of UIExpansionDisplayInfoIcon in build 12.1.5.69594.
---@class dbc.row.v1215.UIExpansionDisplayInfoIcon : RowProxy
---@field ID integer
---@field FeatureDescription_lang string
---@field FeatureIcon integer
---@field ParentID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.UIExpansionDisplayInfoIcon self
function row:SetID(value) end

---Gets the value of field 'FeatureDescription_lang'.
---@return string value
function row:GetFeatureDescription_lang() end

---Sets the value of field 'FeatureDescription_lang'.
---@param value string
---@return dbc.row.v1215.UIExpansionDisplayInfoIcon self
function row:SetFeatureDescription_lang(value) end

---Gets the value of field 'FeatureIcon'.
---@return integer value
function row:GetFeatureIcon() end

---Sets the value of field 'FeatureIcon'.
---@param value integer
---@return dbc.row.v1215.UIExpansionDisplayInfoIcon self
function row:SetFeatureIcon(value) end

---Navigates foreign relationship to 'FileData' via 'FeatureIcon'.
---@return dbc.row.v1215.FileData|nil
function row:GetFeatureIcon() end

---Creates a related 'FileData' row and automatically links 'FeatureIcon'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'ParentID'.
---@return integer value
function row:GetParentID() end

---Sets the value of field 'ParentID'.
---@param value integer
---@return dbc.row.v1215.UIExpansionDisplayInfoIcon self
function row:SetParentID(value) end

---Navigates foreign relationship to 'UIExpansionDisplayInfo' via 'ParentID'.
---@return dbc.row.v1215.UIExpansionDisplayInfo|nil
function row:GetParent() end

---Creates a related 'UIExpansionDisplayInfo' row and automatically links 'ParentID'.
---@param data? table
---@return dbc.row.v1215.UIExpansionDisplayInfo
function row:CreateRelated(data) end

---Table container for UIExpansionDisplayInfoIcon (Build 12.1.5.69594).
---@class dbc.Table.v1215.UIExpansionDisplayInfoIcon : DbcTable
---@field [integer] dbc.row.v1215.UIExpansionDisplayInfoIcon
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.UIExpansionDisplayInfoIcon
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.UIExpansionDisplayInfoIcon|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.UIExpansionDisplayInfoIcon
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.UIExpansionDisplayInfoIcon>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.UIExpansionDisplayInfoIcon[]
function tbl:GetByRelation(foreign_id) end

return {}
