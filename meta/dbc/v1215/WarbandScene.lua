---@meta
-- Generated LuaLS annotations for WarbandScene (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of WarbandScene in build 12.1.5.69594.
---@class dbc.row.v1215.WarbandScene : RowProxy
---@field Name_lang string
---@field Description_lang string
---@field Position number[]
---@field LookAt number[]
---@field ID integer
---@field MapID integer
---@field Fov number 95.5° = 100% zoom
---@field TimeOfDay integer minutes (1440 = 1 day)
---@field Flags integer
---@field SoundAmbienceID integer
---@field Quality integer
---@field TextureKit integer
---@field DefaultScenePriority integer used to pick default scene when none is selected (or selected is invalid), only taking into account collected scenes with flag 0x10

local row = {}

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.WarbandScene self
function row:SetName_lang(value) end

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v1215.WarbandScene self
function row:SetDescription_lang(value) end

---Gets the value of field 'Position'.
---@return number[] value
function row:GetPosition() end

---Sets the value of field 'Position'.
---@param value number[]
---@return dbc.row.v1215.WarbandScene self
function row:SetPosition(value) end

---Gets element at 1-based index in 'Position'.
---@param index integer
---@return number value
function row:GetPositionItem(index) end

---Gets the value of field 'LookAt'.
---@return number[] value
function row:GetLookAt() end

---Sets the value of field 'LookAt'.
---@param value number[]
---@return dbc.row.v1215.WarbandScene self
function row:SetLookAt(value) end

---Gets element at 1-based index in 'LookAt'.
---@param index integer
---@return number value
function row:GetLookAtItem(index) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.WarbandScene self
function row:SetID(value) end

---Gets the value of field 'MapID'.
---@return integer value
function row:GetMapID() end

---Sets the value of field 'MapID'.
---@param value integer
---@return dbc.row.v1215.WarbandScene self
function row:SetMapID(value) end

---Navigates foreign relationship to 'Map' via 'MapID'.
---@return dbc.row.v1215.Map|nil
function row:GetMap() end

---Creates a related 'Map' row and automatically links 'MapID'.
---@param data? table
---@return dbc.row.v1215.Map
function row:CreateRelated(data) end

---Gets the value of field 'Fov'.
---@return number value
function row:GetFov() end

---Sets the value of field 'Fov'.
---@param value number
---@return dbc.row.v1215.WarbandScene self
function row:SetFov(value) end

---Gets the value of field 'TimeOfDay'.
---@return integer value
function row:GetTimeOfDay() end

---Sets the value of field 'TimeOfDay'.
---@param value integer
---@return dbc.row.v1215.WarbandScene self
function row:SetTimeOfDay(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.WarbandScene self
function row:SetFlags(value) end

---Gets the value of field 'SoundAmbienceID'.
---@return integer value
function row:GetSoundAmbienceID() end

---Sets the value of field 'SoundAmbienceID'.
---@param value integer
---@return dbc.row.v1215.WarbandScene self
function row:SetSoundAmbienceID(value) end

---Navigates foreign relationship to 'SoundAmbience' via 'SoundAmbienceID'.
---@return dbc.row.v1215.SoundAmbience|nil
function row:GetSoundAmbience() end

---Creates a related 'SoundAmbience' row and automatically links 'SoundAmbienceID'.
---@param data? table
---@return dbc.row.v1215.SoundAmbience
function row:CreateRelated(data) end

---Gets the value of field 'Quality'.
---@return integer value
function row:GetQuality() end

---Sets the value of field 'Quality'.
---@param value integer
---@return dbc.row.v1215.WarbandScene self
function row:SetQuality(value) end

---Gets the value of field 'TextureKit'.
---@return integer value
function row:GetTextureKit() end

---Sets the value of field 'TextureKit'.
---@param value integer
---@return dbc.row.v1215.WarbandScene self
function row:SetTextureKit(value) end

---Gets the value of field 'DefaultScenePriority'.
---@return integer value
function row:GetDefaultScenePriority() end

---Sets the value of field 'DefaultScenePriority'.
---@param value integer
---@return dbc.row.v1215.WarbandScene self
function row:SetDefaultScenePriority(value) end

---Table container for WarbandScene (Build 12.1.5.69594).
---@class dbc.Table.v1215.WarbandScene : DbcTable
---@field [integer] dbc.row.v1215.WarbandScene
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.WarbandScene
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.WarbandScene|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.WarbandScene
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.WarbandScene>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.WarbandScene[]
function tbl:GetByRelation(foreign_id) end

return {}
