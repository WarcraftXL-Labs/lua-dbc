---@meta
-- Generated LuaLS annotations for NPCModelItemSlotDisplayInfo (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of NPCModelItemSlotDisplayInfo in build 12.1.5.69594.
---@class dbc.row.v1215.NPCModelItemSlotDisplayInfo : RowProxy
---@field ID integer
---@field ItemDisplayInfoID integer
---@field ItemSlot integer
---@field NpcModelID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.NPCModelItemSlotDisplayInfo self
function row:SetID(value) end

---Gets the value of field 'ItemDisplayInfoID'.
---@return integer value
function row:GetItemDisplayInfoID() end

---Sets the value of field 'ItemDisplayInfoID'.
---@param value integer
---@return dbc.row.v1215.NPCModelItemSlotDisplayInfo self
function row:SetItemDisplayInfoID(value) end

---Navigates foreign relationship to 'ItemDisplayInfo' via 'ItemDisplayInfoID'.
---@return dbc.row.v1215.ItemDisplayInfo|nil
function row:GetItemDisplayInfo() end

---Creates a related 'ItemDisplayInfo' row and automatically links 'ItemDisplayInfoID'.
---@param data? table
---@return dbc.row.v1215.ItemDisplayInfo
function row:CreateRelated(data) end

---Gets the value of field 'ItemSlot'.
---@return integer value
function row:GetItemSlot() end

---Sets the value of field 'ItemSlot'.
---@param value integer
---@return dbc.row.v1215.NPCModelItemSlotDisplayInfo self
function row:SetItemSlot(value) end

---Gets the value of field 'NpcModelID'.
---@return integer value
function row:GetNpcModelID() end

---Sets the value of field 'NpcModelID'.
---@param value integer
---@return dbc.row.v1215.NPCModelItemSlotDisplayInfo self
function row:SetNpcModelID(value) end

---Navigates foreign relationship to 'CreatureDisplayInfoExtra' via 'NpcModelID'.
---@return dbc.row.v1215.CreatureDisplayInfoExtra|nil
function row:GetNpcModel() end

---Creates a related 'CreatureDisplayInfoExtra' row and automatically links 'NpcModelID'.
---@param data? table
---@return dbc.row.v1215.CreatureDisplayInfoExtra
function row:CreateRelated(data) end

---Table container for NPCModelItemSlotDisplayInfo (Build 12.1.5.69594).
---@class dbc.Table.v1215.NPCModelItemSlotDisplayInfo : DbcTable
---@field [integer] dbc.row.v1215.NPCModelItemSlotDisplayInfo
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.NPCModelItemSlotDisplayInfo
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.NPCModelItemSlotDisplayInfo|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.NPCModelItemSlotDisplayInfo
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.NPCModelItemSlotDisplayInfo>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.NPCModelItemSlotDisplayInfo[]
function tbl:GetByRelation(foreign_id) end

return {}
