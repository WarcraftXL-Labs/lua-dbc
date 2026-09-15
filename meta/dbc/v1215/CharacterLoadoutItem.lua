---@meta
-- Generated LuaLS annotations for CharacterLoadoutItem (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CharacterLoadoutItem in build 12.1.5.69594.
---@class dbc.row.v1215.CharacterLoadoutItem : RowProxy
---@field ID integer
---@field CharacterLoadoutID integer
---@field ItemID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CharacterLoadoutItem self
function row:SetID(value) end

---Gets the value of field 'CharacterLoadoutID'.
---@return integer value
function row:GetCharacterLoadoutID() end

---Sets the value of field 'CharacterLoadoutID'.
---@param value integer
---@return dbc.row.v1215.CharacterLoadoutItem self
function row:SetCharacterLoadoutID(value) end

---Navigates foreign relationship to 'CharacterLoadout' via 'CharacterLoadoutID'.
---@return dbc.row.v1215.CharacterLoadout|nil
function row:GetCharacterLoadout() end

---Creates a related 'CharacterLoadout' row and automatically links 'CharacterLoadoutID'.
---@param data? table
---@return dbc.row.v1215.CharacterLoadout
function row:CreateRelated(data) end

---Gets the value of field 'ItemID'.
---@return integer value
function row:GetItemID() end

---Sets the value of field 'ItemID'.
---@param value integer
---@return dbc.row.v1215.CharacterLoadoutItem self
function row:SetItemID(value) end

---Navigates foreign relationship to 'Item' via 'ItemID'.
---@return dbc.row.v1215.Item|nil
function row:GetItem() end

---Creates a related 'Item' row and automatically links 'ItemID'.
---@param data? table
---@return dbc.row.v1215.Item
function row:CreateRelated(data) end

---Table container for CharacterLoadoutItem (Build 12.1.5.69594).
---@class dbc.Table.v1215.CharacterLoadoutItem : DbcTable
---@field [integer] dbc.row.v1215.CharacterLoadoutItem
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CharacterLoadoutItem
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CharacterLoadoutItem|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CharacterLoadoutItem
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CharacterLoadoutItem>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CharacterLoadoutItem[]
function tbl:GetByRelation(foreign_id) end

return {}
