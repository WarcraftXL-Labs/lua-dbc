---@meta
-- Generated LuaLS annotations for ChrModelMaterial (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ChrModelMaterial in build 12.1.5.69594.
---@class dbc.row.v1215.ChrModelMaterial : RowProxy
---@field ID integer
---@field CharComponentTextureLayoutsID integer
---@field TextureType integer
---@field Width integer
---@field Height integer
---@field Flags integer 0 = Primary Skin, 1 = Secondary Skin
---@field Field_9_0_1_34615_006 integer Set to 2,3,4 if Flags is 1, otherwise -1

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ChrModelMaterial self
function row:SetID(value) end

---Gets the value of field 'CharComponentTextureLayoutsID'.
---@return integer value
function row:GetCharComponentTextureLayoutsID() end

---Sets the value of field 'CharComponentTextureLayoutsID'.
---@param value integer
---@return dbc.row.v1215.ChrModelMaterial self
function row:SetCharComponentTextureLayoutsID(value) end

---Navigates foreign relationship to 'CharComponentTextureLayouts' via 'CharComponentTextureLayoutsID'.
---@return dbc.row.v1215.CharComponentTextureLayouts|nil
function row:GetCharComponentTextureLayouts() end

---Creates a related 'CharComponentTextureLayouts' row and automatically links 'CharComponentTextureLayoutsID'.
---@param data? table
---@return dbc.row.v1215.CharComponentTextureLayouts
function row:CreateRelated(data) end

---Gets the value of field 'TextureType'.
---@return integer value
function row:GetTextureType() end

---Sets the value of field 'TextureType'.
---@param value integer
---@return dbc.row.v1215.ChrModelMaterial self
function row:SetTextureType(value) end

---Gets the value of field 'Width'.
---@return integer value
function row:GetWidth() end

---Sets the value of field 'Width'.
---@param value integer
---@return dbc.row.v1215.ChrModelMaterial self
function row:SetWidth(value) end

---Gets the value of field 'Height'.
---@return integer value
function row:GetHeight() end

---Sets the value of field 'Height'.
---@param value integer
---@return dbc.row.v1215.ChrModelMaterial self
function row:SetHeight(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.ChrModelMaterial self
function row:SetFlags(value) end

---Gets the value of field 'Field_9_0_1_34615_006'.
---@return integer value
function row:GetField_9_0_1_34615_006() end

---Sets the value of field 'Field_9_0_1_34615_006'.
---@param value integer
---@return dbc.row.v1215.ChrModelMaterial self
function row:SetField_9_0_1_34615_006(value) end

---Table container for ChrModelMaterial (Build 12.1.5.69594).
---@class dbc.Table.v1215.ChrModelMaterial : DbcTable
---@field [integer] dbc.row.v1215.ChrModelMaterial
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ChrModelMaterial
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ChrModelMaterial|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ChrModelMaterial
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ChrModelMaterial>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ChrModelMaterial[]
function tbl:GetByRelation(foreign_id) end

return {}
