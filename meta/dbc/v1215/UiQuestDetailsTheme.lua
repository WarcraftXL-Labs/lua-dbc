---@meta
-- Generated LuaLS annotations for UiQuestDetailsTheme (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of UiQuestDetailsTheme in build 12.1.5.69594.
---@class dbc.row.v1215.UiQuestDetailsTheme : RowProxy
---@field ID integer
---@field Signature_lang string
---@field BackgroundTexture integer
---@field SealTexture integer
---@field PoiIcon integer
---@field UiMapPinInfo integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.UiQuestDetailsTheme self
function row:SetID(value) end

---Gets the value of field 'Signature_lang'.
---@return string value
function row:GetSignature_lang() end

---Sets the value of field 'Signature_lang'.
---@param value string
---@return dbc.row.v1215.UiQuestDetailsTheme self
function row:SetSignature_lang(value) end

---Gets the value of field 'BackgroundTexture'.
---@return integer value
function row:GetBackgroundTexture() end

---Sets the value of field 'BackgroundTexture'.
---@param value integer
---@return dbc.row.v1215.UiQuestDetailsTheme self
function row:SetBackgroundTexture(value) end

---Navigates foreign relationship to 'UiTextureAtlasElement' via 'BackgroundTexture'.
---@return dbc.row.v1215.UiTextureAtlasElement|nil
function row:GetBackgroundTexture() end

---Creates a related 'UiTextureAtlasElement' row and automatically links 'BackgroundTexture'.
---@param data? table
---@return dbc.row.v1215.UiTextureAtlasElement
function row:CreateRelated(data) end

---Gets the value of field 'SealTexture'.
---@return integer value
function row:GetSealTexture() end

---Sets the value of field 'SealTexture'.
---@param value integer
---@return dbc.row.v1215.UiQuestDetailsTheme self
function row:SetSealTexture(value) end

---Navigates foreign relationship to 'UiTextureAtlasElement' via 'SealTexture'.
---@return dbc.row.v1215.UiTextureAtlasElement|nil
function row:GetSealTexture() end

---Creates a related 'UiTextureAtlasElement' row and automatically links 'SealTexture'.
---@param data? table
---@return dbc.row.v1215.UiTextureAtlasElement
function row:CreateRelated(data) end

---Gets the value of field 'PoiIcon'.
---@return integer value
function row:GetPoiIcon() end

---Sets the value of field 'PoiIcon'.
---@param value integer
---@return dbc.row.v1215.UiQuestDetailsTheme self
function row:SetPoiIcon(value) end

---Navigates foreign relationship to 'UiTextureAtlasElement' via 'PoiIcon'.
---@return dbc.row.v1215.UiTextureAtlasElement|nil
function row:GetPoiIcon() end

---Creates a related 'UiTextureAtlasElement' row and automatically links 'PoiIcon'.
---@param data? table
---@return dbc.row.v1215.UiTextureAtlasElement
function row:CreateRelated(data) end

---Gets the value of field 'UiMapPinInfo'.
---@return integer value
function row:GetUiMapPinInfo() end

---Sets the value of field 'UiMapPinInfo'.
---@param value integer
---@return dbc.row.v1215.UiQuestDetailsTheme self
function row:SetUiMapPinInfo(value) end

---Navigates foreign relationship to 'UIMapPinInfo' via 'UiMapPinInfo'.
---@return dbc.row.v1215.UIMapPinInfo|nil
function row:GetUiMapPinInfo() end

---Creates a related 'UIMapPinInfo' row and automatically links 'UiMapPinInfo'.
---@param data? table
---@return dbc.row.v1215.UIMapPinInfo
function row:CreateRelated(data) end

---Table container for UiQuestDetailsTheme (Build 12.1.5.69594).
---@class dbc.Table.v1215.UiQuestDetailsTheme : DbcTable
---@field [integer] dbc.row.v1215.UiQuestDetailsTheme
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.UiQuestDetailsTheme
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.UiQuestDetailsTheme|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.UiQuestDetailsTheme
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.UiQuestDetailsTheme>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.UiQuestDetailsTheme[]
function tbl:GetByRelation(foreign_id) end

return {}
