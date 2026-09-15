---@meta
-- Generated LuaLS annotations for Faction (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of Faction in build 3.3.5.12340.
---@class dbc.row.v335.Faction : RowProxy
---@field ID integer
---@field ReputationIndex integer
---@field ReputationRaceMask integer[]
---@field ReputationClassMask integer[]
---@field ReputationBase integer[]
---@field ReputationFlags integer[]
---@field ParentFactionID integer
---@field ParentFactionMod number[]
---@field ParentFactionCap integer[]
---@field Name_lang string
---@field Description_lang string

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.Faction self
function row:SetID(value) end

---Gets the value of field 'ReputationIndex'.
---@return integer value
function row:GetReputationIndex() end

---Sets the value of field 'ReputationIndex'.
---@param value integer
---@return dbc.row.v335.Faction self
function row:SetReputationIndex(value) end

---Gets the value of field 'ReputationRaceMask'.
---@return integer[] value
function row:GetReputationRaceMask() end

---Sets the value of field 'ReputationRaceMask'.
---@param value integer[]
---@return dbc.row.v335.Faction self
function row:SetReputationRaceMask(value) end

---Gets element at 1-based index in 'ReputationRaceMask'.
---@param index integer
---@return integer value
function row:GetReputationRaceMaskItem(index) end

---Gets the value of field 'ReputationClassMask'.
---@return integer[] value
function row:GetReputationClassMask() end

---Sets the value of field 'ReputationClassMask'.
---@param value integer[]
---@return dbc.row.v335.Faction self
function row:SetReputationClassMask(value) end

---Gets element at 1-based index in 'ReputationClassMask'.
---@param index integer
---@return integer value
function row:GetReputationClassMaskItem(index) end

---Gets the value of field 'ReputationBase'.
---@return integer[] value
function row:GetReputationBase() end

---Sets the value of field 'ReputationBase'.
---@param value integer[]
---@return dbc.row.v335.Faction self
function row:SetReputationBase(value) end

---Gets element at 1-based index in 'ReputationBase'.
---@param index integer
---@return integer value
function row:GetReputationBaseItem(index) end

---Gets the value of field 'ReputationFlags'.
---@return integer[] value
function row:GetReputationFlags() end

---Sets the value of field 'ReputationFlags'.
---@param value integer[]
---@return dbc.row.v335.Faction self
function row:SetReputationFlags(value) end

---Gets element at 1-based index in 'ReputationFlags'.
---@param index integer
---@return integer value
function row:GetReputationFlagsItem(index) end

---Gets the value of field 'ParentFactionID'.
---@return integer value
function row:GetParentFactionID() end

---Sets the value of field 'ParentFactionID'.
---@param value integer
---@return dbc.row.v335.Faction self
function row:SetParentFactionID(value) end

---Navigates foreign relationship to 'Faction' via 'ParentFactionID'.
---@return dbc.row.v335.Faction|nil
function row:GetParentFaction() end

---Creates a related 'Faction' row and automatically links 'ParentFactionID'.
---@param data? table
---@return dbc.row.v335.Faction
function row:CreateRelated(data) end

---Gets the value of field 'ParentFactionMod'.
---@return number[] value
function row:GetParentFactionMod() end

---Sets the value of field 'ParentFactionMod'.
---@param value number[]
---@return dbc.row.v335.Faction self
function row:SetParentFactionMod(value) end

---Gets element at 1-based index in 'ParentFactionMod'.
---@param index integer
---@return number value
function row:GetParentFactionModItem(index) end

---Gets the value of field 'ParentFactionCap'.
---@return integer[] value
function row:GetParentFactionCap() end

---Sets the value of field 'ParentFactionCap'.
---@param value integer[]
---@return dbc.row.v335.Faction self
function row:SetParentFactionCap(value) end

---Gets element at 1-based index in 'ParentFactionCap'.
---@param index integer
---@return integer value
function row:GetParentFactionCapItem(index) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v335.Faction self
function row:SetName_lang(value) end

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v335.Faction self
function row:SetDescription_lang(value) end

---Table container for Faction (Build 3.3.5.12340).
---@class dbc.Table.v335.Faction : DbcTable
---@field [integer] dbc.row.v335.Faction
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.Faction
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.Faction|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.Faction
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.Faction>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.Faction[]
function tbl:GetByRelation(foreign_id) end

return {}
