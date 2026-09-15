---@meta
-- Generated LuaLS annotations for DyeColor (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of DyeColor in build 12.1.5.69594.
---@class dbc.row.v1215.DyeColor : RowProxy
---@field Name_lang string
---@field ID integer
---@field DyeColorCategoryID integer
---@field GradientTextureIndex integer Something close to the M2. Essentially direclty passed to CM2Model
---@field ItemID integer
---@field SwatchColorStart integer
---@field SwatchColorEnd integer
---@field SortOrder integer

local row = {}

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.DyeColor self
function row:SetName_lang(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.DyeColor self
function row:SetID(value) end

---Gets the value of field 'DyeColorCategoryID'.
---@return integer value
function row:GetDyeColorCategoryID() end

---Sets the value of field 'DyeColorCategoryID'.
---@param value integer
---@return dbc.row.v1215.DyeColor self
function row:SetDyeColorCategoryID(value) end

---Navigates foreign relationship to 'DyeColorCategory' via 'DyeColorCategoryID'.
---@return dbc.row.v1215.DyeColorCategory|nil
function row:GetDyeColorCategory() end

---Creates a related 'DyeColorCategory' row and automatically links 'DyeColorCategoryID'.
---@param data? table
---@return dbc.row.v1215.DyeColorCategory
function row:CreateRelated(data) end

---Gets the value of field 'GradientTextureIndex'.
---@return integer value
function row:GetGradientTextureIndex() end

---Sets the value of field 'GradientTextureIndex'.
---@param value integer
---@return dbc.row.v1215.DyeColor self
function row:SetGradientTextureIndex(value) end

---Gets the value of field 'ItemID'.
---@return integer value
function row:GetItemID() end

---Sets the value of field 'ItemID'.
---@param value integer
---@return dbc.row.v1215.DyeColor self
function row:SetItemID(value) end

---Navigates foreign relationship to 'Item' via 'ItemID'.
---@return dbc.row.v1215.Item|nil
function row:GetItem() end

---Creates a related 'Item' row and automatically links 'ItemID'.
---@param data? table
---@return dbc.row.v1215.Item
function row:CreateRelated(data) end

---Gets the value of field 'SwatchColorStart'.
---@return integer value
function row:GetSwatchColorStart() end

---Sets the value of field 'SwatchColorStart'.
---@param value integer
---@return dbc.row.v1215.DyeColor self
function row:SetSwatchColorStart(value) end

---Gets the value of field 'SwatchColorEnd'.
---@return integer value
function row:GetSwatchColorEnd() end

---Sets the value of field 'SwatchColorEnd'.
---@param value integer
---@return dbc.row.v1215.DyeColor self
function row:SetSwatchColorEnd(value) end

---Gets the value of field 'SortOrder'.
---@return integer value
function row:GetSortOrder() end

---Sets the value of field 'SortOrder'.
---@param value integer
---@return dbc.row.v1215.DyeColor self
function row:SetSortOrder(value) end

---Table container for DyeColor (Build 12.1.5.69594).
---@class dbc.Table.v1215.DyeColor : DbcTable
---@field [integer] dbc.row.v1215.DyeColor
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.DyeColor
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.DyeColor|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.DyeColor
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.DyeColor>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.DyeColor[]
function tbl:GetByRelation(foreign_id) end

return {}
