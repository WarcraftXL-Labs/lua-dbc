---@meta
-- Generated LuaLS annotations for FriendshipRepReaction (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of FriendshipRepReaction in build 12.1.5.69594.
---@class dbc.row.v1215.FriendshipRepReaction : RowProxy
---@field ID integer
---@field Reaction_lang string
---@field FriendshipRepID integer
---@field ReactionThreshold integer
---@field OverrideColor integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.FriendshipRepReaction self
function row:SetID(value) end

---Gets the value of field 'Reaction_lang'.
---@return string value
function row:GetReaction_lang() end

---Sets the value of field 'Reaction_lang'.
---@param value string
---@return dbc.row.v1215.FriendshipRepReaction self
function row:SetReaction_lang(value) end

---Gets the value of field 'FriendshipRepID'.
---@return integer value
function row:GetFriendshipRepID() end

---Sets the value of field 'FriendshipRepID'.
---@param value integer
---@return dbc.row.v1215.FriendshipRepReaction self
function row:SetFriendshipRepID(value) end

---Navigates foreign relationship to 'FriendshipReputation' via 'FriendshipRepID'.
---@return dbc.row.v1215.FriendshipReputation|nil
function row:GetFriendshipRep() end

---Creates a related 'FriendshipReputation' row and automatically links 'FriendshipRepID'.
---@param data? table
---@return dbc.row.v1215.FriendshipReputation
function row:CreateRelated(data) end

---Gets the value of field 'ReactionThreshold'.
---@return integer value
function row:GetReactionThreshold() end

---Sets the value of field 'ReactionThreshold'.
---@param value integer
---@return dbc.row.v1215.FriendshipRepReaction self
function row:SetReactionThreshold(value) end

---Gets the value of field 'OverrideColor'.
---@return integer value
function row:GetOverrideColor() end

---Sets the value of field 'OverrideColor'.
---@param value integer
---@return dbc.row.v1215.FriendshipRepReaction self
function row:SetOverrideColor(value) end

---Table container for FriendshipRepReaction (Build 12.1.5.69594).
---@class dbc.Table.v1215.FriendshipRepReaction : DbcTable
---@field [integer] dbc.row.v1215.FriendshipRepReaction
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.FriendshipRepReaction
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.FriendshipRepReaction|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.FriendshipRepReaction
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.FriendshipRepReaction>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.FriendshipRepReaction[]
function tbl:GetByRelation(foreign_id) end

return {}
