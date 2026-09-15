---@meta
-- Generated LuaLS annotations for ScreenEffect (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ScreenEffect in build 12.1.5.69594.
---@class dbc.row.v1215.ScreenEffect : RowProxy
---@field ID integer
---@field Name string
---@field Param integer[]
---@field Effect integer 6: ColorGrading
---@field FullScreenEffectID integer
---@field LightParamsID integer
---@field LightParamsFadeIn integer
---@field LightParamsFadeOut integer
---@field SoundAmbienceID integer
---@field ZoneMusicID integer
---@field TimeOfDayOverride integer
---@field EffectMask integer
---@field LightFlags integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ScreenEffect self
function row:SetID(value) end

---Gets the value of field 'Name'.
---@return string value
function row:GetName() end

---Sets the value of field 'Name'.
---@param value string
---@return dbc.row.v1215.ScreenEffect self
function row:SetName(value) end

---Gets the value of field 'Param'.
---@return integer[] value
function row:GetParam() end

---Sets the value of field 'Param'.
---@param value integer[]
---@return dbc.row.v1215.ScreenEffect self
function row:SetParam(value) end

---Gets element at 1-based index in 'Param'.
---@param index integer
---@return integer value
function row:GetParamItem(index) end

---Gets the value of field 'Effect'.
---@return integer value
function row:GetEffect() end

---Sets the value of field 'Effect'.
---@param value integer
---@return dbc.row.v1215.ScreenEffect self
function row:SetEffect(value) end

---Gets the value of field 'FullScreenEffectID'.
---@return integer value
function row:GetFullScreenEffectID() end

---Sets the value of field 'FullScreenEffectID'.
---@param value integer
---@return dbc.row.v1215.ScreenEffect self
function row:SetFullScreenEffectID(value) end

---Navigates foreign relationship to 'FullScreenEffect' via 'FullScreenEffectID'.
---@return dbc.row.v1215.FullScreenEffect|nil
function row:GetFullScreenEffect() end

---Creates a related 'FullScreenEffect' row and automatically links 'FullScreenEffectID'.
---@param data? table
---@return dbc.row.v1215.FullScreenEffect
function row:CreateRelated(data) end

---Gets the value of field 'LightParamsID'.
---@return integer value
function row:GetLightParamsID() end

---Sets the value of field 'LightParamsID'.
---@param value integer
---@return dbc.row.v1215.ScreenEffect self
function row:SetLightParamsID(value) end

---Navigates foreign relationship to 'LightParams' via 'LightParamsID'.
---@return dbc.row.v1215.LightParams|nil
function row:GetLightParams() end

---Creates a related 'LightParams' row and automatically links 'LightParamsID'.
---@param data? table
---@return dbc.row.v1215.LightParams
function row:CreateRelated(data) end

---Gets the value of field 'LightParamsFadeIn'.
---@return integer value
function row:GetLightParamsFadeIn() end

---Sets the value of field 'LightParamsFadeIn'.
---@param value integer
---@return dbc.row.v1215.ScreenEffect self
function row:SetLightParamsFadeIn(value) end

---Gets the value of field 'LightParamsFadeOut'.
---@return integer value
function row:GetLightParamsFadeOut() end

---Sets the value of field 'LightParamsFadeOut'.
---@param value integer
---@return dbc.row.v1215.ScreenEffect self
function row:SetLightParamsFadeOut(value) end

---Gets the value of field 'SoundAmbienceID'.
---@return integer value
function row:GetSoundAmbienceID() end

---Sets the value of field 'SoundAmbienceID'.
---@param value integer
---@return dbc.row.v1215.ScreenEffect self
function row:SetSoundAmbienceID(value) end

---Navigates foreign relationship to 'SoundAmbience' via 'SoundAmbienceID'.
---@return dbc.row.v1215.SoundAmbience|nil
function row:GetSoundAmbience() end

---Creates a related 'SoundAmbience' row and automatically links 'SoundAmbienceID'.
---@param data? table
---@return dbc.row.v1215.SoundAmbience
function row:CreateRelated(data) end

---Gets the value of field 'ZoneMusicID'.
---@return integer value
function row:GetZoneMusicID() end

---Sets the value of field 'ZoneMusicID'.
---@param value integer
---@return dbc.row.v1215.ScreenEffect self
function row:SetZoneMusicID(value) end

---Navigates foreign relationship to 'ZoneMusic' via 'ZoneMusicID'.
---@return dbc.row.v1215.ZoneMusic|nil
function row:GetZoneMusic() end

---Creates a related 'ZoneMusic' row and automatically links 'ZoneMusicID'.
---@param data? table
---@return dbc.row.v1215.ZoneMusic
function row:CreateRelated(data) end

---Gets the value of field 'TimeOfDayOverride'.
---@return integer value
function row:GetTimeOfDayOverride() end

---Sets the value of field 'TimeOfDayOverride'.
---@param value integer
---@return dbc.row.v1215.ScreenEffect self
function row:SetTimeOfDayOverride(value) end

---Gets the value of field 'EffectMask'.
---@return integer value
function row:GetEffectMask() end

---Sets the value of field 'EffectMask'.
---@param value integer
---@return dbc.row.v1215.ScreenEffect self
function row:SetEffectMask(value) end

---Gets the value of field 'LightFlags'.
---@return integer value
function row:GetLightFlags() end

---Sets the value of field 'LightFlags'.
---@param value integer
---@return dbc.row.v1215.ScreenEffect self
function row:SetLightFlags(value) end

---Table container for ScreenEffect (Build 12.1.5.69594).
---@class dbc.Table.v1215.ScreenEffect : DbcTable
---@field [integer] dbc.row.v1215.ScreenEffect
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ScreenEffect
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ScreenEffect|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ScreenEffect
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ScreenEffect>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ScreenEffect[]
function tbl:GetByRelation(foreign_id) end

return {}
