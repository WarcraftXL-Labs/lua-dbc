---@meta
-- Generated LuaLS annotations for LiquidType (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of LiquidType in build 12.1.5.69594.
---@class dbc.row.v1215.LiquidType : RowProxy
---@field ID integer
---@field Name string
---@field Texture string[]
---@field Flags integer
---@field SoundBank integer
---@field SoundID integer
---@field SpellID integer
---@field MaxDarkenDepth number
---@field FogDarkenIntensity number
---@field AmbDarkenIntensity number
---@field DirDarkenIntensity number
---@field LightID integer
---@field ParticleScale number
---@field ParticleMovement integer
---@field ParticleTexSlots integer
---@field MaterialID integer
---@field MinimapStaticCol integer
---@field FrameCountTexture integer[]
---@field Color integer[]
---@field Float number[]
---@field Int integer[]
---@field Coefficient number[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.LiquidType self
function row:SetID(value) end

---Gets the value of field 'Name'.
---@return string value
function row:GetName() end

---Sets the value of field 'Name'.
---@param value string
---@return dbc.row.v1215.LiquidType self
function row:SetName(value) end

---Gets the value of field 'Texture'.
---@return string[] value
function row:GetTexture() end

---Sets the value of field 'Texture'.
---@param value string[]
---@return dbc.row.v1215.LiquidType self
function row:SetTexture(value) end

---Gets element at 1-based index in 'Texture'.
---@param index integer
---@return string value
function row:GetTextureItem(index) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.LiquidType self
function row:SetFlags(value) end

---Gets the value of field 'SoundBank'.
---@return integer value
function row:GetSoundBank() end

---Sets the value of field 'SoundBank'.
---@param value integer
---@return dbc.row.v1215.LiquidType self
function row:SetSoundBank(value) end

---Gets the value of field 'SoundID'.
---@return integer value
function row:GetSoundID() end

---Sets the value of field 'SoundID'.
---@param value integer
---@return dbc.row.v1215.LiquidType self
function row:SetSoundID(value) end

---Navigates foreign relationship to 'SoundEntries' via 'SoundID'.
---@return dbc.row.v1215.SoundEntries|nil
function row:GetSound() end

---Creates a related 'SoundEntries' row and automatically links 'SoundID'.
---@param data? table
---@return dbc.row.v1215.SoundEntries
function row:CreateRelated(data) end

---Gets the value of field 'SpellID'.
---@return integer value
function row:GetSpellID() end

---Sets the value of field 'SpellID'.
---@param value integer
---@return dbc.row.v1215.LiquidType self
function row:SetSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'SpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetSpell() end

---Creates a related 'Spell' row and automatically links 'SpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'MaxDarkenDepth'.
---@return number value
function row:GetMaxDarkenDepth() end

---Sets the value of field 'MaxDarkenDepth'.
---@param value number
---@return dbc.row.v1215.LiquidType self
function row:SetMaxDarkenDepth(value) end

---Gets the value of field 'FogDarkenIntensity'.
---@return number value
function row:GetFogDarkenIntensity() end

---Sets the value of field 'FogDarkenIntensity'.
---@param value number
---@return dbc.row.v1215.LiquidType self
function row:SetFogDarkenIntensity(value) end

---Gets the value of field 'AmbDarkenIntensity'.
---@return number value
function row:GetAmbDarkenIntensity() end

---Sets the value of field 'AmbDarkenIntensity'.
---@param value number
---@return dbc.row.v1215.LiquidType self
function row:SetAmbDarkenIntensity(value) end

---Gets the value of field 'DirDarkenIntensity'.
---@return number value
function row:GetDirDarkenIntensity() end

---Sets the value of field 'DirDarkenIntensity'.
---@param value number
---@return dbc.row.v1215.LiquidType self
function row:SetDirDarkenIntensity(value) end

---Gets the value of field 'LightID'.
---@return integer value
function row:GetLightID() end

---Sets the value of field 'LightID'.
---@param value integer
---@return dbc.row.v1215.LiquidType self
function row:SetLightID(value) end

---Navigates foreign relationship to 'Light' via 'LightID'.
---@return dbc.row.v1215.Light|nil
function row:GetLight() end

---Creates a related 'Light' row and automatically links 'LightID'.
---@param data? table
---@return dbc.row.v1215.Light
function row:CreateRelated(data) end

---Gets the value of field 'ParticleScale'.
---@return number value
function row:GetParticleScale() end

---Sets the value of field 'ParticleScale'.
---@param value number
---@return dbc.row.v1215.LiquidType self
function row:SetParticleScale(value) end

---Gets the value of field 'ParticleMovement'.
---@return integer value
function row:GetParticleMovement() end

---Sets the value of field 'ParticleMovement'.
---@param value integer
---@return dbc.row.v1215.LiquidType self
function row:SetParticleMovement(value) end

---Gets the value of field 'ParticleTexSlots'.
---@return integer value
function row:GetParticleTexSlots() end

---Sets the value of field 'ParticleTexSlots'.
---@param value integer
---@return dbc.row.v1215.LiquidType self
function row:SetParticleTexSlots(value) end

---Gets the value of field 'MaterialID'.
---@return integer value
function row:GetMaterialID() end

---Sets the value of field 'MaterialID'.
---@param value integer
---@return dbc.row.v1215.LiquidType self
function row:SetMaterialID(value) end

---Navigates foreign relationship to 'LiquidMaterial' via 'MaterialID'.
---@return dbc.row.v1215.LiquidMaterial|nil
function row:GetMaterial() end

---Creates a related 'LiquidMaterial' row and automatically links 'MaterialID'.
---@param data? table
---@return dbc.row.v1215.LiquidMaterial
function row:CreateRelated(data) end

---Gets the value of field 'MinimapStaticCol'.
---@return integer value
function row:GetMinimapStaticCol() end

---Sets the value of field 'MinimapStaticCol'.
---@param value integer
---@return dbc.row.v1215.LiquidType self
function row:SetMinimapStaticCol(value) end

---Gets the value of field 'FrameCountTexture'.
---@return integer[] value
function row:GetFrameCountTexture() end

---Sets the value of field 'FrameCountTexture'.
---@param value integer[]
---@return dbc.row.v1215.LiquidType self
function row:SetFrameCountTexture(value) end

---Gets element at 1-based index in 'FrameCountTexture'.
---@param index integer
---@return integer value
function row:GetFrameCountTextureItem(index) end

---Gets the value of field 'Color'.
---@return integer[] value
function row:GetColor() end

---Sets the value of field 'Color'.
---@param value integer[]
---@return dbc.row.v1215.LiquidType self
function row:SetColor(value) end

---Gets element at 1-based index in 'Color'.
---@param index integer
---@return integer value
function row:GetColorItem(index) end

---Gets the value of field 'Float'.
---@return number[] value
function row:GetFloat() end

---Sets the value of field 'Float'.
---@param value number[]
---@return dbc.row.v1215.LiquidType self
function row:SetFloat(value) end

---Gets element at 1-based index in 'Float'.
---@param index integer
---@return number value
function row:GetFloatItem(index) end

---Gets the value of field 'Int'.
---@return integer[] value
function row:GetInt() end

---Sets the value of field 'Int'.
---@param value integer[]
---@return dbc.row.v1215.LiquidType self
function row:SetInt(value) end

---Gets element at 1-based index in 'Int'.
---@param index integer
---@return integer value
function row:GetIntItem(index) end

---Gets the value of field 'Coefficient'.
---@return number[] value
function row:GetCoefficient() end

---Sets the value of field 'Coefficient'.
---@param value number[]
---@return dbc.row.v1215.LiquidType self
function row:SetCoefficient(value) end

---Gets element at 1-based index in 'Coefficient'.
---@param index integer
---@return number value
function row:GetCoefficientItem(index) end

---Table container for LiquidType (Build 12.1.5.69594).
---@class dbc.Table.v1215.LiquidType : DbcTable
---@field [integer] dbc.row.v1215.LiquidType
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.LiquidType
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.LiquidType|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.LiquidType
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.LiquidType>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.LiquidType[]
function tbl:GetByRelation(foreign_id) end

return {}
