---@meta
-- Generated LuaLS annotations for UiWidgetVisualization (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of UiWidgetVisualization in build 12.1.5.69594.
---@class dbc.row.v1215.UiWidgetVisualization : RowProxy
---@field ID integer
---@field Name string
---@field VisType integer
---@field TextureKit integer
---@field FrameTextureKit integer
---@field SizeSetting integer == width
---@field InAnimType integer
---@field OutAnimType integer
---@field WidgetScale integer UIWidgetScale 0 = OneHundred, 1 = Ninty, 2 = Eighty, 3 = Seventy, 4 = Sixty, 5 = Fifty
---@field ScriptedAnimationEffectID integer
---@field ModelSceneLayer integer UIWidgetModelSceneLayer 0 = None, 1 = Front, 2 = Back

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.UiWidgetVisualization self
function row:SetID(value) end

---Gets the value of field 'Name'.
---@return string value
function row:GetName() end

---Sets the value of field 'Name'.
---@param value string
---@return dbc.row.v1215.UiWidgetVisualization self
function row:SetName(value) end

---Gets the value of field 'VisType'.
---@return integer value
function row:GetVisType() end

---Sets the value of field 'VisType'.
---@param value integer
---@return dbc.row.v1215.UiWidgetVisualization self
function row:SetVisType(value) end

---Navigates foreign relationship to 'UiWidgetVisTypeDataReq' via 'VisType'.
---@return dbc.row.v1215.UiWidgetVisTypeDataReq|nil
function row:GetVisType() end

---Creates a related 'UiWidgetVisTypeDataReq' row and automatically links 'VisType'.
---@param data? table
---@return dbc.row.v1215.UiWidgetVisTypeDataReq
function row:CreateRelated(data) end

---Gets the value of field 'TextureKit'.
---@return integer value
function row:GetTextureKit() end

---Sets the value of field 'TextureKit'.
---@param value integer
---@return dbc.row.v1215.UiWidgetVisualization self
function row:SetTextureKit(value) end

---Navigates foreign relationship to 'UiTextureKit' via 'TextureKit'.
---@return dbc.row.v1215.UiTextureKit|nil
function row:GetTextureKit() end

---Creates a related 'UiTextureKit' row and automatically links 'TextureKit'.
---@param data? table
---@return dbc.row.v1215.UiTextureKit
function row:CreateRelated(data) end

---Gets the value of field 'FrameTextureKit'.
---@return integer value
function row:GetFrameTextureKit() end

---Sets the value of field 'FrameTextureKit'.
---@param value integer
---@return dbc.row.v1215.UiWidgetVisualization self
function row:SetFrameTextureKit(value) end

---Navigates foreign relationship to 'UiTextureKit' via 'FrameTextureKit'.
---@return dbc.row.v1215.UiTextureKit|nil
function row:GetFrameTextureKit() end

---Creates a related 'UiTextureKit' row and automatically links 'FrameTextureKit'.
---@param data? table
---@return dbc.row.v1215.UiTextureKit
function row:CreateRelated(data) end

---Gets the value of field 'SizeSetting'.
---@return integer value
function row:GetSizeSetting() end

---Sets the value of field 'SizeSetting'.
---@param value integer
---@return dbc.row.v1215.UiWidgetVisualization self
function row:SetSizeSetting(value) end

---Gets the value of field 'InAnimType'.
---@return integer value
function row:GetInAnimType() end

---Sets the value of field 'InAnimType'.
---@param value integer
---@return dbc.row.v1215.UiWidgetVisualization self
function row:SetInAnimType(value) end

---Gets the value of field 'OutAnimType'.
---@return integer value
function row:GetOutAnimType() end

---Sets the value of field 'OutAnimType'.
---@param value integer
---@return dbc.row.v1215.UiWidgetVisualization self
function row:SetOutAnimType(value) end

---Gets the value of field 'WidgetScale'.
---@return integer value
function row:GetWidgetScale() end

---Sets the value of field 'WidgetScale'.
---@param value integer
---@return dbc.row.v1215.UiWidgetVisualization self
function row:SetWidgetScale(value) end

---Gets the value of field 'ScriptedAnimationEffectID'.
---@return integer value
function row:GetScriptedAnimationEffectID() end

---Sets the value of field 'ScriptedAnimationEffectID'.
---@param value integer
---@return dbc.row.v1215.UiWidgetVisualization self
function row:SetScriptedAnimationEffectID(value) end

---Navigates foreign relationship to 'UIScriptedAnimationEffect' via 'ScriptedAnimationEffectID'.
---@return dbc.row.v1215.UIScriptedAnimationEffect|nil
function row:GetScriptedAnimationEffect() end

---Creates a related 'UIScriptedAnimationEffect' row and automatically links 'ScriptedAnimationEffectID'.
---@param data? table
---@return dbc.row.v1215.UIScriptedAnimationEffect
function row:CreateRelated(data) end

---Gets the value of field 'ModelSceneLayer'.
---@return integer value
function row:GetModelSceneLayer() end

---Sets the value of field 'ModelSceneLayer'.
---@param value integer
---@return dbc.row.v1215.UiWidgetVisualization self
function row:SetModelSceneLayer(value) end

---Table container for UiWidgetVisualization (Build 12.1.5.69594).
---@class dbc.Table.v1215.UiWidgetVisualization : DbcTable
---@field [integer] dbc.row.v1215.UiWidgetVisualization
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.UiWidgetVisualization
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.UiWidgetVisualization|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.UiWidgetVisualization
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.UiWidgetVisualization>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.UiWidgetVisualization[]
function tbl:GetByRelation(foreign_id) end

return {}
