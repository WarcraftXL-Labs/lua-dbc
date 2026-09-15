---@meta
-- Generated LuaLS annotations for MountCapability (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of MountCapability in build 12.1.5.69594.
---@class dbc.row.v1215.MountCapability : RowProxy
---@field ID integer
---@field Flags integer
---@field ReqRidingSkill integer
---@field ReqAreaID integer
---@field ReqSpellAuraID integer
---@field ReqSpellKnownID integer
---@field ModSpellAuraID integer
---@field ReqMapID integer
---@field PlayerConditionID integer
---@field FlightCapabilityID integer
---@field DriveCapabilityID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.MountCapability self
function row:SetID(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.MountCapability self
function row:SetFlags(value) end

---Gets the value of field 'ReqRidingSkill'.
---@return integer value
function row:GetReqRidingSkill() end

---Sets the value of field 'ReqRidingSkill'.
---@param value integer
---@return dbc.row.v1215.MountCapability self
function row:SetReqRidingSkill(value) end

---Gets the value of field 'ReqAreaID'.
---@return integer value
function row:GetReqAreaID() end

---Sets the value of field 'ReqAreaID'.
---@param value integer
---@return dbc.row.v1215.MountCapability self
function row:SetReqAreaID(value) end

---Navigates foreign relationship to 'AreaTable' via 'ReqAreaID'.
---@return dbc.row.v1215.AreaTable|nil
function row:GetReqArea() end

---Creates a related 'AreaTable' row and automatically links 'ReqAreaID'.
---@param data? table
---@return dbc.row.v1215.AreaTable
function row:CreateRelated(data) end

---Gets the value of field 'ReqSpellAuraID'.
---@return integer value
function row:GetReqSpellAuraID() end

---Sets the value of field 'ReqSpellAuraID'.
---@param value integer
---@return dbc.row.v1215.MountCapability self
function row:SetReqSpellAuraID(value) end

---Navigates foreign relationship to 'Spell' via 'ReqSpellAuraID'.
---@return dbc.row.v1215.Spell|nil
function row:GetReqSpellAura() end

---Creates a related 'Spell' row and automatically links 'ReqSpellAuraID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'ReqSpellKnownID'.
---@return integer value
function row:GetReqSpellKnownID() end

---Sets the value of field 'ReqSpellKnownID'.
---@param value integer
---@return dbc.row.v1215.MountCapability self
function row:SetReqSpellKnownID(value) end

---Navigates foreign relationship to 'Spell' via 'ReqSpellKnownID'.
---@return dbc.row.v1215.Spell|nil
function row:GetReqSpellKnown() end

---Creates a related 'Spell' row and automatically links 'ReqSpellKnownID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'ModSpellAuraID'.
---@return integer value
function row:GetModSpellAuraID() end

---Sets the value of field 'ModSpellAuraID'.
---@param value integer
---@return dbc.row.v1215.MountCapability self
function row:SetModSpellAuraID(value) end

---Navigates foreign relationship to 'Spell' via 'ModSpellAuraID'.
---@return dbc.row.v1215.Spell|nil
function row:GetModSpellAura() end

---Creates a related 'Spell' row and automatically links 'ModSpellAuraID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'ReqMapID'.
---@return integer value
function row:GetReqMapID() end

---Sets the value of field 'ReqMapID'.
---@param value integer
---@return dbc.row.v1215.MountCapability self
function row:SetReqMapID(value) end

---Navigates foreign relationship to 'Map' via 'ReqMapID'.
---@return dbc.row.v1215.Map|nil
function row:GetReqMap() end

---Creates a related 'Map' row and automatically links 'ReqMapID'.
---@param data? table
---@return dbc.row.v1215.Map
function row:CreateRelated(data) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.MountCapability self
function row:SetPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'FlightCapabilityID'.
---@return integer value
function row:GetFlightCapabilityID() end

---Sets the value of field 'FlightCapabilityID'.
---@param value integer
---@return dbc.row.v1215.MountCapability self
function row:SetFlightCapabilityID(value) end

---Navigates foreign relationship to 'FlightCapability' via 'FlightCapabilityID'.
---@return dbc.row.v1215.FlightCapability|nil
function row:GetFlightCapability() end

---Creates a related 'FlightCapability' row and automatically links 'FlightCapabilityID'.
---@param data? table
---@return dbc.row.v1215.FlightCapability
function row:CreateRelated(data) end

---Gets the value of field 'DriveCapabilityID'.
---@return integer value
function row:GetDriveCapabilityID() end

---Sets the value of field 'DriveCapabilityID'.
---@param value integer
---@return dbc.row.v1215.MountCapability self
function row:SetDriveCapabilityID(value) end

---Navigates foreign relationship to 'DriveCapability' via 'DriveCapabilityID'.
---@return dbc.row.v1215.DriveCapability|nil
function row:GetDriveCapability() end

---Creates a related 'DriveCapability' row and automatically links 'DriveCapabilityID'.
---@param data? table
---@return dbc.row.v1215.DriveCapability
function row:CreateRelated(data) end

---Table container for MountCapability (Build 12.1.5.69594).
---@class dbc.Table.v1215.MountCapability : DbcTable
---@field [integer] dbc.row.v1215.MountCapability
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.MountCapability
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.MountCapability|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.MountCapability
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.MountCapability>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.MountCapability[]
function tbl:GetByRelation(foreign_id) end

return {}
