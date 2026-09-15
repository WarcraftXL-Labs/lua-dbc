---@meta
-- Generated LuaLS annotations for MountXDisplay (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of MountXDisplay in build 12.1.5.69594.
---@class dbc.row.v1215.MountXDisplay : RowProxy
---@field ID integer
---@field CreatureDisplayInfoID integer
---@field PlayerConditionID integer
---@field Field_11_0_0_54210_002 integer
---@field MountID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.MountXDisplay self
function row:SetID(value) end

---Gets the value of field 'CreatureDisplayInfoID'.
---@return integer value
function row:GetCreatureDisplayInfoID() end

---Sets the value of field 'CreatureDisplayInfoID'.
---@param value integer
---@return dbc.row.v1215.MountXDisplay self
function row:SetCreatureDisplayInfoID(value) end

---Navigates foreign relationship to 'CreatureDisplayInfo' via 'CreatureDisplayInfoID'.
---@return dbc.row.v1215.CreatureDisplayInfo|nil
function row:GetCreatureDisplayInfo() end

---Creates a related 'CreatureDisplayInfo' row and automatically links 'CreatureDisplayInfoID'.
---@param data? table
---@return dbc.row.v1215.CreatureDisplayInfo
function row:CreateRelated(data) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.MountXDisplay self
function row:SetPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'Field_11_0_0_54210_002'.
---@return integer value
function row:GetField_11_0_0_54210_002() end

---Sets the value of field 'Field_11_0_0_54210_002'.
---@param value integer
---@return dbc.row.v1215.MountXDisplay self
function row:SetField_11_0_0_54210_002(value) end

---Gets the value of field 'MountID'.
---@return integer value
function row:GetMountID() end

---Sets the value of field 'MountID'.
---@param value integer
---@return dbc.row.v1215.MountXDisplay self
function row:SetMountID(value) end

---Navigates foreign relationship to 'Mount' via 'MountID'.
---@return dbc.row.v1215.Mount|nil
function row:GetMount() end

---Creates a related 'Mount' row and automatically links 'MountID'.
---@param data? table
---@return dbc.row.v1215.Mount
function row:CreateRelated(data) end

---Table container for MountXDisplay (Build 12.1.5.69594).
---@class dbc.Table.v1215.MountXDisplay : DbcTable
---@field [integer] dbc.row.v1215.MountXDisplay
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.MountXDisplay
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.MountXDisplay|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.MountXDisplay
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.MountXDisplay>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.MountXDisplay[]
function tbl:GetByRelation(foreign_id) end

return {}
