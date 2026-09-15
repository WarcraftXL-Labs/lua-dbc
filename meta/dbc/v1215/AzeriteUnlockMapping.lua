---@meta
-- Generated LuaLS annotations for AzeriteUnlockMapping (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of AzeriteUnlockMapping in build 12.1.5.69594.
---@class dbc.row.v1215.AzeriteUnlockMapping : RowProxy
---@field ID integer
---@field MinItemLevel integer
---@field HeadBonus integer
---@field ShoulderBonus integer
---@field ChestBonus integer also Robe
---@field SetID integer used as index via ItemLevelSelector

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.AzeriteUnlockMapping self
function row:SetID(value) end

---Gets the value of field 'MinItemLevel'.
---@return integer value
function row:GetMinItemLevel() end

---Sets the value of field 'MinItemLevel'.
---@param value integer
---@return dbc.row.v1215.AzeriteUnlockMapping self
function row:SetMinItemLevel(value) end

---Gets the value of field 'HeadBonus'.
---@return integer value
function row:GetHeadBonus() end

---Sets the value of field 'HeadBonus'.
---@param value integer
---@return dbc.row.v1215.AzeriteUnlockMapping self
function row:SetHeadBonus(value) end

---Navigates foreign relationship to 'ItemBonusList' via 'HeadBonus'.
---@return dbc.row.v1215.ItemBonusList|nil
function row:GetHeadBonus() end

---Creates a related 'ItemBonusList' row and automatically links 'HeadBonus'.
---@param data? table
---@return dbc.row.v1215.ItemBonusList
function row:CreateRelated(data) end

---Gets the value of field 'ShoulderBonus'.
---@return integer value
function row:GetShoulderBonus() end

---Sets the value of field 'ShoulderBonus'.
---@param value integer
---@return dbc.row.v1215.AzeriteUnlockMapping self
function row:SetShoulderBonus(value) end

---Navigates foreign relationship to 'ItemBonusList' via 'ShoulderBonus'.
---@return dbc.row.v1215.ItemBonusList|nil
function row:GetShoulderBonus() end

---Creates a related 'ItemBonusList' row and automatically links 'ShoulderBonus'.
---@param data? table
---@return dbc.row.v1215.ItemBonusList
function row:CreateRelated(data) end

---Gets the value of field 'ChestBonus'.
---@return integer value
function row:GetChestBonus() end

---Sets the value of field 'ChestBonus'.
---@param value integer
---@return dbc.row.v1215.AzeriteUnlockMapping self
function row:SetChestBonus(value) end

---Navigates foreign relationship to 'ItemBonusList' via 'ChestBonus'.
---@return dbc.row.v1215.ItemBonusList|nil
function row:GetChestBonus() end

---Creates a related 'ItemBonusList' row and automatically links 'ChestBonus'.
---@param data? table
---@return dbc.row.v1215.ItemBonusList
function row:CreateRelated(data) end

---Gets the value of field 'SetID'.
---@return integer value
function row:GetSetID() end

---Sets the value of field 'SetID'.
---@param value integer
---@return dbc.row.v1215.AzeriteUnlockMapping self
function row:SetSetID(value) end

---Navigates foreign relationship to 'Set' via 'SetID'.
---@return dbc.row.v1215.Set|nil
function row:GetSet() end

---Creates a related 'Set' row and automatically links 'SetID'.
---@param data? table
---@return dbc.row.v1215.Set
function row:CreateRelated(data) end

---Table container for AzeriteUnlockMapping (Build 12.1.5.69594).
---@class dbc.Table.v1215.AzeriteUnlockMapping : DbcTable
---@field [integer] dbc.row.v1215.AzeriteUnlockMapping
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.AzeriteUnlockMapping
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.AzeriteUnlockMapping|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.AzeriteUnlockMapping
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.AzeriteUnlockMapping>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.AzeriteUnlockMapping[]
function tbl:GetByRelation(foreign_id) end

return {}
