---@meta
-- Generated LuaLS annotations for DecorXDecorSubcategory (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of DecorXDecorSubcategory in build 12.1.5.69594.
---@class dbc.row.v1215.DecorXDecorSubcategory : RowProxy
---@field ID integer
---@field HouseDecorID integer
---@field DecorSubcategoryID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.DecorXDecorSubcategory self
function row:SetID(value) end

---Gets the value of field 'HouseDecorID'.
---@return integer value
function row:GetHouseDecorID() end

---Sets the value of field 'HouseDecorID'.
---@param value integer
---@return dbc.row.v1215.DecorXDecorSubcategory self
function row:SetHouseDecorID(value) end

---Navigates foreign relationship to 'HouseDecor' via 'HouseDecorID'.
---@return dbc.row.v1215.HouseDecor|nil
function row:GetHouseDecor() end

---Creates a related 'HouseDecor' row and automatically links 'HouseDecorID'.
---@param data? table
---@return dbc.row.v1215.HouseDecor
function row:CreateRelated(data) end

---Gets the value of field 'DecorSubcategoryID'.
---@return integer value
function row:GetDecorSubcategoryID() end

---Sets the value of field 'DecorSubcategoryID'.
---@param value integer
---@return dbc.row.v1215.DecorXDecorSubcategory self
function row:SetDecorSubcategoryID(value) end

---Navigates foreign relationship to 'DecorSubcategory' via 'DecorSubcategoryID'.
---@return dbc.row.v1215.DecorSubcategory|nil
function row:GetDecorSubcategory() end

---Creates a related 'DecorSubcategory' row and automatically links 'DecorSubcategoryID'.
---@param data? table
---@return dbc.row.v1215.DecorSubcategory
function row:CreateRelated(data) end

---Table container for DecorXDecorSubcategory (Build 12.1.5.69594).
---@class dbc.Table.v1215.DecorXDecorSubcategory : DbcTable
---@field [integer] dbc.row.v1215.DecorXDecorSubcategory
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.DecorXDecorSubcategory
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.DecorXDecorSubcategory|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.DecorXDecorSubcategory
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.DecorXDecorSubcategory>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.DecorXDecorSubcategory[]
function tbl:GetByRelation(foreign_id) end

return {}
