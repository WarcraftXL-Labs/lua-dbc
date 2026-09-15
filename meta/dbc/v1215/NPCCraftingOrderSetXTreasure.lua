---@meta
-- Generated LuaLS annotations for NPCCraftingOrderSetXTreasure (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of NPCCraftingOrderSetXTreasure in build 12.1.5.69594.
---@class dbc.row.v1215.NPCCraftingOrderSetXTreasure : RowProxy
---@field ID integer
---@field TreasureID integer
---@field RollChance integer
---@field Field_11_0_0_55000_002 integer
---@field NPCCraftingOrderSetID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.NPCCraftingOrderSetXTreasure self
function row:SetID(value) end

---Gets the value of field 'TreasureID'.
---@return integer value
function row:GetTreasureID() end

---Sets the value of field 'TreasureID'.
---@param value integer
---@return dbc.row.v1215.NPCCraftingOrderSetXTreasure self
function row:SetTreasureID(value) end

---Navigates foreign relationship to 'Treasure' via 'TreasureID'.
---@return dbc.row.v1215.Treasure|nil
function row:GetTreasure() end

---Creates a related 'Treasure' row and automatically links 'TreasureID'.
---@param data? table
---@return dbc.row.v1215.Treasure
function row:CreateRelated(data) end

---Gets the value of field 'RollChance'.
---@return integer value
function row:GetRollChance() end

---Sets the value of field 'RollChance'.
---@param value integer
---@return dbc.row.v1215.NPCCraftingOrderSetXTreasure self
function row:SetRollChance(value) end

---Gets the value of field 'Field_11_0_0_55000_002'.
---@return integer value
function row:GetField_11_0_0_55000_002() end

---Sets the value of field 'Field_11_0_0_55000_002'.
---@param value integer
---@return dbc.row.v1215.NPCCraftingOrderSetXTreasure self
function row:SetField_11_0_0_55000_002(value) end

---Gets the value of field 'NPCCraftingOrderSetID'.
---@return integer value
function row:GetNPCCraftingOrderSetID() end

---Sets the value of field 'NPCCraftingOrderSetID'.
---@param value integer
---@return dbc.row.v1215.NPCCraftingOrderSetXTreasure self
function row:SetNPCCraftingOrderSetID(value) end

---Navigates foreign relationship to 'NPCCraftingOrderSet' via 'NPCCraftingOrderSetID'.
---@return dbc.row.v1215.NPCCraftingOrderSet|nil
function row:GetNPCCraftingOrderSet() end

---Creates a related 'NPCCraftingOrderSet' row and automatically links 'NPCCraftingOrderSetID'.
---@param data? table
---@return dbc.row.v1215.NPCCraftingOrderSet
function row:CreateRelated(data) end

---Table container for NPCCraftingOrderSetXTreasure (Build 12.1.5.69594).
---@class dbc.Table.v1215.NPCCraftingOrderSetXTreasure : DbcTable
---@field [integer] dbc.row.v1215.NPCCraftingOrderSetXTreasure
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.NPCCraftingOrderSetXTreasure
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.NPCCraftingOrderSetXTreasure|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.NPCCraftingOrderSetXTreasure
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.NPCCraftingOrderSetXTreasure>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.NPCCraftingOrderSetXTreasure[]
function tbl:GetByRelation(foreign_id) end

return {}
