---@meta
-- Generated LuaLS annotations for BattlePetAbilityTurn (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of BattlePetAbilityTurn in build 12.1.5.69594.
---@class dbc.row.v1215.BattlePetAbilityTurn : RowProxy
---@field ID integer
---@field BattlePetAbilityID integer
---@field OrderIndex integer
---@field TurnTypeEnum integer
---@field EventTypeEnum integer
---@field BattlePetVisualID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.BattlePetAbilityTurn self
function row:SetID(value) end

---Gets the value of field 'BattlePetAbilityID'.
---@return integer value
function row:GetBattlePetAbilityID() end

---Sets the value of field 'BattlePetAbilityID'.
---@param value integer
---@return dbc.row.v1215.BattlePetAbilityTurn self
function row:SetBattlePetAbilityID(value) end

---Navigates foreign relationship to 'BattlePetAbility' via 'BattlePetAbilityID'.
---@return dbc.row.v1215.BattlePetAbility|nil
function row:GetBattlePetAbility() end

---Creates a related 'BattlePetAbility' row and automatically links 'BattlePetAbilityID'.
---@param data? table
---@return dbc.row.v1215.BattlePetAbility
function row:CreateRelated(data) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.BattlePetAbilityTurn self
function row:SetOrderIndex(value) end

---Gets the value of field 'TurnTypeEnum'.
---@return integer value
function row:GetTurnTypeEnum() end

---Sets the value of field 'TurnTypeEnum'.
---@param value integer
---@return dbc.row.v1215.BattlePetAbilityTurn self
function row:SetTurnTypeEnum(value) end

---Gets the value of field 'EventTypeEnum'.
---@return integer value
function row:GetEventTypeEnum() end

---Sets the value of field 'EventTypeEnum'.
---@param value integer
---@return dbc.row.v1215.BattlePetAbilityTurn self
function row:SetEventTypeEnum(value) end

---Gets the value of field 'BattlePetVisualID'.
---@return integer value
function row:GetBattlePetVisualID() end

---Sets the value of field 'BattlePetVisualID'.
---@param value integer
---@return dbc.row.v1215.BattlePetAbilityTurn self
function row:SetBattlePetVisualID(value) end

---Navigates foreign relationship to 'BattlePetVisual' via 'BattlePetVisualID'.
---@return dbc.row.v1215.BattlePetVisual|nil
function row:GetBattlePetVisual() end

---Creates a related 'BattlePetVisual' row and automatically links 'BattlePetVisualID'.
---@param data? table
---@return dbc.row.v1215.BattlePetVisual
function row:CreateRelated(data) end

---Table container for BattlePetAbilityTurn (Build 12.1.5.69594).
---@class dbc.Table.v1215.BattlePetAbilityTurn : DbcTable
---@field [integer] dbc.row.v1215.BattlePetAbilityTurn
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.BattlePetAbilityTurn
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.BattlePetAbilityTurn|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.BattlePetAbilityTurn
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.BattlePetAbilityTurn>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.BattlePetAbilityTurn[]
function tbl:GetByRelation(foreign_id) end

return {}
