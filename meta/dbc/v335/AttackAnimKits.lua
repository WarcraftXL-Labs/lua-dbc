---@meta
-- Generated LuaLS annotations for AttackAnimKits (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of AttackAnimKits in build 3.3.5.12340.
---@class dbc.row.v335.AttackAnimKits : RowProxy
---@field ID integer
---@field ItemSubclassID integer << likely bad copy and paste job and AnimationDataID instead
---@field AnimTypeID integer
---@field AnimFrequency integer
---@field WhichHand integer &1: Offhand

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.AttackAnimKits self
function row:SetID(value) end

---Gets the value of field 'ItemSubclassID'.
---@return integer value
function row:GetItemSubclassID() end

---Sets the value of field 'ItemSubclassID'.
---@param value integer
---@return dbc.row.v335.AttackAnimKits self
function row:SetItemSubclassID(value) end

---Navigates foreign relationship to 'ItemSubclass' via 'ItemSubclassID'.
---@return dbc.row.v335.ItemSubclass|nil
function row:GetItemSubclass() end

---Creates a related 'ItemSubclass' row and automatically links 'ItemSubclassID'.
---@param data? table
---@return dbc.row.v335.ItemSubclass
function row:CreateRelated(data) end

---Gets the value of field 'AnimTypeID'.
---@return integer value
function row:GetAnimTypeID() end

---Sets the value of field 'AnimTypeID'.
---@param value integer
---@return dbc.row.v335.AttackAnimKits self
function row:SetAnimTypeID(value) end

---Navigates foreign relationship to 'AttackAnimTypes' via 'AnimTypeID'.
---@return dbc.row.v335.AttackAnimTypes|nil
function row:GetAnimType() end

---Creates a related 'AttackAnimTypes' row and automatically links 'AnimTypeID'.
---@param data? table
---@return dbc.row.v335.AttackAnimTypes
function row:CreateRelated(data) end

---Gets the value of field 'AnimFrequency'.
---@return integer value
function row:GetAnimFrequency() end

---Sets the value of field 'AnimFrequency'.
---@param value integer
---@return dbc.row.v335.AttackAnimKits self
function row:SetAnimFrequency(value) end

---Gets the value of field 'WhichHand'.
---@return integer value
function row:GetWhichHand() end

---Sets the value of field 'WhichHand'.
---@param value integer
---@return dbc.row.v335.AttackAnimKits self
function row:SetWhichHand(value) end

---Table container for AttackAnimKits (Build 3.3.5.12340).
---@class dbc.Table.v335.AttackAnimKits : DbcTable
---@field [integer] dbc.row.v335.AttackAnimKits
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.AttackAnimKits
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.AttackAnimKits|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.AttackAnimKits
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.AttackAnimKits>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.AttackAnimKits[]
function tbl:GetByRelation(foreign_id) end

return {}
