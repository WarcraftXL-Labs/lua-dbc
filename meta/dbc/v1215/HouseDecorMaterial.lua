---@meta
-- Generated LuaLS annotations for HouseDecorMaterial (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of HouseDecorMaterial in build 12.1.5.69594.
---@class dbc.row.v1215.HouseDecorMaterial : RowProxy
---@field ID integer
---@field WMOMaterialReference integer
---@field MaterialTextureIndex integer
---@field HouseThemeID integer
---@field TextureAFileDataID integer
---@field TextureBFileDataID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.HouseDecorMaterial self
function row:SetID(value) end

---Gets the value of field 'WMOMaterialReference'.
---@return integer value
function row:GetWMOMaterialReference() end

---Sets the value of field 'WMOMaterialReference'.
---@param value integer
---@return dbc.row.v1215.HouseDecorMaterial self
function row:SetWMOMaterialReference(value) end

---Gets the value of field 'MaterialTextureIndex'.
---@return integer value
function row:GetMaterialTextureIndex() end

---Sets the value of field 'MaterialTextureIndex'.
---@param value integer
---@return dbc.row.v1215.HouseDecorMaterial self
function row:SetMaterialTextureIndex(value) end

---Gets the value of field 'HouseThemeID'.
---@return integer value
function row:GetHouseThemeID() end

---Sets the value of field 'HouseThemeID'.
---@param value integer
---@return dbc.row.v1215.HouseDecorMaterial self
function row:SetHouseThemeID(value) end

---Navigates foreign relationship to 'HouseTheme' via 'HouseThemeID'.
---@return dbc.row.v1215.HouseTheme|nil
function row:GetHouseTheme() end

---Creates a related 'HouseTheme' row and automatically links 'HouseThemeID'.
---@param data? table
---@return dbc.row.v1215.HouseTheme
function row:CreateRelated(data) end

---Gets the value of field 'TextureAFileDataID'.
---@return integer value
function row:GetTextureAFileDataID() end

---Sets the value of field 'TextureAFileDataID'.
---@param value integer
---@return dbc.row.v1215.HouseDecorMaterial self
function row:SetTextureAFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'TextureAFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetTextureAFileData() end

---Creates a related 'FileData' row and automatically links 'TextureAFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'TextureBFileDataID'.
---@return integer value
function row:GetTextureBFileDataID() end

---Sets the value of field 'TextureBFileDataID'.
---@param value integer
---@return dbc.row.v1215.HouseDecorMaterial self
function row:SetTextureBFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'TextureBFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetTextureBFileData() end

---Creates a related 'FileData' row and automatically links 'TextureBFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Table container for HouseDecorMaterial (Build 12.1.5.69594).
---@class dbc.Table.v1215.HouseDecorMaterial : DbcTable
---@field [integer] dbc.row.v1215.HouseDecorMaterial
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.HouseDecorMaterial
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.HouseDecorMaterial|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.HouseDecorMaterial
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.HouseDecorMaterial>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.HouseDecorMaterial[]
function tbl:GetByRelation(foreign_id) end

return {}
