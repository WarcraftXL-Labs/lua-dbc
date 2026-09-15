---@meta
-- Generated LuaLS annotations for CatalogShopGameTitleInfo (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CatalogShopGameTitleInfo in build 12.1.5.69594.
---@class dbc.row.v1215.CatalogShopGameTitleInfo : RowProxy
---@field ID integer
---@field GameTitle integer
---@field GameLogo integer
---@field Field_11_2_5_62940_002 integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CatalogShopGameTitleInfo self
function row:SetID(value) end

---Gets the value of field 'GameTitle'.
---@return integer value
function row:GetGameTitle() end

---Sets the value of field 'GameTitle'.
---@param value integer
---@return dbc.row.v1215.CatalogShopGameTitleInfo self
function row:SetGameTitle(value) end

---Navigates foreign relationship to 'GlobalStrings' via 'GameTitle'.
---@return dbc.row.v1215.GlobalStrings|nil
function row:GetGameTitle() end

---Creates a related 'GlobalStrings' row and automatically links 'GameTitle'.
---@param data? table
---@return dbc.row.v1215.GlobalStrings
function row:CreateRelated(data) end

---Gets the value of field 'GameLogo'.
---@return integer value
function row:GetGameLogo() end

---Sets the value of field 'GameLogo'.
---@param value integer
---@return dbc.row.v1215.CatalogShopGameTitleInfo self
function row:SetGameLogo(value) end

---Navigates foreign relationship to 'UiTextureAtlasMember' via 'GameLogo'.
---@return dbc.row.v1215.UiTextureAtlasMember|nil
function row:GetGameLogo() end

---Creates a related 'UiTextureAtlasMember' row and automatically links 'GameLogo'.
---@param data? table
---@return dbc.row.v1215.UiTextureAtlasMember
function row:CreateRelated(data) end

---Gets the value of field 'Field_11_2_5_62940_002'.
---@return integer value
function row:GetField_11_2_5_62940_002() end

---Sets the value of field 'Field_11_2_5_62940_002'.
---@param value integer
---@return dbc.row.v1215.CatalogShopGameTitleInfo self
function row:SetField_11_2_5_62940_002(value) end

---Table container for CatalogShopGameTitleInfo (Build 12.1.5.69594).
---@class dbc.Table.v1215.CatalogShopGameTitleInfo : DbcTable
---@field [integer] dbc.row.v1215.CatalogShopGameTitleInfo
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CatalogShopGameTitleInfo
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CatalogShopGameTitleInfo|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CatalogShopGameTitleInfo
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CatalogShopGameTitleInfo>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CatalogShopGameTitleInfo[]
function tbl:GetByRelation(foreign_id) end

return {}
