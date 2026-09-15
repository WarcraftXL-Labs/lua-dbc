---@meta
-- Generated LuaLS annotations for TextureBlendSet (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of TextureBlendSet in build 12.1.5.69594.
---@class dbc.row.v1215.TextureBlendSet : RowProxy
---@field ID integer
---@field TextureFileDataID integer[]
---@field SwizzleRed integer
---@field SwizzleGreen integer
---@field SwizzleBlue integer
---@field SwizzleAlpha integer all swizzle < 4
---@field Flags integer &1: ???, &2: ???, &4: ???
---@field TextureScrollRateU number[]
---@field TextureScrollRateV number[]
---@field TextureScaleU number[]
---@field TextureScaleV number[]
---@field ModX number[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.TextureBlendSet self
function row:SetID(value) end

---Gets the value of field 'TextureFileDataID'.
---@return integer[] value
function row:GetTextureFileDataID() end

---Sets the value of field 'TextureFileDataID'.
---@param value integer[]
---@return dbc.row.v1215.TextureBlendSet self
function row:SetTextureFileDataID(value) end

---Gets element at 1-based index in 'TextureFileDataID'.
---@param index integer
---@return integer value
function row:GetTextureFileDataIDItem(index) end

---Navigates foreign relationship to 'FileData' via 'TextureFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetTextureFileData() end

---Creates a related 'FileData' row and automatically links 'TextureFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'SwizzleRed'.
---@return integer value
function row:GetSwizzleRed() end

---Sets the value of field 'SwizzleRed'.
---@param value integer
---@return dbc.row.v1215.TextureBlendSet self
function row:SetSwizzleRed(value) end

---Gets the value of field 'SwizzleGreen'.
---@return integer value
function row:GetSwizzleGreen() end

---Sets the value of field 'SwizzleGreen'.
---@param value integer
---@return dbc.row.v1215.TextureBlendSet self
function row:SetSwizzleGreen(value) end

---Gets the value of field 'SwizzleBlue'.
---@return integer value
function row:GetSwizzleBlue() end

---Sets the value of field 'SwizzleBlue'.
---@param value integer
---@return dbc.row.v1215.TextureBlendSet self
function row:SetSwizzleBlue(value) end

---Gets the value of field 'SwizzleAlpha'.
---@return integer value
function row:GetSwizzleAlpha() end

---Sets the value of field 'SwizzleAlpha'.
---@param value integer
---@return dbc.row.v1215.TextureBlendSet self
function row:SetSwizzleAlpha(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.TextureBlendSet self
function row:SetFlags(value) end

---Gets the value of field 'TextureScrollRateU'.
---@return number[] value
function row:GetTextureScrollRateU() end

---Sets the value of field 'TextureScrollRateU'.
---@param value number[]
---@return dbc.row.v1215.TextureBlendSet self
function row:SetTextureScrollRateU(value) end

---Gets element at 1-based index in 'TextureScrollRateU'.
---@param index integer
---@return number value
function row:GetTextureScrollRateUItem(index) end

---Gets the value of field 'TextureScrollRateV'.
---@return number[] value
function row:GetTextureScrollRateV() end

---Sets the value of field 'TextureScrollRateV'.
---@param value number[]
---@return dbc.row.v1215.TextureBlendSet self
function row:SetTextureScrollRateV(value) end

---Gets element at 1-based index in 'TextureScrollRateV'.
---@param index integer
---@return number value
function row:GetTextureScrollRateVItem(index) end

---Gets the value of field 'TextureScaleU'.
---@return number[] value
function row:GetTextureScaleU() end

---Sets the value of field 'TextureScaleU'.
---@param value number[]
---@return dbc.row.v1215.TextureBlendSet self
function row:SetTextureScaleU(value) end

---Gets element at 1-based index in 'TextureScaleU'.
---@param index integer
---@return number value
function row:GetTextureScaleUItem(index) end

---Gets the value of field 'TextureScaleV'.
---@return number[] value
function row:GetTextureScaleV() end

---Sets the value of field 'TextureScaleV'.
---@param value number[]
---@return dbc.row.v1215.TextureBlendSet self
function row:SetTextureScaleV(value) end

---Gets element at 1-based index in 'TextureScaleV'.
---@param index integer
---@return number value
function row:GetTextureScaleVItem(index) end

---Gets the value of field 'ModX'.
---@return number[] value
function row:GetModX() end

---Sets the value of field 'ModX'.
---@param value number[]
---@return dbc.row.v1215.TextureBlendSet self
function row:SetModX(value) end

---Gets element at 1-based index in 'ModX'.
---@param index integer
---@return number value
function row:GetModXItem(index) end

---Table container for TextureBlendSet (Build 12.1.5.69594).
---@class dbc.Table.v1215.TextureBlendSet : DbcTable
---@field [integer] dbc.row.v1215.TextureBlendSet
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.TextureBlendSet
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.TextureBlendSet|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.TextureBlendSet
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.TextureBlendSet>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.TextureBlendSet[]
function tbl:GetByRelation(foreign_id) end

return {}
