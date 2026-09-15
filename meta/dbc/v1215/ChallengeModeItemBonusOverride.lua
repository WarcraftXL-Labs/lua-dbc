---@meta
-- Generated LuaLS annotations for ChallengeModeItemBonusOverride (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ChallengeModeItemBonusOverride in build 12.1.5.69594.
---@class dbc.row.v1215.ChallengeModeItemBonusOverride : RowProxy
---@field ID integer
---@field ItemBonusTreeGroupID integer
---@field DstItemBonusTreeID integer
---@field Value integer Type == MythicPlus => keystone level, Type == Pvp => PvpTier
---@field RequiredTimeEventPassed integer TimeEvent?
---@field RequiredTimeEventNotPassed integer TimeEvent?
---@field SrcItemBonusTreeID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ChallengeModeItemBonusOverride self
function row:SetID(value) end

---Gets the value of field 'ItemBonusTreeGroupID'.
---@return integer value
function row:GetItemBonusTreeGroupID() end

---Sets the value of field 'ItemBonusTreeGroupID'.
---@param value integer
---@return dbc.row.v1215.ChallengeModeItemBonusOverride self
function row:SetItemBonusTreeGroupID(value) end

---Navigates foreign relationship to 'ItemBonusTreeGroup' via 'ItemBonusTreeGroupID'.
---@return dbc.row.v1215.ItemBonusTreeGroup|nil
function row:GetItemBonusTreeGroup() end

---Creates a related 'ItemBonusTreeGroup' row and automatically links 'ItemBonusTreeGroupID'.
---@param data? table
---@return dbc.row.v1215.ItemBonusTreeGroup
function row:CreateRelated(data) end

---Gets the value of field 'DstItemBonusTreeID'.
---@return integer value
function row:GetDstItemBonusTreeID() end

---Sets the value of field 'DstItemBonusTreeID'.
---@param value integer
---@return dbc.row.v1215.ChallengeModeItemBonusOverride self
function row:SetDstItemBonusTreeID(value) end

---Navigates foreign relationship to 'ItemBonusTree' via 'DstItemBonusTreeID'.
---@return dbc.row.v1215.ItemBonusTree|nil
function row:GetDstItemBonusTree() end

---Creates a related 'ItemBonusTree' row and automatically links 'DstItemBonusTreeID'.
---@param data? table
---@return dbc.row.v1215.ItemBonusTree
function row:CreateRelated(data) end

---Gets the value of field 'Value'.
---@return integer value
function row:GetValue() end

---Sets the value of field 'Value'.
---@param value integer
---@return dbc.row.v1215.ChallengeModeItemBonusOverride self
function row:SetValue(value) end

---Gets the value of field 'RequiredTimeEventPassed'.
---@return integer value
function row:GetRequiredTimeEventPassed() end

---Sets the value of field 'RequiredTimeEventPassed'.
---@param value integer
---@return dbc.row.v1215.ChallengeModeItemBonusOverride self
function row:SetRequiredTimeEventPassed(value) end

---Gets the value of field 'RequiredTimeEventNotPassed'.
---@return integer value
function row:GetRequiredTimeEventNotPassed() end

---Sets the value of field 'RequiredTimeEventNotPassed'.
---@param value integer
---@return dbc.row.v1215.ChallengeModeItemBonusOverride self
function row:SetRequiredTimeEventNotPassed(value) end

---Gets the value of field 'SrcItemBonusTreeID'.
---@return integer value
function row:GetSrcItemBonusTreeID() end

---Sets the value of field 'SrcItemBonusTreeID'.
---@param value integer
---@return dbc.row.v1215.ChallengeModeItemBonusOverride self
function row:SetSrcItemBonusTreeID(value) end

---Navigates foreign relationship to 'ItemBonusTree' via 'SrcItemBonusTreeID'.
---@return dbc.row.v1215.ItemBonusTree|nil
function row:GetSrcItemBonusTree() end

---Creates a related 'ItemBonusTree' row and automatically links 'SrcItemBonusTreeID'.
---@param data? table
---@return dbc.row.v1215.ItemBonusTree
function row:CreateRelated(data) end

---Table container for ChallengeModeItemBonusOverride (Build 12.1.5.69594).
---@class dbc.Table.v1215.ChallengeModeItemBonusOverride : DbcTable
---@field [integer] dbc.row.v1215.ChallengeModeItemBonusOverride
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ChallengeModeItemBonusOverride
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ChallengeModeItemBonusOverride|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ChallengeModeItemBonusOverride
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ChallengeModeItemBonusOverride>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ChallengeModeItemBonusOverride[]
function tbl:GetByRelation(foreign_id) end

return {}
