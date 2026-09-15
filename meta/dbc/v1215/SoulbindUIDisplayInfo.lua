---@meta
-- Generated LuaLS annotations for SoulbindUIDisplayInfo (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SoulbindUIDisplayInfo in build 12.1.5.69594.
---@class dbc.row.v1215.SoulbindUIDisplayInfo : RowProxy
---@field ID integer
---@field Description_lang string
---@field SoulbindID integer
---@field CreatureDisplayInfoID integer
---@field ModelSceneActorID integer
---@field TextureKitID integer
---@field OrderIndex integer per covenant
---@field GlobalOrderIndex integer across covenants, might be cvarIndex
---@field ActivationSoundKitID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SoulbindUIDisplayInfo self
function row:SetID(value) end

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v1215.SoulbindUIDisplayInfo self
function row:SetDescription_lang(value) end

---Gets the value of field 'SoulbindID'.
---@return integer value
function row:GetSoulbindID() end

---Sets the value of field 'SoulbindID'.
---@param value integer
---@return dbc.row.v1215.SoulbindUIDisplayInfo self
function row:SetSoulbindID(value) end

---Navigates foreign relationship to 'Soulbind' via 'SoulbindID'.
---@return dbc.row.v1215.Soulbind|nil
function row:GetSoulbind() end

---Creates a related 'Soulbind' row and automatically links 'SoulbindID'.
---@param data? table
---@return dbc.row.v1215.Soulbind
function row:CreateRelated(data) end

---Gets the value of field 'CreatureDisplayInfoID'.
---@return integer value
function row:GetCreatureDisplayInfoID() end

---Sets the value of field 'CreatureDisplayInfoID'.
---@param value integer
---@return dbc.row.v1215.SoulbindUIDisplayInfo self
function row:SetCreatureDisplayInfoID(value) end

---Navigates foreign relationship to 'CreatureDisplayInfo' via 'CreatureDisplayInfoID'.
---@return dbc.row.v1215.CreatureDisplayInfo|nil
function row:GetCreatureDisplayInfo() end

---Creates a related 'CreatureDisplayInfo' row and automatically links 'CreatureDisplayInfoID'.
---@param data? table
---@return dbc.row.v1215.CreatureDisplayInfo
function row:CreateRelated(data) end

---Gets the value of field 'ModelSceneActorID'.
---@return integer value
function row:GetModelSceneActorID() end

---Sets the value of field 'ModelSceneActorID'.
---@param value integer
---@return dbc.row.v1215.SoulbindUIDisplayInfo self
function row:SetModelSceneActorID(value) end

---Navigates foreign relationship to 'UiModelSceneActor' via 'ModelSceneActorID'.
---@return dbc.row.v1215.UiModelSceneActor|nil
function row:GetModelSceneActor() end

---Creates a related 'UiModelSceneActor' row and automatically links 'ModelSceneActorID'.
---@param data? table
---@return dbc.row.v1215.UiModelSceneActor
function row:CreateRelated(data) end

---Gets the value of field 'TextureKitID'.
---@return integer value
function row:GetTextureKitID() end

---Sets the value of field 'TextureKitID'.
---@param value integer
---@return dbc.row.v1215.SoulbindUIDisplayInfo self
function row:SetTextureKitID(value) end

---Navigates foreign relationship to 'UiTextureKit' via 'TextureKitID'.
---@return dbc.row.v1215.UiTextureKit|nil
function row:GetTextureKit() end

---Creates a related 'UiTextureKit' row and automatically links 'TextureKitID'.
---@param data? table
---@return dbc.row.v1215.UiTextureKit
function row:CreateRelated(data) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.SoulbindUIDisplayInfo self
function row:SetOrderIndex(value) end

---Gets the value of field 'GlobalOrderIndex'.
---@return integer value
function row:GetGlobalOrderIndex() end

---Sets the value of field 'GlobalOrderIndex'.
---@param value integer
---@return dbc.row.v1215.SoulbindUIDisplayInfo self
function row:SetGlobalOrderIndex(value) end

---Gets the value of field 'ActivationSoundKitID'.
---@return integer value
function row:GetActivationSoundKitID() end

---Sets the value of field 'ActivationSoundKitID'.
---@param value integer
---@return dbc.row.v1215.SoulbindUIDisplayInfo self
function row:SetActivationSoundKitID(value) end

---Navigates foreign relationship to 'SoundKit' via 'ActivationSoundKitID'.
---@return dbc.row.v1215.SoundKit|nil
function row:GetActivationSoundKit() end

---Creates a related 'SoundKit' row and automatically links 'ActivationSoundKitID'.
---@param data? table
---@return dbc.row.v1215.SoundKit
function row:CreateRelated(data) end

---Table container for SoulbindUIDisplayInfo (Build 12.1.5.69594).
---@class dbc.Table.v1215.SoulbindUIDisplayInfo : DbcTable
---@field [integer] dbc.row.v1215.SoulbindUIDisplayInfo
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SoulbindUIDisplayInfo
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SoulbindUIDisplayInfo|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SoulbindUIDisplayInfo
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SoulbindUIDisplayInfo>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SoulbindUIDisplayInfo[]
function tbl:GetByRelation(foreign_id) end

return {}
