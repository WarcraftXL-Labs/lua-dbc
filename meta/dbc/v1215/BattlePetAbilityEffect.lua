---@meta
-- Generated LuaLS annotations for BattlePetAbilityEffect (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of BattlePetAbilityEffect in build 12.1.5.69594.
---@class dbc.row.v1215.BattlePetAbilityEffect : RowProxy
---@field ID integer
---@field BattlePetAbilityTurnID integer
---@field OrderIndex integer
---@field BattlePetEffectPropertiesID integer
---@field AuraBattlePetAbilityID integer
---@field BattlePetVisualID integer
---@field Param integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.BattlePetAbilityEffect self
function row:SetID(value) end

---Gets the value of field 'BattlePetAbilityTurnID'.
---@return integer value
function row:GetBattlePetAbilityTurnID() end

---Sets the value of field 'BattlePetAbilityTurnID'.
---@param value integer
---@return dbc.row.v1215.BattlePetAbilityEffect self
function row:SetBattlePetAbilityTurnID(value) end

---Navigates foreign relationship to 'BattlePetAbilityTurn' via 'BattlePetAbilityTurnID'.
---@return dbc.row.v1215.BattlePetAbilityTurn|nil
function row:GetBattlePetAbilityTurn() end

---Creates a related 'BattlePetAbilityTurn' row and automatically links 'BattlePetAbilityTurnID'.
---@param data? table
---@return dbc.row.v1215.BattlePetAbilityTurn
function row:CreateRelated(data) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.BattlePetAbilityEffect self
function row:SetOrderIndex(value) end

---Gets the value of field 'BattlePetEffectPropertiesID'.
---@return integer value
function row:GetBattlePetEffectPropertiesID() end

---Sets the value of field 'BattlePetEffectPropertiesID'.
---@param value integer
---@return dbc.row.v1215.BattlePetAbilityEffect self
function row:SetBattlePetEffectPropertiesID(value) end

---Navigates foreign relationship to 'BattlePetEffectProperties' via 'BattlePetEffectPropertiesID'.
---@return dbc.row.v1215.BattlePetEffectProperties|nil
function row:GetBattlePetEffectProperties() end

---Creates a related 'BattlePetEffectProperties' row and automatically links 'BattlePetEffectPropertiesID'.
---@param data? table
---@return dbc.row.v1215.BattlePetEffectProperties
function row:CreateRelated(data) end

---Gets the value of field 'AuraBattlePetAbilityID'.
---@return integer value
function row:GetAuraBattlePetAbilityID() end

---Sets the value of field 'AuraBattlePetAbilityID'.
---@param value integer
---@return dbc.row.v1215.BattlePetAbilityEffect self
function row:SetAuraBattlePetAbilityID(value) end

---Navigates foreign relationship to 'BattlePetAbility' via 'AuraBattlePetAbilityID'.
---@return dbc.row.v1215.BattlePetAbility|nil
function row:GetAuraBattlePetAbility() end

---Creates a related 'BattlePetAbility' row and automatically links 'AuraBattlePetAbilityID'.
---@param data? table
---@return dbc.row.v1215.BattlePetAbility
function row:CreateRelated(data) end

---Gets the value of field 'BattlePetVisualID'.
---@return integer value
function row:GetBattlePetVisualID() end

---Sets the value of field 'BattlePetVisualID'.
---@param value integer
---@return dbc.row.v1215.BattlePetAbilityEffect self
function row:SetBattlePetVisualID(value) end

---Navigates foreign relationship to 'BattlePetVisual' via 'BattlePetVisualID'.
---@return dbc.row.v1215.BattlePetVisual|nil
function row:GetBattlePetVisual() end

---Creates a related 'BattlePetVisual' row and automatically links 'BattlePetVisualID'.
---@param data? table
---@return dbc.row.v1215.BattlePetVisual
function row:CreateRelated(data) end

---Gets the value of field 'Param'.
---@return integer[] value
function row:GetParam() end

---Sets the value of field 'Param'.
---@param value integer[]
---@return dbc.row.v1215.BattlePetAbilityEffect self
function row:SetParam(value) end

---Gets element at 1-based index in 'Param'.
---@param index integer
---@return integer value
function row:GetParamItem(index) end

---Table container for BattlePetAbilityEffect (Build 12.1.5.69594).
---@class dbc.Table.v1215.BattlePetAbilityEffect : DbcTable
---@field [integer] dbc.row.v1215.BattlePetAbilityEffect
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.BattlePetAbilityEffect
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.BattlePetAbilityEffect|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.BattlePetAbilityEffect
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.BattlePetAbilityEffect>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.BattlePetAbilityEffect[]
function tbl:GetByRelation(foreign_id) end

return {}
