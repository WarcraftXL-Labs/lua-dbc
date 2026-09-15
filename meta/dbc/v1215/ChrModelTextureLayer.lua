---@meta
-- Generated LuaLS annotations for ChrModelTextureLayer (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ChrModelTextureLayer in build 12.1.5.69594.
---@class dbc.row.v1215.ChrModelTextureLayer : RowProxy
---@field ID integer
---@field TextureType integer
---@field Layer integer
---@field Flags integer
---@field BlendMode integer
---@field TextureSectionTypeBitMask integer -1 for non section texture or bit of CharComponentTextureSections::SectionType
---@field TextureSectionTypeBitMask2 integer
---@field Field_9_0_1_34365_006 integer[]
---@field ChrModelTextureTargetID integer[]
---@field CharComponentTextureLayoutsID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ChrModelTextureLayer self
function row:SetID(value) end

---Gets the value of field 'TextureType'.
---@return integer value
function row:GetTextureType() end

---Sets the value of field 'TextureType'.
---@param value integer
---@return dbc.row.v1215.ChrModelTextureLayer self
function row:SetTextureType(value) end

---Gets the value of field 'Layer'.
---@return integer value
function row:GetLayer() end

---Sets the value of field 'Layer'.
---@param value integer
---@return dbc.row.v1215.ChrModelTextureLayer self
function row:SetLayer(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.ChrModelTextureLayer self
function row:SetFlags(value) end

---Gets the value of field 'BlendMode'.
---@return integer value
function row:GetBlendMode() end

---Sets the value of field 'BlendMode'.
---@param value integer
---@return dbc.row.v1215.ChrModelTextureLayer self
function row:SetBlendMode(value) end

---Gets the value of field 'TextureSectionTypeBitMask'.
---@return integer value
function row:GetTextureSectionTypeBitMask() end

---Sets the value of field 'TextureSectionTypeBitMask'.
---@param value integer
---@return dbc.row.v1215.ChrModelTextureLayer self
function row:SetTextureSectionTypeBitMask(value) end

---Gets the value of field 'TextureSectionTypeBitMask2'.
---@return integer value
function row:GetTextureSectionTypeBitMask2() end

---Sets the value of field 'TextureSectionTypeBitMask2'.
---@param value integer
---@return dbc.row.v1215.ChrModelTextureLayer self
function row:SetTextureSectionTypeBitMask2(value) end

---Gets the value of field 'Field_9_0_1_34365_006'.
---@return integer[] value
function row:GetField_9_0_1_34365_006() end

---Sets the value of field 'Field_9_0_1_34365_006'.
---@param value integer[]
---@return dbc.row.v1215.ChrModelTextureLayer self
function row:SetField_9_0_1_34365_006(value) end

---Gets element at 1-based index in 'Field_9_0_1_34365_006'.
---@param index integer
---@return integer value
function row:GetField_9_0_1_34365_006Item(index) end

---Gets the value of field 'ChrModelTextureTargetID'.
---@return integer[] value
function row:GetChrModelTextureTargetID() end

---Sets the value of field 'ChrModelTextureTargetID'.
---@param value integer[]
---@return dbc.row.v1215.ChrModelTextureLayer self
function row:SetChrModelTextureTargetID(value) end

---Gets element at 1-based index in 'ChrModelTextureTargetID'.
---@param index integer
---@return integer value
function row:GetChrModelTextureTargetIDItem(index) end

---Navigates foreign relationship to 'ChrModelTextureTarget' via 'ChrModelTextureTargetID'.
---@return dbc.row.v1215.ChrModelTextureTarget|nil
function row:GetChrModelTextureTarget() end

---Creates a related 'ChrModelTextureTarget' row and automatically links 'ChrModelTextureTargetID'.
---@param data? table
---@return dbc.row.v1215.ChrModelTextureTarget
function row:CreateRelated(data) end

---Gets the value of field 'CharComponentTextureLayoutsID'.
---@return integer value
function row:GetCharComponentTextureLayoutsID() end

---Sets the value of field 'CharComponentTextureLayoutsID'.
---@param value integer
---@return dbc.row.v1215.ChrModelTextureLayer self
function row:SetCharComponentTextureLayoutsID(value) end

---Navigates foreign relationship to 'CharComponentTextureLayouts' via 'CharComponentTextureLayoutsID'.
---@return dbc.row.v1215.CharComponentTextureLayouts|nil
function row:GetCharComponentTextureLayouts() end

---Creates a related 'CharComponentTextureLayouts' row and automatically links 'CharComponentTextureLayoutsID'.
---@param data? table
---@return dbc.row.v1215.CharComponentTextureLayouts
function row:CreateRelated(data) end

---Table container for ChrModelTextureLayer (Build 12.1.5.69594).
---@class dbc.Table.v1215.ChrModelTextureLayer : DbcTable
---@field [integer] dbc.row.v1215.ChrModelTextureLayer
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ChrModelTextureLayer
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ChrModelTextureLayer|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ChrModelTextureLayer
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ChrModelTextureLayer>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ChrModelTextureLayer[]
function tbl:GetByRelation(foreign_id) end

return {}
