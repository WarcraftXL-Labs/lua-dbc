---@meta
-- Generated LuaLS annotations for AreaConditionalData (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of AreaConditionalData in build 12.1.5.69594.
---@class dbc.row.v1215.AreaConditionalData : RowProxy
---@field AreaName_lang string
---@field ID integer
---@field OrderIndex integer
---@field PlayerConditionID integer
---@field Field_11_1_5_59571_004 integer
---@field AreaID integer

local row = {}

---Gets the value of field 'AreaName_lang'.
---@return string value
function row:GetAreaName_lang() end

---Sets the value of field 'AreaName_lang'.
---@param value string
---@return dbc.row.v1215.AreaConditionalData self
function row:SetAreaName_lang(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.AreaConditionalData self
function row:SetID(value) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.AreaConditionalData self
function row:SetOrderIndex(value) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.AreaConditionalData self
function row:SetPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'Field_11_1_5_59571_004'.
---@return integer value
function row:GetField_11_1_5_59571_004() end

---Sets the value of field 'Field_11_1_5_59571_004'.
---@param value integer
---@return dbc.row.v1215.AreaConditionalData self
function row:SetField_11_1_5_59571_004(value) end

---Gets the value of field 'AreaID'.
---@return integer value
function row:GetAreaID() end

---Sets the value of field 'AreaID'.
---@param value integer
---@return dbc.row.v1215.AreaConditionalData self
function row:SetAreaID(value) end

---Navigates foreign relationship to 'AreaTable' via 'AreaID'.
---@return dbc.row.v1215.AreaTable|nil
function row:GetArea() end

---Creates a related 'AreaTable' row and automatically links 'AreaID'.
---@param data? table
---@return dbc.row.v1215.AreaTable
function row:CreateRelated(data) end

---Table container for AreaConditionalData (Build 12.1.5.69594).
---@class dbc.Table.v1215.AreaConditionalData : DbcTable
---@field [integer] dbc.row.v1215.AreaConditionalData
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.AreaConditionalData
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.AreaConditionalData|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.AreaConditionalData
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.AreaConditionalData>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.AreaConditionalData[]
function tbl:GetByRelation(foreign_id) end

return {}
