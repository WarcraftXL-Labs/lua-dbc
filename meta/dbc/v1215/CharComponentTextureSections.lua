---@meta
-- Generated LuaLS annotations for CharComponentTextureSections (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CharComponentTextureSections in build 12.1.5.69594.
---@class dbc.row.v1215.CharComponentTextureSections : RowProxy
---@field ID integer
---@field CharComponentTextureLayoutID integer
---@field SectionType integer
---@field X integer
---@field Y integer
---@field Width integer
---@field Height integer
---@field OverlapSectionMask integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CharComponentTextureSections self
function row:SetID(value) end

---Gets the value of field 'CharComponentTextureLayoutID'.
---@return integer value
function row:GetCharComponentTextureLayoutID() end

---Sets the value of field 'CharComponentTextureLayoutID'.
---@param value integer
---@return dbc.row.v1215.CharComponentTextureSections self
function row:SetCharComponentTextureLayoutID(value) end

---Navigates foreign relationship to 'CharComponentTextureLayouts' via 'CharComponentTextureLayoutID'.
---@return dbc.row.v1215.CharComponentTextureLayouts|nil
function row:GetCharComponentTextureLayout() end

---Creates a related 'CharComponentTextureLayouts' row and automatically links 'CharComponentTextureLayoutID'.
---@param data? table
---@return dbc.row.v1215.CharComponentTextureLayouts
function row:CreateRelated(data) end

---Gets the value of field 'SectionType'.
---@return integer value
function row:GetSectionType() end

---Sets the value of field 'SectionType'.
---@param value integer
---@return dbc.row.v1215.CharComponentTextureSections self
function row:SetSectionType(value) end

---Gets the value of field 'X'.
---@return integer value
function row:GetX() end

---Sets the value of field 'X'.
---@param value integer
---@return dbc.row.v1215.CharComponentTextureSections self
function row:SetX(value) end

---Gets the value of field 'Y'.
---@return integer value
function row:GetY() end

---Sets the value of field 'Y'.
---@param value integer
---@return dbc.row.v1215.CharComponentTextureSections self
function row:SetY(value) end

---Gets the value of field 'Width'.
---@return integer value
function row:GetWidth() end

---Sets the value of field 'Width'.
---@param value integer
---@return dbc.row.v1215.CharComponentTextureSections self
function row:SetWidth(value) end

---Gets the value of field 'Height'.
---@return integer value
function row:GetHeight() end

---Sets the value of field 'Height'.
---@param value integer
---@return dbc.row.v1215.CharComponentTextureSections self
function row:SetHeight(value) end

---Gets the value of field 'OverlapSectionMask'.
---@return integer value
function row:GetOverlapSectionMask() end

---Sets the value of field 'OverlapSectionMask'.
---@param value integer
---@return dbc.row.v1215.CharComponentTextureSections self
function row:SetOverlapSectionMask(value) end

---Table container for CharComponentTextureSections (Build 12.1.5.69594).
---@class dbc.Table.v1215.CharComponentTextureSections : DbcTable
---@field [integer] dbc.row.v1215.CharComponentTextureSections
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CharComponentTextureSections
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CharComponentTextureSections|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CharComponentTextureSections
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CharComponentTextureSections>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CharComponentTextureSections[]
function tbl:GetByRelation(foreign_id) end

return {}
