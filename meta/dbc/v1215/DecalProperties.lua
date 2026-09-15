---@meta
-- Generated LuaLS annotations for DecalProperties (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of DecalProperties in build 12.1.5.69594.
---@class dbc.row.v1215.DecalProperties : RowProxy
---@field ID integer
---@field FileDataID integer
---@field TopTextureBlendSetID integer
---@field BotTextureBlendSetID integer
---@field ModX number
---@field InnerRadius number
---@field OuterRadius number
---@field Rim number
---@field Gain number
---@field Field_10_0_0_45141_008 number
---@field Flags integer
---@field Scale number
---@field FadeIn number
---@field FadeOut number
---@field Priority integer
---@field BlendMode integer
---@field GameFlags integer
---@field CasterDecalPropertiesID integer
---@field ArbitraryBoxHeight number
---@field Field_9_0_1_33978_018 integer
---@field Field_9_0_1_33978_019 integer
---@field Field_10_0_0_45232_020 integer
---@field Field_10_0_0_45232_021 number
---@field Field_11_2_0_61476_022 number
---@field Field_11_2_0_61476_023 number
---@field Field_11_2_0_61476_024 integer
---@field Field_9_0_1_33978_020 number[]
---@field Field_9_0_1_33978_021 number[]
---@field Field_10_0_0_45232_024 number[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.DecalProperties self
function row:SetID(value) end

---Gets the value of field 'FileDataID'.
---@return integer value
function row:GetFileDataID() end

---Sets the value of field 'FileDataID'.
---@param value integer
---@return dbc.row.v1215.DecalProperties self
function row:SetFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'FileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetFileData() end

---Creates a related 'FileData' row and automatically links 'FileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'TopTextureBlendSetID'.
---@return integer value
function row:GetTopTextureBlendSetID() end

---Sets the value of field 'TopTextureBlendSetID'.
---@param value integer
---@return dbc.row.v1215.DecalProperties self
function row:SetTopTextureBlendSetID(value) end

---Navigates foreign relationship to 'TextureBlendSet' via 'TopTextureBlendSetID'.
---@return dbc.row.v1215.TextureBlendSet|nil
function row:GetTopTextureBlendSet() end

---Creates a related 'TextureBlendSet' row and automatically links 'TopTextureBlendSetID'.
---@param data? table
---@return dbc.row.v1215.TextureBlendSet
function row:CreateRelated(data) end

---Gets the value of field 'BotTextureBlendSetID'.
---@return integer value
function row:GetBotTextureBlendSetID() end

---Sets the value of field 'BotTextureBlendSetID'.
---@param value integer
---@return dbc.row.v1215.DecalProperties self
function row:SetBotTextureBlendSetID(value) end

---Navigates foreign relationship to 'TextureBlendSet' via 'BotTextureBlendSetID'.
---@return dbc.row.v1215.TextureBlendSet|nil
function row:GetBotTextureBlendSet() end

---Creates a related 'TextureBlendSet' row and automatically links 'BotTextureBlendSetID'.
---@param data? table
---@return dbc.row.v1215.TextureBlendSet
function row:CreateRelated(data) end

---Gets the value of field 'ModX'.
---@return number value
function row:GetModX() end

---Sets the value of field 'ModX'.
---@param value number
---@return dbc.row.v1215.DecalProperties self
function row:SetModX(value) end

---Gets the value of field 'InnerRadius'.
---@return number value
function row:GetInnerRadius() end

---Sets the value of field 'InnerRadius'.
---@param value number
---@return dbc.row.v1215.DecalProperties self
function row:SetInnerRadius(value) end

---Gets the value of field 'OuterRadius'.
---@return number value
function row:GetOuterRadius() end

---Sets the value of field 'OuterRadius'.
---@param value number
---@return dbc.row.v1215.DecalProperties self
function row:SetOuterRadius(value) end

---Gets the value of field 'Rim'.
---@return number value
function row:GetRim() end

---Sets the value of field 'Rim'.
---@param value number
---@return dbc.row.v1215.DecalProperties self
function row:SetRim(value) end

---Gets the value of field 'Gain'.
---@return number value
function row:GetGain() end

---Sets the value of field 'Gain'.
---@param value number
---@return dbc.row.v1215.DecalProperties self
function row:SetGain(value) end

---Gets the value of field 'Field_10_0_0_45141_008'.
---@return number value
function row:GetField_10_0_0_45141_008() end

---Sets the value of field 'Field_10_0_0_45141_008'.
---@param value number
---@return dbc.row.v1215.DecalProperties self
function row:SetField_10_0_0_45141_008(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.DecalProperties self
function row:SetFlags(value) end

---Gets the value of field 'Scale'.
---@return number value
function row:GetScale() end

---Sets the value of field 'Scale'.
---@param value number
---@return dbc.row.v1215.DecalProperties self
function row:SetScale(value) end

---Gets the value of field 'FadeIn'.
---@return number value
function row:GetFadeIn() end

---Sets the value of field 'FadeIn'.
---@param value number
---@return dbc.row.v1215.DecalProperties self
function row:SetFadeIn(value) end

---Gets the value of field 'FadeOut'.
---@return number value
function row:GetFadeOut() end

---Sets the value of field 'FadeOut'.
---@param value number
---@return dbc.row.v1215.DecalProperties self
function row:SetFadeOut(value) end

---Gets the value of field 'Priority'.
---@return integer value
function row:GetPriority() end

---Sets the value of field 'Priority'.
---@param value integer
---@return dbc.row.v1215.DecalProperties self
function row:SetPriority(value) end

---Gets the value of field 'BlendMode'.
---@return integer value
function row:GetBlendMode() end

---Sets the value of field 'BlendMode'.
---@param value integer
---@return dbc.row.v1215.DecalProperties self
function row:SetBlendMode(value) end

---Gets the value of field 'GameFlags'.
---@return integer value
function row:GetGameFlags() end

---Sets the value of field 'GameFlags'.
---@param value integer
---@return dbc.row.v1215.DecalProperties self
function row:SetGameFlags(value) end

---Gets the value of field 'CasterDecalPropertiesID'.
---@return integer value
function row:GetCasterDecalPropertiesID() end

---Sets the value of field 'CasterDecalPropertiesID'.
---@param value integer
---@return dbc.row.v1215.DecalProperties self
function row:SetCasterDecalPropertiesID(value) end

---Navigates foreign relationship to 'DecalProperties' via 'CasterDecalPropertiesID'.
---@return dbc.row.v1215.DecalProperties|nil
function row:GetCasterDecalProperties() end

---Creates a related 'DecalProperties' row and automatically links 'CasterDecalPropertiesID'.
---@param data? table
---@return dbc.row.v1215.DecalProperties
function row:CreateRelated(data) end

---Gets the value of field 'ArbitraryBoxHeight'.
---@return number value
function row:GetArbitraryBoxHeight() end

---Sets the value of field 'ArbitraryBoxHeight'.
---@param value number
---@return dbc.row.v1215.DecalProperties self
function row:SetArbitraryBoxHeight(value) end

---Gets the value of field 'Field_9_0_1_33978_018'.
---@return integer value
function row:GetField_9_0_1_33978_018() end

---Sets the value of field 'Field_9_0_1_33978_018'.
---@param value integer
---@return dbc.row.v1215.DecalProperties self
function row:SetField_9_0_1_33978_018(value) end

---Navigates foreign relationship to 'Curve' via 'Field_9_0_1_33978_018'.
---@return dbc.row.v1215.Curve|nil
function row:GetField_9_0_1_33978_018() end

---Creates a related 'Curve' row and automatically links 'Field_9_0_1_33978_018'.
---@param data? table
---@return dbc.row.v1215.Curve
function row:CreateRelated(data) end

---Gets the value of field 'Field_9_0_1_33978_019'.
---@return integer value
function row:GetField_9_0_1_33978_019() end

---Sets the value of field 'Field_9_0_1_33978_019'.
---@param value integer
---@return dbc.row.v1215.DecalProperties self
function row:SetField_9_0_1_33978_019(value) end

---Navigates foreign relationship to 'Curve' via 'Field_9_0_1_33978_019'.
---@return dbc.row.v1215.Curve|nil
function row:GetField_9_0_1_33978_019() end

---Creates a related 'Curve' row and automatically links 'Field_9_0_1_33978_019'.
---@param data? table
---@return dbc.row.v1215.Curve
function row:CreateRelated(data) end

---Gets the value of field 'Field_10_0_0_45232_020'.
---@return integer value
function row:GetField_10_0_0_45232_020() end

---Sets the value of field 'Field_10_0_0_45232_020'.
---@param value integer
---@return dbc.row.v1215.DecalProperties self
function row:SetField_10_0_0_45232_020(value) end

---Navigates foreign relationship to 'Curve' via 'Field_10_0_0_45232_020'.
---@return dbc.row.v1215.Curve|nil
function row:GetField_10_0_0_45232_020() end

---Creates a related 'Curve' row and automatically links 'Field_10_0_0_45232_020'.
---@param data? table
---@return dbc.row.v1215.Curve
function row:CreateRelated(data) end

---Gets the value of field 'Field_10_0_0_45232_021'.
---@return number value
function row:GetField_10_0_0_45232_021() end

---Sets the value of field 'Field_10_0_0_45232_021'.
---@param value number
---@return dbc.row.v1215.DecalProperties self
function row:SetField_10_0_0_45232_021(value) end

---Gets the value of field 'Field_11_2_0_61476_022'.
---@return number value
function row:GetField_11_2_0_61476_022() end

---Sets the value of field 'Field_11_2_0_61476_022'.
---@param value number
---@return dbc.row.v1215.DecalProperties self
function row:SetField_11_2_0_61476_022(value) end

---Gets the value of field 'Field_11_2_0_61476_023'.
---@return number value
function row:GetField_11_2_0_61476_023() end

---Sets the value of field 'Field_11_2_0_61476_023'.
---@param value number
---@return dbc.row.v1215.DecalProperties self
function row:SetField_11_2_0_61476_023(value) end

---Gets the value of field 'Field_11_2_0_61476_024'.
---@return integer value
function row:GetField_11_2_0_61476_024() end

---Sets the value of field 'Field_11_2_0_61476_024'.
---@param value integer
---@return dbc.row.v1215.DecalProperties self
function row:SetField_11_2_0_61476_024(value) end

---Navigates foreign relationship to 'FileData' via 'Field_11_2_0_61476_024'.
---@return dbc.row.v1215.FileData|nil
function row:GetField_11_2_0_61476_024() end

---Creates a related 'FileData' row and automatically links 'Field_11_2_0_61476_024'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'Field_9_0_1_33978_020'.
---@return number[] value
function row:GetField_9_0_1_33978_020() end

---Sets the value of field 'Field_9_0_1_33978_020'.
---@param value number[]
---@return dbc.row.v1215.DecalProperties self
function row:SetField_9_0_1_33978_020(value) end

---Gets element at 1-based index in 'Field_9_0_1_33978_020'.
---@param index integer
---@return number value
function row:GetField_9_0_1_33978_020Item(index) end

---Gets the value of field 'Field_9_0_1_33978_021'.
---@return number[] value
function row:GetField_9_0_1_33978_021() end

---Sets the value of field 'Field_9_0_1_33978_021'.
---@param value number[]
---@return dbc.row.v1215.DecalProperties self
function row:SetField_9_0_1_33978_021(value) end

---Gets element at 1-based index in 'Field_9_0_1_33978_021'.
---@param index integer
---@return number value
function row:GetField_9_0_1_33978_021Item(index) end

---Gets the value of field 'Field_10_0_0_45232_024'.
---@return number[] value
function row:GetField_10_0_0_45232_024() end

---Sets the value of field 'Field_10_0_0_45232_024'.
---@param value number[]
---@return dbc.row.v1215.DecalProperties self
function row:SetField_10_0_0_45232_024(value) end

---Gets element at 1-based index in 'Field_10_0_0_45232_024'.
---@param index integer
---@return number value
function row:GetField_10_0_0_45232_024Item(index) end

---Table container for DecalProperties (Build 12.1.5.69594).
---@class dbc.Table.v1215.DecalProperties : DbcTable
---@field [integer] dbc.row.v1215.DecalProperties
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.DecalProperties
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.DecalProperties|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.DecalProperties
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.DecalProperties>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.DecalProperties[]
function tbl:GetByRelation(foreign_id) end

return {}
