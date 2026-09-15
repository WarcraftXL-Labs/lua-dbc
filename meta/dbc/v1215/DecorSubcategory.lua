---@meta
-- Generated LuaLS annotations for DecorSubcategory (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of DecorSubcategory in build 12.1.5.69594.
---@class dbc.row.v1215.DecorSubcategory : RowProxy
---@field Name_lang string
---@field ID integer
---@field UiTextureAtlasElementID integer
---@field DecorCategoryID integer
---@field OrderIndex integer

local row = {}

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.DecorSubcategory self
function row:SetName_lang(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.DecorSubcategory self
function row:SetID(value) end

---Gets the value of field 'UiTextureAtlasElementID'.
---@return integer value
function row:GetUiTextureAtlasElementID() end

---Sets the value of field 'UiTextureAtlasElementID'.
---@param value integer
---@return dbc.row.v1215.DecorSubcategory self
function row:SetUiTextureAtlasElementID(value) end

---Navigates foreign relationship to 'UiTextureAtlasElement' via 'UiTextureAtlasElementID'.
---@return dbc.row.v1215.UiTextureAtlasElement|nil
function row:GetUiTextureAtlasElement() end

---Creates a related 'UiTextureAtlasElement' row and automatically links 'UiTextureAtlasElementID'.
---@param data? table
---@return dbc.row.v1215.UiTextureAtlasElement
function row:CreateRelated(data) end

---Gets the value of field 'DecorCategoryID'.
---@return integer value
function row:GetDecorCategoryID() end

---Sets the value of field 'DecorCategoryID'.
---@param value integer
---@return dbc.row.v1215.DecorSubcategory self
function row:SetDecorCategoryID(value) end

---Navigates foreign relationship to 'DecorCategory' via 'DecorCategoryID'.
---@return dbc.row.v1215.DecorCategory|nil
function row:GetDecorCategory() end

---Creates a related 'DecorCategory' row and automatically links 'DecorCategoryID'.
---@param data? table
---@return dbc.row.v1215.DecorCategory
function row:CreateRelated(data) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.DecorSubcategory self
function row:SetOrderIndex(value) end

---Table container for DecorSubcategory (Build 12.1.5.69594).
---@class dbc.Table.v1215.DecorSubcategory : DbcTable
---@field [integer] dbc.row.v1215.DecorSubcategory
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.DecorSubcategory
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.DecorSubcategory|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.DecorSubcategory
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.DecorSubcategory>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.DecorSubcategory[]
function tbl:GetByRelation(foreign_id) end

return {}
