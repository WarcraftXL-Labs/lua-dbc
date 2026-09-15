---@meta
-- Generated LuaLS annotations for UnitBlood (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of UnitBlood in build 12.1.5.69594.
---@class dbc.row.v1215.UnitBlood : RowProxy
---@field ID integer
---@field PlayerCritBloodSpurtID integer
---@field PlayerHitBloodSpurtID integer
---@field DefaultBloodSpurtID integer
---@field PlayerOmniCritBloodSpurtID integer
---@field PlayerOmniHitBloodSpurtID integer
---@field DefaultOmniBloodSpurtID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.UnitBlood self
function row:SetID(value) end

---Gets the value of field 'PlayerCritBloodSpurtID'.
---@return integer value
function row:GetPlayerCritBloodSpurtID() end

---Sets the value of field 'PlayerCritBloodSpurtID'.
---@param value integer
---@return dbc.row.v1215.UnitBlood self
function row:SetPlayerCritBloodSpurtID(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'PlayerCritBloodSpurtID'.
---@return dbc.row.v1215.SpellVisualKit|nil
function row:GetPlayerCritBloodSpurt() end

---Creates a related 'SpellVisualKit' row and automatically links 'PlayerCritBloodSpurtID'.
---@param data? table
---@return dbc.row.v1215.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'PlayerHitBloodSpurtID'.
---@return integer value
function row:GetPlayerHitBloodSpurtID() end

---Sets the value of field 'PlayerHitBloodSpurtID'.
---@param value integer
---@return dbc.row.v1215.UnitBlood self
function row:SetPlayerHitBloodSpurtID(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'PlayerHitBloodSpurtID'.
---@return dbc.row.v1215.SpellVisualKit|nil
function row:GetPlayerHitBloodSpurt() end

---Creates a related 'SpellVisualKit' row and automatically links 'PlayerHitBloodSpurtID'.
---@param data? table
---@return dbc.row.v1215.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'DefaultBloodSpurtID'.
---@return integer value
function row:GetDefaultBloodSpurtID() end

---Sets the value of field 'DefaultBloodSpurtID'.
---@param value integer
---@return dbc.row.v1215.UnitBlood self
function row:SetDefaultBloodSpurtID(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'DefaultBloodSpurtID'.
---@return dbc.row.v1215.SpellVisualKit|nil
function row:GetDefaultBloodSpurt() end

---Creates a related 'SpellVisualKit' row and automatically links 'DefaultBloodSpurtID'.
---@param data? table
---@return dbc.row.v1215.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'PlayerOmniCritBloodSpurtID'.
---@return integer value
function row:GetPlayerOmniCritBloodSpurtID() end

---Sets the value of field 'PlayerOmniCritBloodSpurtID'.
---@param value integer
---@return dbc.row.v1215.UnitBlood self
function row:SetPlayerOmniCritBloodSpurtID(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'PlayerOmniCritBloodSpurtID'.
---@return dbc.row.v1215.SpellVisualKit|nil
function row:GetPlayerOmniCritBloodSpurt() end

---Creates a related 'SpellVisualKit' row and automatically links 'PlayerOmniCritBloodSpurtID'.
---@param data? table
---@return dbc.row.v1215.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'PlayerOmniHitBloodSpurtID'.
---@return integer value
function row:GetPlayerOmniHitBloodSpurtID() end

---Sets the value of field 'PlayerOmniHitBloodSpurtID'.
---@param value integer
---@return dbc.row.v1215.UnitBlood self
function row:SetPlayerOmniHitBloodSpurtID(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'PlayerOmniHitBloodSpurtID'.
---@return dbc.row.v1215.SpellVisualKit|nil
function row:GetPlayerOmniHitBloodSpurt() end

---Creates a related 'SpellVisualKit' row and automatically links 'PlayerOmniHitBloodSpurtID'.
---@param data? table
---@return dbc.row.v1215.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'DefaultOmniBloodSpurtID'.
---@return integer value
function row:GetDefaultOmniBloodSpurtID() end

---Sets the value of field 'DefaultOmniBloodSpurtID'.
---@param value integer
---@return dbc.row.v1215.UnitBlood self
function row:SetDefaultOmniBloodSpurtID(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'DefaultOmniBloodSpurtID'.
---@return dbc.row.v1215.SpellVisualKit|nil
function row:GetDefaultOmniBloodSpurt() end

---Creates a related 'SpellVisualKit' row and automatically links 'DefaultOmniBloodSpurtID'.
---@param data? table
---@return dbc.row.v1215.SpellVisualKit
function row:CreateRelated(data) end

---Table container for UnitBlood (Build 12.1.5.69594).
---@class dbc.Table.v1215.UnitBlood : DbcTable
---@field [integer] dbc.row.v1215.UnitBlood
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.UnitBlood
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.UnitBlood|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.UnitBlood
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.UnitBlood>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.UnitBlood[]
function tbl:GetByRelation(foreign_id) end

return {}
