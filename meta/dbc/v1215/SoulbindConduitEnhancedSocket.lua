---@meta
-- Generated LuaLS annotations for SoulbindConduitEnhancedSocket (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SoulbindConduitEnhancedSocket in build 12.1.5.69594.
---@class dbc.row.v1215.SoulbindConduitEnhancedSocket : RowProxy
---@field ID integer
---@field GarrTalentID integer
---@field PlayerConditionID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SoulbindConduitEnhancedSocket self
function row:SetID(value) end

---Gets the value of field 'GarrTalentID'.
---@return integer value
function row:GetGarrTalentID() end

---Sets the value of field 'GarrTalentID'.
---@param value integer
---@return dbc.row.v1215.SoulbindConduitEnhancedSocket self
function row:SetGarrTalentID(value) end

---Navigates foreign relationship to 'GarrTalent' via 'GarrTalentID'.
---@return dbc.row.v1215.GarrTalent|nil
function row:GetGarrTalent() end

---Creates a related 'GarrTalent' row and automatically links 'GarrTalentID'.
---@param data? table
---@return dbc.row.v1215.GarrTalent
function row:CreateRelated(data) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.SoulbindConduitEnhancedSocket self
function row:SetPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Table container for SoulbindConduitEnhancedSocket (Build 12.1.5.69594).
---@class dbc.Table.v1215.SoulbindConduitEnhancedSocket : DbcTable
---@field [integer] dbc.row.v1215.SoulbindConduitEnhancedSocket
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SoulbindConduitEnhancedSocket
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SoulbindConduitEnhancedSocket|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SoulbindConduitEnhancedSocket
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SoulbindConduitEnhancedSocket>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SoulbindConduitEnhancedSocket[]
function tbl:GetByRelation(foreign_id) end

return {}
