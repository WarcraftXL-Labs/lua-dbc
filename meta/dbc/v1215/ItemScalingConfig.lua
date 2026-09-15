---@meta
-- Generated LuaLS annotations for ItemScalingConfig (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ItemScalingConfig in build 12.1.5.69594.
---@class dbc.row.v1215.ItemScalingConfig : RowProxy
---@field ID integer
---@field ItemOffsetCurveID integer
---@field ItemLevel integer
---@field RequiredLevel integer
---@field ItemSquishEraID integer
---@field Flags integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ItemScalingConfig self
function row:SetID(value) end

---Gets the value of field 'ItemOffsetCurveID'.
---@return integer value
function row:GetItemOffsetCurveID() end

---Sets the value of field 'ItemOffsetCurveID'.
---@param value integer
---@return dbc.row.v1215.ItemScalingConfig self
function row:SetItemOffsetCurveID(value) end

---Navigates foreign relationship to 'ItemOffsetCurve' via 'ItemOffsetCurveID'.
---@return dbc.row.v1215.ItemOffsetCurve|nil
function row:GetItemOffsetCurve() end

---Creates a related 'ItemOffsetCurve' row and automatically links 'ItemOffsetCurveID'.
---@param data? table
---@return dbc.row.v1215.ItemOffsetCurve
function row:CreateRelated(data) end

---Gets the value of field 'ItemLevel'.
---@return integer value
function row:GetItemLevel() end

---Sets the value of field 'ItemLevel'.
---@param value integer
---@return dbc.row.v1215.ItemScalingConfig self
function row:SetItemLevel(value) end

---Gets the value of field 'RequiredLevel'.
---@return integer value
function row:GetRequiredLevel() end

---Sets the value of field 'RequiredLevel'.
---@param value integer
---@return dbc.row.v1215.ItemScalingConfig self
function row:SetRequiredLevel(value) end

---Gets the value of field 'ItemSquishEraID'.
---@return integer value
function row:GetItemSquishEraID() end

---Sets the value of field 'ItemSquishEraID'.
---@param value integer
---@return dbc.row.v1215.ItemScalingConfig self
function row:SetItemSquishEraID(value) end

---Navigates foreign relationship to 'ItemSquishEra' via 'ItemSquishEraID'.
---@return dbc.row.v1215.ItemSquishEra|nil
function row:GetItemSquishEra() end

---Creates a related 'ItemSquishEra' row and automatically links 'ItemSquishEraID'.
---@param data? table
---@return dbc.row.v1215.ItemSquishEra
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.ItemScalingConfig self
function row:SetFlags(value) end

---Table container for ItemScalingConfig (Build 12.1.5.69594).
---@class dbc.Table.v1215.ItemScalingConfig : DbcTable
---@field [integer] dbc.row.v1215.ItemScalingConfig
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ItemScalingConfig
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ItemScalingConfig|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ItemScalingConfig
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ItemScalingConfig>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ItemScalingConfig[]
function tbl:GetByRelation(foreign_id) end

return {}
