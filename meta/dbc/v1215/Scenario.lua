---@meta
-- Generated LuaLS annotations for Scenario (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of Scenario in build 12.1.5.69594.
---@class dbc.row.v1215.Scenario : RowProxy
---@field ID integer
---@field Name_lang string
---@field AreaTableID integer
---@field Type integer
---@field Flags integer
---@field UiTextureKitID integer
---@field UiScenarioDisplayInfoID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.Scenario self
function row:SetID(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.Scenario self
function row:SetName_lang(value) end

---Gets the value of field 'AreaTableID'.
---@return integer value
function row:GetAreaTableID() end

---Sets the value of field 'AreaTableID'.
---@param value integer
---@return dbc.row.v1215.Scenario self
function row:SetAreaTableID(value) end

---Navigates foreign relationship to 'AreaTable' via 'AreaTableID'.
---@return dbc.row.v1215.AreaTable|nil
function row:GetAreaTable() end

---Creates a related 'AreaTable' row and automatically links 'AreaTableID'.
---@param data? table
---@return dbc.row.v1215.AreaTable
function row:CreateRelated(data) end

---Gets the value of field 'Type'.
---@return integer value
function row:GetType() end

---Sets the value of field 'Type'.
---@param value integer
---@return dbc.row.v1215.Scenario self
function row:SetType(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.Scenario self
function row:SetFlags(value) end

---Gets the value of field 'UiTextureKitID'.
---@return integer value
function row:GetUiTextureKitID() end

---Sets the value of field 'UiTextureKitID'.
---@param value integer
---@return dbc.row.v1215.Scenario self
function row:SetUiTextureKitID(value) end

---Navigates foreign relationship to 'UiTextureKit' via 'UiTextureKitID'.
---@return dbc.row.v1215.UiTextureKit|nil
function row:GetUiTextureKit() end

---Creates a related 'UiTextureKit' row and automatically links 'UiTextureKitID'.
---@param data? table
---@return dbc.row.v1215.UiTextureKit
function row:CreateRelated(data) end

---Gets the value of field 'UiScenarioDisplayInfoID'.
---@return integer value
function row:GetUiScenarioDisplayInfoID() end

---Sets the value of field 'UiScenarioDisplayInfoID'.
---@param value integer
---@return dbc.row.v1215.Scenario self
function row:SetUiScenarioDisplayInfoID(value) end

---Navigates foreign relationship to 'UIScenarioDisplayInfo' via 'UiScenarioDisplayInfoID'.
---@return dbc.row.v1215.UIScenarioDisplayInfo|nil
function row:GetUiScenarioDisplayInfo() end

---Creates a related 'UIScenarioDisplayInfo' row and automatically links 'UiScenarioDisplayInfoID'.
---@param data? table
---@return dbc.row.v1215.UIScenarioDisplayInfo
function row:CreateRelated(data) end

---Table container for Scenario (Build 12.1.5.69594).
---@class dbc.Table.v1215.Scenario : DbcTable
---@field [integer] dbc.row.v1215.Scenario
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.Scenario
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.Scenario|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.Scenario
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.Scenario>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.Scenario[]
function tbl:GetByRelation(foreign_id) end

return {}
