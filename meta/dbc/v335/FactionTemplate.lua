---@meta
-- Generated LuaLS annotations for FactionTemplate (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of FactionTemplate in build 3.3.5.12340.
---@class dbc.row.v335.FactionTemplate : RowProxy
---@field ID integer
---@field Faction integer
---@field Flags integer
---@field FactionGroup integer
---@field FriendGroup integer
---@field EnemyGroup integer
---@field Enemies integer[]
---@field Friend integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.FactionTemplate self
function row:SetID(value) end

---Gets the value of field 'Faction'.
---@return integer value
function row:GetFaction() end

---Sets the value of field 'Faction'.
---@param value integer
---@return dbc.row.v335.FactionTemplate self
function row:SetFaction(value) end

---Navigates foreign relationship to 'Faction' via 'Faction'.
---@return dbc.row.v335.Faction|nil
function row:GetFaction() end

---Creates a related 'Faction' row and automatically links 'Faction'.
---@param data? table
---@return dbc.row.v335.Faction
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v335.FactionTemplate self
function row:SetFlags(value) end

---Gets the value of field 'FactionGroup'.
---@return integer value
function row:GetFactionGroup() end

---Sets the value of field 'FactionGroup'.
---@param value integer
---@return dbc.row.v335.FactionTemplate self
function row:SetFactionGroup(value) end

---Navigates foreign relationship to 'FactionGroup' via 'FactionGroup'.
---@return dbc.row.v335.FactionGroup|nil
function row:GetFactionGroup() end

---Creates a related 'FactionGroup' row and automatically links 'FactionGroup'.
---@param data? table
---@return dbc.row.v335.FactionGroup
function row:CreateRelated(data) end

---Gets the value of field 'FriendGroup'.
---@return integer value
function row:GetFriendGroup() end

---Sets the value of field 'FriendGroup'.
---@param value integer
---@return dbc.row.v335.FactionTemplate self
function row:SetFriendGroup(value) end

---Gets the value of field 'EnemyGroup'.
---@return integer value
function row:GetEnemyGroup() end

---Sets the value of field 'EnemyGroup'.
---@param value integer
---@return dbc.row.v335.FactionTemplate self
function row:SetEnemyGroup(value) end

---Gets the value of field 'Enemies'.
---@return integer[] value
function row:GetEnemies() end

---Sets the value of field 'Enemies'.
---@param value integer[]
---@return dbc.row.v335.FactionTemplate self
function row:SetEnemies(value) end

---Gets element at 1-based index in 'Enemies'.
---@param index integer
---@return integer value
function row:GetEnemiesItem(index) end

---Navigates foreign relationship to 'Faction' via 'Enemies'.
---@return dbc.row.v335.Faction|nil
function row:GetEnemies() end

---Creates a related 'Faction' row and automatically links 'Enemies'.
---@param data? table
---@return dbc.row.v335.Faction
function row:CreateRelated(data) end

---Gets the value of field 'Friend'.
---@return integer[] value
function row:GetFriend() end

---Sets the value of field 'Friend'.
---@param value integer[]
---@return dbc.row.v335.FactionTemplate self
function row:SetFriend(value) end

---Gets element at 1-based index in 'Friend'.
---@param index integer
---@return integer value
function row:GetFriendItem(index) end

---Navigates foreign relationship to 'Faction' via 'Friend'.
---@return dbc.row.v335.Faction|nil
function row:GetFriend() end

---Creates a related 'Faction' row and automatically links 'Friend'.
---@param data? table
---@return dbc.row.v335.Faction
function row:CreateRelated(data) end

---Table container for FactionTemplate (Build 3.3.5.12340).
---@class dbc.Table.v335.FactionTemplate : DbcTable
---@field [integer] dbc.row.v335.FactionTemplate
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.FactionTemplate
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.FactionTemplate|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.FactionTemplate
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.FactionTemplate>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.FactionTemplate[]
function tbl:GetByRelation(foreign_id) end

return {}
