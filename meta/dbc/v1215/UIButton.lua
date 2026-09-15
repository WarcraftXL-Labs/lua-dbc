---@meta
-- Generated LuaLS annotations for UIButton (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of UIButton in build 12.1.5.69594.
---@class dbc.row.v1215.UIButton : RowProxy
---@field ID integer
---@field Normal integer
---@field Pressed integer
---@field Highlight integer
---@field Icon integer
---@field Field_11_0_7_57361_004 integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.UIButton self
function row:SetID(value) end

---Gets the value of field 'Normal'.
---@return integer value
function row:GetNormal() end

---Sets the value of field 'Normal'.
---@param value integer
---@return dbc.row.v1215.UIButton self
function row:SetNormal(value) end

---Navigates foreign relationship to 'UiTextureAtlasElement' via 'Normal'.
---@return dbc.row.v1215.UiTextureAtlasElement|nil
function row:GetNormal() end

---Creates a related 'UiTextureAtlasElement' row and automatically links 'Normal'.
---@param data? table
---@return dbc.row.v1215.UiTextureAtlasElement
function row:CreateRelated(data) end

---Gets the value of field 'Pressed'.
---@return integer value
function row:GetPressed() end

---Sets the value of field 'Pressed'.
---@param value integer
---@return dbc.row.v1215.UIButton self
function row:SetPressed(value) end

---Navigates foreign relationship to 'UiTextureAtlasElement' via 'Pressed'.
---@return dbc.row.v1215.UiTextureAtlasElement|nil
function row:GetPressed() end

---Creates a related 'UiTextureAtlasElement' row and automatically links 'Pressed'.
---@param data? table
---@return dbc.row.v1215.UiTextureAtlasElement
function row:CreateRelated(data) end

---Gets the value of field 'Highlight'.
---@return integer value
function row:GetHighlight() end

---Sets the value of field 'Highlight'.
---@param value integer
---@return dbc.row.v1215.UIButton self
function row:SetHighlight(value) end

---Navigates foreign relationship to 'UiTextureAtlasElement' via 'Highlight'.
---@return dbc.row.v1215.UiTextureAtlasElement|nil
function row:GetHighlight() end

---Creates a related 'UiTextureAtlasElement' row and automatically links 'Highlight'.
---@param data? table
---@return dbc.row.v1215.UiTextureAtlasElement
function row:CreateRelated(data) end

---Gets the value of field 'Icon'.
---@return integer value
function row:GetIcon() end

---Sets the value of field 'Icon'.
---@param value integer
---@return dbc.row.v1215.UIButton self
function row:SetIcon(value) end

---Navigates foreign relationship to 'UiTextureAtlasElement' via 'Icon'.
---@return dbc.row.v1215.UiTextureAtlasElement|nil
function row:GetIcon() end

---Creates a related 'UiTextureAtlasElement' row and automatically links 'Icon'.
---@param data? table
---@return dbc.row.v1215.UiTextureAtlasElement
function row:CreateRelated(data) end

---Gets the value of field 'Field_11_0_7_57361_004'.
---@return integer value
function row:GetField_11_0_7_57361_004() end

---Sets the value of field 'Field_11_0_7_57361_004'.
---@param value integer
---@return dbc.row.v1215.UIButton self
function row:SetField_11_0_7_57361_004(value) end

---Table container for UIButton (Build 12.1.5.69594).
---@class dbc.Table.v1215.UIButton : DbcTable
---@field [integer] dbc.row.v1215.UIButton
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.UIButton
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.UIButton|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.UIButton
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.UIButton>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.UIButton[]
function tbl:GetByRelation(foreign_id) end

return {}
