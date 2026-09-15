---@meta
-- Generated LuaLS annotations for DestructibleModelData (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of DestructibleModelData in build 12.1.5.69594.
---@class dbc.row.v1215.DestructibleModelData : RowProxy
---@field ID integer
---@field State0ImpactEffectDoodadSet integer
---@field State0AmbientDoodadSet integer
---@field State1WMO integer
---@field State1DestructionDoodadSet integer
---@field State1ImpactEffectDoodadSet integer
---@field State1AmbientDoodadSet integer
---@field State2WMO integer
---@field State2DestructionDoodadSet integer
---@field State2ImpactEffectDoodadSet integer
---@field State2AmbientDoodadSet integer
---@field State3WMO integer
---@field State3InitDoodadSet integer
---@field State3AmbientDoodadSet integer
---@field EjectDirection integer
---@field DoNotHighlight integer
---@field State0WMO integer
---@field HealEffect integer
---@field HealEffectSpeed integer
---@field State0NameSet integer
---@field State1NameSet integer
---@field State2NameSet integer
---@field State3NameSet integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.DestructibleModelData self
function row:SetID(value) end

---Gets the value of field 'State0ImpactEffectDoodadSet'.
---@return integer value
function row:GetState0ImpactEffectDoodadSet() end

---Sets the value of field 'State0ImpactEffectDoodadSet'.
---@param value integer
---@return dbc.row.v1215.DestructibleModelData self
function row:SetState0ImpactEffectDoodadSet(value) end

---Gets the value of field 'State0AmbientDoodadSet'.
---@return integer value
function row:GetState0AmbientDoodadSet() end

---Sets the value of field 'State0AmbientDoodadSet'.
---@param value integer
---@return dbc.row.v1215.DestructibleModelData self
function row:SetState0AmbientDoodadSet(value) end

---Gets the value of field 'State1WMO'.
---@return integer value
function row:GetState1WMO() end

---Sets the value of field 'State1WMO'.
---@param value integer
---@return dbc.row.v1215.DestructibleModelData self
function row:SetState1WMO(value) end

---Navigates foreign relationship to 'GameObjectDisplayInfo' via 'State1WMO'.
---@return dbc.row.v1215.GameObjectDisplayInfo|nil
function row:GetState1WMO() end

---Creates a related 'GameObjectDisplayInfo' row and automatically links 'State1WMO'.
---@param data? table
---@return dbc.row.v1215.GameObjectDisplayInfo
function row:CreateRelated(data) end

---Gets the value of field 'State1DestructionDoodadSet'.
---@return integer value
function row:GetState1DestructionDoodadSet() end

---Sets the value of field 'State1DestructionDoodadSet'.
---@param value integer
---@return dbc.row.v1215.DestructibleModelData self
function row:SetState1DestructionDoodadSet(value) end

---Gets the value of field 'State1ImpactEffectDoodadSet'.
---@return integer value
function row:GetState1ImpactEffectDoodadSet() end

---Sets the value of field 'State1ImpactEffectDoodadSet'.
---@param value integer
---@return dbc.row.v1215.DestructibleModelData self
function row:SetState1ImpactEffectDoodadSet(value) end

---Gets the value of field 'State1AmbientDoodadSet'.
---@return integer value
function row:GetState1AmbientDoodadSet() end

---Sets the value of field 'State1AmbientDoodadSet'.
---@param value integer
---@return dbc.row.v1215.DestructibleModelData self
function row:SetState1AmbientDoodadSet(value) end

---Gets the value of field 'State2WMO'.
---@return integer value
function row:GetState2WMO() end

---Sets the value of field 'State2WMO'.
---@param value integer
---@return dbc.row.v1215.DestructibleModelData self
function row:SetState2WMO(value) end

---Navigates foreign relationship to 'GameObjectDisplayInfo' via 'State2WMO'.
---@return dbc.row.v1215.GameObjectDisplayInfo|nil
function row:GetState2WMO() end

---Creates a related 'GameObjectDisplayInfo' row and automatically links 'State2WMO'.
---@param data? table
---@return dbc.row.v1215.GameObjectDisplayInfo
function row:CreateRelated(data) end

---Gets the value of field 'State2DestructionDoodadSet'.
---@return integer value
function row:GetState2DestructionDoodadSet() end

---Sets the value of field 'State2DestructionDoodadSet'.
---@param value integer
---@return dbc.row.v1215.DestructibleModelData self
function row:SetState2DestructionDoodadSet(value) end

---Gets the value of field 'State2ImpactEffectDoodadSet'.
---@return integer value
function row:GetState2ImpactEffectDoodadSet() end

---Sets the value of field 'State2ImpactEffectDoodadSet'.
---@param value integer
---@return dbc.row.v1215.DestructibleModelData self
function row:SetState2ImpactEffectDoodadSet(value) end

---Gets the value of field 'State2AmbientDoodadSet'.
---@return integer value
function row:GetState2AmbientDoodadSet() end

---Sets the value of field 'State2AmbientDoodadSet'.
---@param value integer
---@return dbc.row.v1215.DestructibleModelData self
function row:SetState2AmbientDoodadSet(value) end

---Gets the value of field 'State3WMO'.
---@return integer value
function row:GetState3WMO() end

---Sets the value of field 'State3WMO'.
---@param value integer
---@return dbc.row.v1215.DestructibleModelData self
function row:SetState3WMO(value) end

---Navigates foreign relationship to 'GameObjectDisplayInfo' via 'State3WMO'.
---@return dbc.row.v1215.GameObjectDisplayInfo|nil
function row:GetState3WMO() end

---Creates a related 'GameObjectDisplayInfo' row and automatically links 'State3WMO'.
---@param data? table
---@return dbc.row.v1215.GameObjectDisplayInfo
function row:CreateRelated(data) end

---Gets the value of field 'State3InitDoodadSet'.
---@return integer value
function row:GetState3InitDoodadSet() end

---Sets the value of field 'State3InitDoodadSet'.
---@param value integer
---@return dbc.row.v1215.DestructibleModelData self
function row:SetState3InitDoodadSet(value) end

---Gets the value of field 'State3AmbientDoodadSet'.
---@return integer value
function row:GetState3AmbientDoodadSet() end

---Sets the value of field 'State3AmbientDoodadSet'.
---@param value integer
---@return dbc.row.v1215.DestructibleModelData self
function row:SetState3AmbientDoodadSet(value) end

---Gets the value of field 'EjectDirection'.
---@return integer value
function row:GetEjectDirection() end

---Sets the value of field 'EjectDirection'.
---@param value integer
---@return dbc.row.v1215.DestructibleModelData self
function row:SetEjectDirection(value) end

---Gets the value of field 'DoNotHighlight'.
---@return integer value
function row:GetDoNotHighlight() end

---Sets the value of field 'DoNotHighlight'.
---@param value integer
---@return dbc.row.v1215.DestructibleModelData self
function row:SetDoNotHighlight(value) end

---Gets the value of field 'State0WMO'.
---@return integer value
function row:GetState0WMO() end

---Sets the value of field 'State0WMO'.
---@param value integer
---@return dbc.row.v1215.DestructibleModelData self
function row:SetState0WMO(value) end

---Navigates foreign relationship to 'GameObjectDisplayInfo' via 'State0WMO'.
---@return dbc.row.v1215.GameObjectDisplayInfo|nil
function row:GetState0WMO() end

---Creates a related 'GameObjectDisplayInfo' row and automatically links 'State0WMO'.
---@param data? table
---@return dbc.row.v1215.GameObjectDisplayInfo
function row:CreateRelated(data) end

---Gets the value of field 'HealEffect'.
---@return integer value
function row:GetHealEffect() end

---Sets the value of field 'HealEffect'.
---@param value integer
---@return dbc.row.v1215.DestructibleModelData self
function row:SetHealEffect(value) end

---Gets the value of field 'HealEffectSpeed'.
---@return integer value
function row:GetHealEffectSpeed() end

---Sets the value of field 'HealEffectSpeed'.
---@param value integer
---@return dbc.row.v1215.DestructibleModelData self
function row:SetHealEffectSpeed(value) end

---Gets the value of field 'State0NameSet'.
---@return integer value
function row:GetState0NameSet() end

---Sets the value of field 'State0NameSet'.
---@param value integer
---@return dbc.row.v1215.DestructibleModelData self
function row:SetState0NameSet(value) end

---Gets the value of field 'State1NameSet'.
---@return integer value
function row:GetState1NameSet() end

---Sets the value of field 'State1NameSet'.
---@param value integer
---@return dbc.row.v1215.DestructibleModelData self
function row:SetState1NameSet(value) end

---Gets the value of field 'State2NameSet'.
---@return integer value
function row:GetState2NameSet() end

---Sets the value of field 'State2NameSet'.
---@param value integer
---@return dbc.row.v1215.DestructibleModelData self
function row:SetState2NameSet(value) end

---Gets the value of field 'State3NameSet'.
---@return integer value
function row:GetState3NameSet() end

---Sets the value of field 'State3NameSet'.
---@param value integer
---@return dbc.row.v1215.DestructibleModelData self
function row:SetState3NameSet(value) end

---Table container for DestructibleModelData (Build 12.1.5.69594).
---@class dbc.Table.v1215.DestructibleModelData : DbcTable
---@field [integer] dbc.row.v1215.DestructibleModelData
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.DestructibleModelData
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.DestructibleModelData|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.DestructibleModelData
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.DestructibleModelData>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.DestructibleModelData[]
function tbl:GetByRelation(foreign_id) end

return {}
