---@meta
-- Generated LuaLS annotations for DecorDyeSlot (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of DecorDyeSlot in build 12.1.5.69594.
---@class dbc.row.v1215.DecorDyeSlot : RowProxy
---@field ID integer
---@field DyeColorCategoryID integer
---@field HouseDecorID integer
---@field OrderIndex integer
---@field Channel integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.DecorDyeSlot self
function row:SetID(value) end

---Gets the value of field 'DyeColorCategoryID'.
---@return integer value
function row:GetDyeColorCategoryID() end

---Sets the value of field 'DyeColorCategoryID'.
---@param value integer
---@return dbc.row.v1215.DecorDyeSlot self
function row:SetDyeColorCategoryID(value) end

---Navigates foreign relationship to 'DyeColorCategory' via 'DyeColorCategoryID'.
---@return dbc.row.v1215.DyeColorCategory|nil
function row:GetDyeColorCategory() end

---Creates a related 'DyeColorCategory' row and automatically links 'DyeColorCategoryID'.
---@param data? table
---@return dbc.row.v1215.DyeColorCategory
function row:CreateRelated(data) end

---Gets the value of field 'HouseDecorID'.
---@return integer value
function row:GetHouseDecorID() end

---Sets the value of field 'HouseDecorID'.
---@param value integer
---@return dbc.row.v1215.DecorDyeSlot self
function row:SetHouseDecorID(value) end

---Navigates foreign relationship to 'HouseDecor' via 'HouseDecorID'.
---@return dbc.row.v1215.HouseDecor|nil
function row:GetHouseDecor() end

---Creates a related 'HouseDecor' row and automatically links 'HouseDecorID'.
---@param data? table
---@return dbc.row.v1215.HouseDecor
function row:CreateRelated(data) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.DecorDyeSlot self
function row:SetOrderIndex(value) end

---Gets the value of field 'Channel'.
---@return integer value
function row:GetChannel() end

---Sets the value of field 'Channel'.
---@param value integer
---@return dbc.row.v1215.DecorDyeSlot self
function row:SetChannel(value) end

---Table container for DecorDyeSlot (Build 12.1.5.69594).
---@class dbc.Table.v1215.DecorDyeSlot : DbcTable
---@field [integer] dbc.row.v1215.DecorDyeSlot
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.DecorDyeSlot
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.DecorDyeSlot|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.DecorDyeSlot
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.DecorDyeSlot>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.DecorDyeSlot[]
function tbl:GetByRelation(foreign_id) end

return {}
