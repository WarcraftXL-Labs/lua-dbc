---@meta
-- Generated LuaLS annotations for Item (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of Item in build 3.3.5.12340.
---@class dbc.row.v335.Item : RowProxy
---@field ID integer
---@field ClassID integer
---@field SubclassID integer
---@field Sound_override_subclassID integer
---@field Material integer
---@field DisplayInfoID integer
---@field InventoryType integer
---@field SheatheType integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.Item self
function row:SetID(value) end

---Gets the value of field 'ClassID'.
---@return integer value
function row:GetClassID() end

---Sets the value of field 'ClassID'.
---@param value integer
---@return dbc.row.v335.Item self
function row:SetClassID(value) end

---Navigates foreign relationship to 'ItemClass' via 'ClassID'.
---@return dbc.row.v335.ItemClass|nil
function row:GetClass() end

---Creates a related 'ItemClass' row and automatically links 'ClassID'.
---@param data? table
---@return dbc.row.v335.ItemClass
function row:CreateRelated(data) end

---Gets the value of field 'SubclassID'.
---@return integer value
function row:GetSubclassID() end

---Sets the value of field 'SubclassID'.
---@param value integer
---@return dbc.row.v335.Item self
function row:SetSubclassID(value) end

---Navigates foreign relationship to 'Subclass' via 'SubclassID'.
---@return dbc.row.v335.Subclass|nil
function row:GetSubclass() end

---Creates a related 'Subclass' row and automatically links 'SubclassID'.
---@param data? table
---@return dbc.row.v335.Subclass
function row:CreateRelated(data) end

---Gets the value of field 'Sound_override_subclassID'.
---@return integer value
function row:GetSound_override_subclassID() end

---Sets the value of field 'Sound_override_subclassID'.
---@param value integer
---@return dbc.row.v335.Item self
function row:SetSound_override_subclassID(value) end

---Navigates foreign relationship to 'Sound_override_subclass' via 'Sound_override_subclassID'.
---@return dbc.row.v335.Sound_override_subclass|nil
function row:GetSound_override_subclass() end

---Creates a related 'Sound_override_subclass' row and automatically links 'Sound_override_subclassID'.
---@param data? table
---@return dbc.row.v335.Sound_override_subclass
function row:CreateRelated(data) end

---Gets the value of field 'Material'.
---@return integer value
function row:GetMaterial() end

---Sets the value of field 'Material'.
---@param value integer
---@return dbc.row.v335.Item self
function row:SetMaterial(value) end

---Navigates foreign relationship to 'Material' via 'Material'.
---@return dbc.row.v335.Material|nil
function row:GetMaterial() end

---Creates a related 'Material' row and automatically links 'Material'.
---@param data? table
---@return dbc.row.v335.Material
function row:CreateRelated(data) end

---Gets the value of field 'DisplayInfoID'.
---@return integer value
function row:GetDisplayInfoID() end

---Sets the value of field 'DisplayInfoID'.
---@param value integer
---@return dbc.row.v335.Item self
function row:SetDisplayInfoID(value) end

---Navigates foreign relationship to 'DisplayInfo' via 'DisplayInfoID'.
---@return dbc.row.v335.DisplayInfo|nil
function row:GetDisplayInfo() end

---Creates a related 'DisplayInfo' row and automatically links 'DisplayInfoID'.
---@param data? table
---@return dbc.row.v335.DisplayInfo
function row:CreateRelated(data) end

---Gets the value of field 'InventoryType'.
---@return integer value
function row:GetInventoryType() end

---Sets the value of field 'InventoryType'.
---@param value integer
---@return dbc.row.v335.Item self
function row:SetInventoryType(value) end

---Gets the value of field 'SheatheType'.
---@return integer value
function row:GetSheatheType() end

---Sets the value of field 'SheatheType'.
---@param value integer
---@return dbc.row.v335.Item self
function row:SetSheatheType(value) end

---Table container for Item (Build 3.3.5.12340).
---@class dbc.Table.v335.Item : DbcTable
---@field [integer] dbc.row.v335.Item
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.Item
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.Item|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.Item
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.Item>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.Item[]
function tbl:GetByRelation(foreign_id) end

return {}
