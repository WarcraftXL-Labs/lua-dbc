---@meta
-- Generated LuaLS annotations for Faction (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of Faction in build 12.1.5.69594.
---@class dbc.row.v1215.Faction : RowProxy
---@field ID integer
---@field Name_lang string
---@field Description_lang string
---@field ReputationIndex integer
---@field ParentFactionID integer
---@field Expansion integer
---@field FriendshipRepID integer
---@field Flags integer
---@field ParagonFactionID integer
---@field RenownFactionID integer
---@field RenownCurrencyID integer
---@field ReputationClassMask integer[]
---@field ReputationFlags integer[]
---@field ReputationBase integer[]
---@field ReputationMax integer[]
---@field ParentFactionMod number[]
---@field ParentFactionCap integer[]
---@field ReputationRaceMasks0 integer[]
---@field ReputationRaceMasks1 integer[]
---@field ReputationRaceMasks2 integer[]
---@field ReputationRaceMasks3 integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.Faction self
function row:SetID(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.Faction self
function row:SetName_lang(value) end

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v1215.Faction self
function row:SetDescription_lang(value) end

---Gets the value of field 'ReputationIndex'.
---@return integer value
function row:GetReputationIndex() end

---Sets the value of field 'ReputationIndex'.
---@param value integer
---@return dbc.row.v1215.Faction self
function row:SetReputationIndex(value) end

---Gets the value of field 'ParentFactionID'.
---@return integer value
function row:GetParentFactionID() end

---Sets the value of field 'ParentFactionID'.
---@param value integer
---@return dbc.row.v1215.Faction self
function row:SetParentFactionID(value) end

---Navigates foreign relationship to 'Faction' via 'ParentFactionID'.
---@return dbc.row.v1215.Faction|nil
function row:GetParentFaction() end

---Creates a related 'Faction' row and automatically links 'ParentFactionID'.
---@param data? table
---@return dbc.row.v1215.Faction
function row:CreateRelated(data) end

---Gets the value of field 'Expansion'.
---@return integer value
function row:GetExpansion() end

---Sets the value of field 'Expansion'.
---@param value integer
---@return dbc.row.v1215.Faction self
function row:SetExpansion(value) end

---Gets the value of field 'FriendshipRepID'.
---@return integer value
function row:GetFriendshipRepID() end

---Sets the value of field 'FriendshipRepID'.
---@param value integer
---@return dbc.row.v1215.Faction self
function row:SetFriendshipRepID(value) end

---Navigates foreign relationship to 'FriendshipReputation' via 'FriendshipRepID'.
---@return dbc.row.v1215.FriendshipReputation|nil
function row:GetFriendshipRep() end

---Creates a related 'FriendshipReputation' row and automatically links 'FriendshipRepID'.
---@param data? table
---@return dbc.row.v1215.FriendshipReputation
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.Faction self
function row:SetFlags(value) end

---Gets the value of field 'ParagonFactionID'.
---@return integer value
function row:GetParagonFactionID() end

---Sets the value of field 'ParagonFactionID'.
---@param value integer
---@return dbc.row.v1215.Faction self
function row:SetParagonFactionID(value) end

---Navigates foreign relationship to 'Faction' via 'ParagonFactionID'.
---@return dbc.row.v1215.Faction|nil
function row:GetParagonFaction() end

---Creates a related 'Faction' row and automatically links 'ParagonFactionID'.
---@param data? table
---@return dbc.row.v1215.Faction
function row:CreateRelated(data) end

---Gets the value of field 'RenownFactionID'.
---@return integer value
function row:GetRenownFactionID() end

---Sets the value of field 'RenownFactionID'.
---@param value integer
---@return dbc.row.v1215.Faction self
function row:SetRenownFactionID(value) end

---Navigates foreign relationship to 'Faction' via 'RenownFactionID'.
---@return dbc.row.v1215.Faction|nil
function row:GetRenownFaction() end

---Creates a related 'Faction' row and automatically links 'RenownFactionID'.
---@param data? table
---@return dbc.row.v1215.Faction
function row:CreateRelated(data) end

---Gets the value of field 'RenownCurrencyID'.
---@return integer value
function row:GetRenownCurrencyID() end

---Sets the value of field 'RenownCurrencyID'.
---@param value integer
---@return dbc.row.v1215.Faction self
function row:SetRenownCurrencyID(value) end

---Navigates foreign relationship to 'CurrencyTypes' via 'RenownCurrencyID'.
---@return dbc.row.v1215.CurrencyTypes|nil
function row:GetRenownCurrency() end

---Creates a related 'CurrencyTypes' row and automatically links 'RenownCurrencyID'.
---@param data? table
---@return dbc.row.v1215.CurrencyTypes
function row:CreateRelated(data) end

---Gets the value of field 'ReputationClassMask'.
---@return integer[] value
function row:GetReputationClassMask() end

---Sets the value of field 'ReputationClassMask'.
---@param value integer[]
---@return dbc.row.v1215.Faction self
function row:SetReputationClassMask(value) end

---Gets element at 1-based index in 'ReputationClassMask'.
---@param index integer
---@return integer value
function row:GetReputationClassMaskItem(index) end

---Gets the value of field 'ReputationFlags'.
---@return integer[] value
function row:GetReputationFlags() end

---Sets the value of field 'ReputationFlags'.
---@param value integer[]
---@return dbc.row.v1215.Faction self
function row:SetReputationFlags(value) end

---Gets element at 1-based index in 'ReputationFlags'.
---@param index integer
---@return integer value
function row:GetReputationFlagsItem(index) end

---Gets the value of field 'ReputationBase'.
---@return integer[] value
function row:GetReputationBase() end

---Sets the value of field 'ReputationBase'.
---@param value integer[]
---@return dbc.row.v1215.Faction self
function row:SetReputationBase(value) end

---Gets element at 1-based index in 'ReputationBase'.
---@param index integer
---@return integer value
function row:GetReputationBaseItem(index) end

---Gets the value of field 'ReputationMax'.
---@return integer[] value
function row:GetReputationMax() end

---Sets the value of field 'ReputationMax'.
---@param value integer[]
---@return dbc.row.v1215.Faction self
function row:SetReputationMax(value) end

---Gets element at 1-based index in 'ReputationMax'.
---@param index integer
---@return integer value
function row:GetReputationMaxItem(index) end

---Gets the value of field 'ParentFactionMod'.
---@return number[] value
function row:GetParentFactionMod() end

---Sets the value of field 'ParentFactionMod'.
---@param value number[]
---@return dbc.row.v1215.Faction self
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
---@return dbc.row.v1215.Faction self
function row:SetParentFactionCap(value) end

---Gets element at 1-based index in 'ParentFactionCap'.
---@param index integer
---@return integer value
function row:GetParentFactionCapItem(index) end

---Gets the value of field 'ReputationRaceMasks0'.
---@return integer[] value
function row:GetReputationRaceMasks0() end

---Sets the value of field 'ReputationRaceMasks0'.
---@param value integer[]
---@return dbc.row.v1215.Faction self
function row:SetReputationRaceMasks0(value) end

---Gets element at 1-based index in 'ReputationRaceMasks0'.
---@param index integer
---@return integer value
function row:GetReputationRaceMasks0Item(index) end

---Gets the value of field 'ReputationRaceMasks1'.
---@return integer[] value
function row:GetReputationRaceMasks1() end

---Sets the value of field 'ReputationRaceMasks1'.
---@param value integer[]
---@return dbc.row.v1215.Faction self
function row:SetReputationRaceMasks1(value) end

---Gets element at 1-based index in 'ReputationRaceMasks1'.
---@param index integer
---@return integer value
function row:GetReputationRaceMasks1Item(index) end

---Gets the value of field 'ReputationRaceMasks2'.
---@return integer[] value
function row:GetReputationRaceMasks2() end

---Sets the value of field 'ReputationRaceMasks2'.
---@param value integer[]
---@return dbc.row.v1215.Faction self
function row:SetReputationRaceMasks2(value) end

---Gets element at 1-based index in 'ReputationRaceMasks2'.
---@param index integer
---@return integer value
function row:GetReputationRaceMasks2Item(index) end

---Gets the value of field 'ReputationRaceMasks3'.
---@return integer[] value
function row:GetReputationRaceMasks3() end

---Sets the value of field 'ReputationRaceMasks3'.
---@param value integer[]
---@return dbc.row.v1215.Faction self
function row:SetReputationRaceMasks3(value) end

---Gets element at 1-based index in 'ReputationRaceMasks3'.
---@param index integer
---@return integer value
function row:GetReputationRaceMasks3Item(index) end

---Table container for Faction (Build 12.1.5.69594).
---@class dbc.Table.v1215.Faction : DbcTable
---@field [integer] dbc.row.v1215.Faction
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.Faction
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.Faction|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.Faction
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.Faction>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.Faction[]
function tbl:GetByRelation(foreign_id) end

return {}
